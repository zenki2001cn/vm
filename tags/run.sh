#!/bin/bash
# ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q -f gl /usr/include/GL/   # for OpenGL
# ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q -f sdl /usr/include/SDL/ # for SDL
# ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q -f qt4 /usr/include/qt4/ # for QT4
ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q -f oh6f /host/linux_part/OH6/bw-fw/frameworks/base/ # for OH6 framework

