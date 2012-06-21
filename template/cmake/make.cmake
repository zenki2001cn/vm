#工程名称
PROJECT(test)

#最低版本号
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

#设置CFLAGS选项
SET(CMAKE_C_FLAGS "$ENV{CFLAGS} -O3 -Wall -g -pthread")
#SET_SOURCE_FILES_PROPERTIES(${DIR_SRCS} PROPERTIES COMPILE_FLAGS -DDEBUG)

#源代码文件目录,此目录下所有源文件 (源文件目录 变量)
AUX_SOURCE_DIRECTORY(src DIR_SRCS)
AUX_SOURCE_DIRECTORY(src/util UTIL_SRCS)

#头文件路径,库路径 (变量 目录1 目录2 ...)
SET(INCLUDES /usr/local/include /usr/include/SDL ./include)
INCLUDE_DIRECTORIES(${INCLUDES})
SET(LIB_INCS /usr/lib)
LINK_DIRECTORIES(${LIB_INCS})

#编译和添加子目录的库 (生成库名称 STATIC|SHARED|.. 目录)
ADD_LIBRARY(util SHARED ${UTIL_SRCS})
LINK_DIRECTORIES(${LIB})
LINK_LIBRARIES(test ${LIB})

#可执行程序的目录 (可执行程序名称 目录)
ADD_EXECUTABLE(test ${DIR_SRCS})

#链接外部库
SET(LIBRARYS avformat avcodec swscale z bz2 avutil m SDL util)
TARGET_LINK_LIBRARIES(test ${LIBRARYS})

