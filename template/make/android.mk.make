LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

// include dir
LOCAL_C_INCLUDES += \
#    $(JNI_H_INCLUDE)

// source dir
LOCAL_SRC_FILES := \

// library include
LOCAL_LDLIBS := \

// module name
LOCAL_MODULE := libtest

include $(BUILD_EXECUTABLE)

#include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)

