import os
import shutil
from distutils import dir_util
from distutils import file_util


class FileUtil(object):
    @staticmethod
    def fileOrDirCp(src, dst):
        if os.path.isdir(src):
            dst = os.path.join(
                dst, os.path.basename(src)) if os.path.exists(dst) else dst
            dir_util.copy_tree(src, dst)
        else:
            file_util.copy_file(src, dst)

    @staticmethod
    def fileOrDirMv(src, dst):
        if os.path.isdir(src):
            dst = os.path.join(
                dst, os.path.basename(src)) if os.path.exists(dst) else dst
            shutil.move(src, dst)
        else:
            shutil.move(src, dst)

    @staticmethod
    def fileOrDirRm(src):
        if os.path.isdir(src):
            shutil.rmtree(src)
        else:
            os.remove(src)
