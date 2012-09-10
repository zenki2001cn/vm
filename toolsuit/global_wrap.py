#!/usr/bin/env python
#!encoding=utf8

'''
File: global_wrap.py
Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
Description: 使用gtags索引源码时，调用global更新修改后的源码，重新生成索引
Version: 0.2
ChangLog:
Date: 2012-08-17 15:32:26
    1. 添加gtags生成索引功能
Date: 2012-08-23 17:26:48
    1. 修整gtags运行异常的问题
'''

import getopt
import sys
import os

#默认global的程序路径，该变量可在vimrc中定义，并由vim脚本传入
DEFAULT_GLOBAL_APP = '/home/zenki/.vim/toolsuit/global'
DEFAULT_GTAGS_APP = '/home/zenki/.vim/toolsuit/gtags'


def exit2(error):
    """docstring for exit2"""
    print error
    usage()
    sys.exit(2)


def getArg():
    """docstring for getArg"""
    GLOBAL_PATH = DEFAULT_GLOBAL_APP
    DIR = None
    CREATE = False

    try:
        opts, args = getopt.getopt(sys.argv[1:], "e:d:C")
    except Exception, e:
        print str(e)
        exit2('getopt error')

    for o, a in opts:
        if o == "-e":
            GLOBAL_PATH = a
        elif o == "-d":
            DIR = a
        elif o == "-C":
            CREATE = True

    if (GLOBAL_PATH is None or DIR is None):
        exit2('GLOBAL_APP or DIR is None')

    return GLOBAL_PATH, DIR, CREATE


def usage():
    """docstring for usage"""
    print "Usage: global_wrap.py [OPTION]"
    print "    -e global path"
    print "    -d src dir path"
    print "    -C create gtags"
    print ""
    print "Example:"
    print "    python global_wrap.py -e /usr/bin/global -d /home/zenki/src"
    print "    python global_wrap.py -C -d /home/zenki/src"


def do_gtags(gtags_path, dir):
    """docstring for do_gtags"""
    old_dir = os.getcwd()
    os.chdir(dir)

    cmd = gtags_path + " ."
    # print cmd, " old_dir is ", old_dir
    os.system(cmd)

    os.chdir(old_dir)


def do_global_update(global_path, dir):
    """docstring for _flist"""
    os.chdir(dir)
    # print os.getcwd()
    cmd = global_path + " -t -u " + " 2>/dev/null"
    # print cmd
    os.system(cmd)


def main():
    """docstring for main"""
    (GLOBAL_PATH, DIR, CREATE) = getArg()

    if CREATE:
        do_gtags(DEFAULT_GTAGS_APP, DIR)
    else:
        do_global_update(GLOBAL_PATH, DIR)

if __name__ == '__main__':
    main()
