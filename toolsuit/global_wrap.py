#!/usr/bin/env python
#!encoding=utf8

'''
File: global_wrap.py
Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
Description: 使用gtags索引源码时，调用global更新修改后的源码，重新生成索引 
Version: 0.1
'''

import getopt
import sys
import os

#默认global的程序路径，该变量可在vimrc中定义，并由vim脚本传入
DEFAULT_GLOBAL_APP = '/home/zenki/.vim/toolsuit/global'

def exit2(error):
    """docstring for exit2"""
    print error
    usage()
    sys.exit(2)

def getArg():
    """docstring for getArg"""
    GLOBAL_PATH = DEFAULT_GLOBAL_APP
    DIR = None

    try:
        opts, args = getopt.getopt(sys.argv[1:], "e:d:")
    except Exception, e:
        print str(e)
        exit2('getopt error')

    for o, a in opts:
        if o == "-e":
            GLOBAL_PATH = a  
        elif o == "-d":
            DIR = a

    if (GLOBAL_PATH is None or DIR is None):
        exit2('GLOBAL_APP or DIR is None')

    return GLOBAL_PATH, DIR

def usage():
    """docstring for usage"""
    print "Usage: global_wrap.py [OPTION]"
    print "    -e global path"
    print "    -d src dir path"
    print ""
    print "Example:"
    print "    python global_wrap.py -e /usr/bin/global -d /home/zenki/src"
    
def do_global(global_path, dir):
    """docstring for _flist"""
    os.chdir(dir)
    # print os.getcwd()
    cmd = global_path + " -t -u " + " 2>/dev/null"
    # print cmd
    os.system(cmd)

def main():
    """docstring for main"""
    (GLOBAL_PATH, DIR) = getArg()

    do_global(GLOBAL_PATH, DIR)

if __name__ == '__main__':
    main()        
