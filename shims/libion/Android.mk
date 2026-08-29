LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_shim
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ion_shim.c
LOCAL_SHARED_LIBRARIES := libion
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
