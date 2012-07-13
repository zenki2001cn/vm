LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_SRC_FILES := \
    $(call all-subdir-java-files) \
    $(call all-java-files-under, src) \

LOCAL_MODULE := ???
 
include $(BUILD_JAVA_LIBRARY)
