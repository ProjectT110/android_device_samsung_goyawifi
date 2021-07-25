LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),goyawifi)
bluetooth_C_INCLUDES := $(BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR)
bluetooth_CFLAGS += -DHAS_BDROID_BUILDCFG
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
