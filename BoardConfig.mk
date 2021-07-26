### BoardConfig.mk for goyawifi

## Proprietary Version
$(call inherit-product-if-exists, vendor/samsung/goyawifi/BoardConfigVendor.mk)       # Get configurations from proprietary version if exists.


## Product Configuration
USE_CAMERA_STUB := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mrvl


## SoC Configurations
TARGET_CPU_ABI := armeabi-v7a                                                         # The detailed CPU architecture of target device.
TARGET_CPU_ABI2 := armeabi                                                            # The general CPU architecture of target device.
TARGET_CPU_VARIANT := cortex-a9                                                       # The variant of the CPU on your device.
TARGET_CPU_SMP := true                                                                # 
TARGET_BOOTLOADER_BOARD_NAME := PXA988                                                # Board name of target device. This is usually identical with the name of the SoC on your device.
ARCH_ARM_HAVE_TLS_REGISTER := true                                                    # 
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp                # Flags for Cortex-A9 CPU variant. This may depend on the target device specified.
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp              # Flags for Cortex-A9 CPU variant. This may depend on the target device specified.


## Kernel
TARGET_KERNEL_SOURCE  := kernel/samsung/goyawifi								      # Kernel sources for target device.
TARGET_KERNEL_CONFIG  := goyawifi_recovery_defconfig                                  # Recovery kernel configuration for your device. Optional.
# BOARD_KERNEL_CMDLINE will depend from device to device. To get the values, read /proc/cmdline on your device.
BOARD_KERNEL_CMDLINE  := initrd=0x01100000,16m uart_dma vmalloc=0xF000000 qhd_lcd=1 cma=0 ioncarv=80M@0x09000000 reserve_gpu=64M ddr_mode=1 androidboot.emmc_checksum=3 lcd_id=0x00000000 board_id=0x02 disp_start_addr=0x17000000 sec_log=0x100000@0x8140000 androidboot.selinux=permissive
BOARD_KERNEL_BASE     := 0x10000000                 							      # The base of the targeted device's boot image.
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x01000000                                  # Passed argument(s) when compiling the boot image.
BOARD_KERNEL_PAGESIZE := 2048                                                         # The target device's kernel page size.


## Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/samsung/goyawifi/rootdir/fstab.pxa988

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1594884096
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5509218304
BOARD_FLASH_BLOCK_SIZE := 131072


## VOLD
# BOARD_VOLD_MAX_PARTITIONS := 17
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file" # 


## Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/goyawifi/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true
MRVL_WIRELESS_DAEMON_API := true


## Charging Mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"


## TWRP Configuration
DEVICE_RESOLUTION := 1024x600

RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files

TW_NO_USB_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true


## SELinux
BOARD_SEPOLICY_DIRS += device/samsung/goyawifi/sepolicy
SERVICES_WITHOUT_SELINUX_DOMAIN := true
