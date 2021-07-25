LOCAL_PATH := device/samsung/goyawifi

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/goyawifi/goyawifi-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-7in-hdpi-1024-hwui-memory.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600
TARGET_BOOTANIMATION_HALF_RES := true


# Audio
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/audio/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_hw.xml \
    $(LOCAL_PATH)/audio/audio_para \
    $(LOCAL_PATH)/audio/audio_policy.conf \
    $(LOCAL_PATH)/audio/codec_pga.xml \
    $(LOCAL_PATH)/audio/tiny_hw.xml

# TODO
# Camera
PRODUCT_PACKAGES += \
    camera.pxa988

# TODO
# Codecs
PRODUCT_PACKAGES += \
    libcolorformat_switcher \
    libstagefrighthw \
    libstagefright_sprd_aacdec \
    libstagefright_sprd_mp3dec \
    libstagefright_sprd_h264dec \
    libstagefright_sprd_h264enc \
    libstagefright_sprd_mpeg4dec \
    libstagefright_sprd_mpeg4enc \
    libstagefright_sprd_vpxdec

# TODO
# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/sirfgps.conf:system/etc/sirfgps.conf \
	$(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/gps.xml:system/etc/gps.xml \

# TODO
# HWC
PRODUCT_PACKAGES += \
    gralloc.pxa988 \
    hwcomposer.pxa988 \
    sprd_gsp.pxa988 \
    libmemoryheapion \
    libion_sprd

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# TODO
# Lights
PRODUCT_PACKAGES += \
    lights.pxa988

# TODO
# Media config
MEDIA_XML_CONFIGS := \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml
PRODUCT_COPY_FILES += \
    $(foreach f,$(MEDIA_XML_CONFIGS),$(f):system/etc/$(notdir $(f)))
PRODUCT_PACKAGES += \
    media_codecs.xml \
    media_profiles.xml

# TODO
# Modules
PRODUCT_PACKAGES += \
    autotst.ko \
    mali.ko \
    mmc_test.ko \
    sprdwl.ko

# TODO
# PowerHAL
PRODUCT_PACKAGES += \
    power.pxa988

# TODO
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.pxa988 \
    init.board.rc \
    init.pxa988.rc \
    init.pxa988.usb.rc \
    init.storage.rc \
    init.wifi.rc \
    ueventd.pxa988.rc

# WiFi
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf
