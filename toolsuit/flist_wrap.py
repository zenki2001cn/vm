#!/usr/bin/env python
#!encoding=utf8

'''
File: flist_wrap.py
Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
Description: 对flist程序的Python包裹，在vim脚本中调用，将C/C++函数定义缓存到指定文件，
             当键入该函数时提示函数原型。单独使用请参考usage方法。
Version: 0.1
'''

import getopt
import sys
import os

#默认flist的程序路径，该变量可在vimrc中定义，并由vim脚本传入
DEFAULT_FLIST_APP = '/home/zenki/.vim/toolsuit/flist'
#产生的hints文件保存在该目录中，文件名由全路径的目录节点+“_”组成
HINTS_DIR = '/home/zenki/.vim/ftplugin/c'
#清除HINTS_DIR中的缓存标志，True则清除，False则不清除
CLEAR_HINTS_FLAG = False
#清除hints目录时，排除在外的缓存文件名
EXCLUDE_HINTS = ['hints_man2.vim', 'hints_man3.vim']

def exit2(error):
    """docstring for exit2"""
    print error
    usage()
    sys.exit(2)

def getArg():
    """docstring for getArg"""
    FLIST = DEFAULT_FLIST_APP
    DIR = None

    try:
        opts, args = getopt.getopt(sys.argv[1:], "e:d:c")
    except Exception, e:
        print str(e)
        exit2('getopt error')

    for o, a in opts:
        if o == "-e":
            FLIST = a  
        elif o == "-d":
            DIR = a
        elif o == "-c":
            global CLEAR_HINTS_FLAG
            CLEAR_HINTS_FLAG = True

    if (FLIST is None or DIR is None) and (not CLEAR_HINTS_FLAG):
        exit2('FLIST or DIR is None')

    return FLIST, DIR

def usage():
    """docstring for usage"""
    print "Usage: flist_wrap.py [OPTION]"
    print "    -e flist path"
    print "    -d src dir path"
    print "    -c clean cache"
    print ""
    print "Example:"
    print "    python flist_wrap.py -e /usr/bin/flist -d /home/zenki/src"
    print "    python flist_wrap.py -c"
    
def get_hints_name(src_path):
    """docstring for get_hints_path"""
    if not os.path.exists(src_path):
        exit2('get hints path error')
    
    return src_path.replace('/', '_').replace('.', '') + '.vim'

def _flist(fd, flist_path, dir):
    """docstring for _flist"""
    os.chdir(dir)
    cmd = flist_path + " -h " + os.path.join(dir, '*.c') + " " + os.path.join(dir, '*.cpp') + " 2>/dev/null"
    #print cmd
    os.system(cmd)

    hint_in_path = os.path.join(dir, 'hints')
    try:
        hint_in_fd = open(hint_in_path)
        content = hint_in_fd.read()
        fd.write(content)
        fd.write('\n')
    except Exception, e:
        print "_flist write hint_in_fd error"
        raise e
    finally:
        hint_in_fd.close()
        if os.path.exists(hint_in_path):
            cmd_rm_hint = "rm -f " + hint_in_path
            #print cmd_rm_hint
            os.system(cmd_rm_hint)
        
def flist(flist_path, src_path):
    """docstring for flist"""
    hints = get_hints_name(src_path)
    try:
        hints_path = os.path.join(HINTS_DIR, hints)
        hints_fd = open(hints_path, 'w')
        for root, dirs, files in os.walk(src_path):
            for file in files:
                if file.endswith('.c') or file.endswith('.cpp'):
                    _flist(hints_fd, flist_path, root)
                    break;
    except Exception, e:
        print "flist error: flist_path=", flist_path, "src_path=", src_path
        raise e
    finally:
        hints_fd.flush()
        hints_fd.close()
        print "flist done!"

def clear_cache():
    """docstring for clear_cache"""
    global EXCLUDE_HINTS
    
    for root, dirs, files in os.walk(HINTS_DIR):
        for file in files:
            if file in EXCLUDE_HINTS:
                continue
            else:
                cmd_clear = "rm -f " + os.path.join(root, file)
                #print cmd_clear
                os.system(cmd_clear)
    print "clear done!"
                
def main():
    """docstring for main"""
    (FLIST, DIR) = getArg()

    if CLEAR_HINTS_FLAG:
        clear_cache() 
    else:
        flist(FLIST, DIR)

if __name__ == '__main__':
    main()        
