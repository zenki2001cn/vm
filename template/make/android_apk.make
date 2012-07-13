LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_SRC_FILES := \
    $(call all-subdir-java-files) \
    $(call all-java-files-under, src) \
 
LOCAL_SRC_FILES := \
    ???.aidl \
    ???.java \
 
LOCAL_PACKAGE_NAME := ???
 
LOCAL_CERTIFICATE := ???
 
LOCAL_JAVA_LIBRARIES := ???
 
include $(BUILD_PACKAGE)
