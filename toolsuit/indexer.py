#!/usr/bin/env python
#!encoding=utf8

'''
File: indexer.py
Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
Date: 2012-09-03 14:28:58
Description: 
Version: 0.1
'''

import getopt
import sys
import os
import re

INDEX_FILE = None
PROJECT_NAME = None
PROJECT_DIRS = None
LIST_MODE = False
CLEAN_MODE = False
QUERY_MODE = False

def exit2(error):
    """docstring for exit2"""
    print error
    print '\n'
    usage()
    sys.exit(2)

def getArg():
    """docstring for getArg"""

    try:
        opts, args = getopt.getopt(sys.argv[1:], "n:d:f:lCQ")
    except Exception, e:
        print str(e)
        exit2('getopt error')

    global LIST_MODE
    global INDEX_FILE
    global PROJECT_NAME
    global PROJECT_DIRS
    global CLEAN_MODE
    global QUERY_MODE

    for o, a in opts:
        if o == "-l":
            LIST_MODE = True
        elif o == "-f":
            INDEX_FILE = a
        elif o == "-n":
            PROJECT_NAME = a
        elif o == "-d":
            PROJECT_DIRS = a
        elif o == "-C":
            CLEAN_MODE = True
        elif o == "-Q":
            QUERY_MODE = True

    if LIST_MODE:
        if INDEX_FILE is None:
            exit2('LIST MODE: INDEX_FILE is None')
    elif QUERY_MODE:
        if INDEX_FILE is None or PROJECT_NAME is None:
            exit2('QUERY MODE: INDEX_FILE is None')
    elif CLEAN_MODE:
        if INDEX_FILE is None or PROJECT_NAME is None:
            exit2('CLEAN MODE: INDEX_FILE is None')
    elif PROJECT_NAME is None or PROJECT_DIRS is None or INDEX_FILE is None:
            exit2('INDEX_FILE or PROJECT_NAME or PROJECT_DIRS is None')

    return INDEX_FILE, PROJECT_NAME, PROJECT_DIRS

def _read_indexer_file():
    """docstring for list_projects"""
    global INDEX_FILE
    project_info = {}
    project_name = ''

    try:
        f = open(INDEX_FILE, "r")
        for line in f.readlines():
            m = re.match(r"\[(.*)\]", line) 

            if m != None:
                project_name = m.groups()[0]
                project_info[project_name] = []
            else:
                if project_name != '' and line != '\n':
                    project_info[project_name].append(line.strip('\n'))
    except Exception, e:
        print str(e)
        f = open(INDEX_FILE, "w")
    finally:
        f.close()

    return project_info

def _query_project_dirs():
    """docstring for _query_project"""
    global INDEX_FILE
    global PROJECT_NAME

    project_info = {}
    project_name = ''
    project_dirs = ''

    try:
        f = open(INDEX_FILE, "r")
        for line in f.readlines():
            m = re.match(r"\[(.*)\]", line) 

            if m != None:
                project_name = m.groups()[0]
                project_info[project_name] = []
            else:
                if project_name != '' and line != '\n':
                    project_info[project_name].append(line.strip('\n'))

        project_dirs = project_info[PROJECT_NAME]
    except Exception, e:
        print str(e)
    finally:
        f.close()

    return project_dirs

def _update_indexer_file():
    """docstring for update_indexer_file"""
    global INDEX_FILE
    global PROJECT_NAME
    global PROJECT_DIRS

    project_info = {}
    project_name = ''

    try:
        f = open(INDEX_FILE, "r+")
        for line in f.readlines():
            m = re.match(r'\[(.*)\]', line) 

            if m != None:
                project_name = m.groups()[0]
                project_info[project_name] = []
            else:
                if project_name != '' and line != '\n':
                    project_info[project_name].append(line.strip('\n'))

        project_info[PROJECT_NAME] = PROJECT_DIRS.split('$')

        f.seek(0, os.SEEK_SET)
        f.truncate(0)
        for name in project_info.keys():
            f.write('[' + name + ']\n')
            for dir in project_info[name]:
                f.write(dir + '\n')

        f.flush()
    except Exception, e:
        print str(e)
    finally:
        f.close()

    return project_info

def _clean_project():
    """docstring for clean"""
    global INDEX_FILE
    global PROJECT_NAME
    global CLEAN_MODE

    project_info = {}
    project_name = ''

    try:
        f = open(INDEX_FILE, "r+")
        for line in f.readlines():
            m = re.match(r'\[(.*)\]', line) 

            if m != None:
                project_name = m.groups()[0]
                project_info[project_name] = []
            else:
                if project_name != '' and line != '\n':
                    project_info[project_name].append(line.strip('\n'))

        if PROJECT_NAME == '*':
            project_info.clear() 
        elif project_info.has_key(PROJECT_NAME):
            del project_info[PROJECT_NAME] 

        f.seek(0, os.SEEK_SET)
        f.truncate(0)
        for name in project_info.keys():
            f.write('[' + name + ']\n')
            for dir in project_info[name]:
                f.write(dir + '\n')

        f.flush()

        # delete tags file
        tags_dir_path = INDEX_FILE + '_tags'
        if PROJECT_NAME == '*':
            for root, dirs, files in os.walk(tags_dir_path):
                for name in files:
                    file_path = os.path.join(root, name)
                    if os.path.exists(file_path):
                        os.remove(file_path)
        else: 
            tags_file_path = tags_dir_path + os.path.sep + PROJECT_NAME
            if os.path.exists(tags_file_path):
                os.remove(tags_file_path)
    except Exception, e:
        print str(e)
    finally:
        f.close()

    return project_info
    
def clean_project():
    """docstring for clean_project"""
    project_info = _clean_project()

    print ';'.join(project_info.keys())

def get_project_list():
    """docstring for get_project_list"""
    project_info = _read_indexer_file()

    print ';'.join(project_info.keys())

def update_indexer_file():
    project_info = _update_indexer_file()

    print ';'.join(project_info.keys())

def query_project_dirs():
    project_dirs = _query_project_dirs()

    print ';'.join(project_dirs)

def usage():
    """docstring for usage"""
    print "Usage: indexer.py [OPTION]"
    print "    -l list projects list use indexer"
    print "    -n set project name"
    print "    -d set project dirs"
    print "    -C clean project, if project name is '*', clean all"
    print ""
    print "Example:"
    print "    python indexer.py -l -f /home/zenki/.indexer_files"
    print "    python indexer.py -f /home/zenki/.indexer_files -n ICS -d /home/zenki/ics$/home/zenki/android$"
    print "    python indexer.py -f /home/zenki/.indexer_files -C -n ICS"


def main():
    """docstring for main"""
    getArg()

    if LIST_MODE:
        get_project_list()
    elif CLEAN_MODE:
        clean_project()
    elif QUERY_MODE:
        query_project_dirs()
    else:
        update_indexer_file()        

if __name__ == '__main__':
    main()
