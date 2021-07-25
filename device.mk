### device.mk for goyawifi


## Tree Path
LOCAL_PATH := device/samsung/goyawifi


## Full Product
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


## Non-Open Source Vendor
$(call inherit-product-if-exists, vendor/samsung/goyawifi/goyawifi-vendor.mk)


## RIL Config
PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only


## Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


## Screen Configuration
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := mdpi


## Dalvik Heap Configurations
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-7in-hdpi-1024-hwui-memory.mk)

## Boot Animation
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600
TARGET_BOOTANIMATION_HALF_RES := true


## Audio
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/audio/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_hw.xml \
    $(LOCAL_PATH)/audio/audio_para \
    $(LOCAL_PATH)/audio/audio_policy.conf \
    $(LOCAL_PATH)/audio/codec_pga.xml \
    $(LOCAL_PATH)/audio/tiny_hw.xml


## Camera
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/camera/camera.mrvl.so


## Codecs
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/codecs/libstagefrighthw.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_aacdec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_aacenc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_amrdec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_amrnbenc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_amrwbenc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_flacenc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_g711dec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_h264dec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_h264enc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_mp3dec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_mpeg4dec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_mpeg4enc.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_rawdec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_vorbisdec.so \
    $(LOCAL_PATH)/vendor/codecs/libstagefright_soft_vpxdec.so


## GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/sirfgps.conf:system/etc/sirfgps.conf \
	$(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/gps.xml:system/etc/gps.xml


## HWC
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/hwc/gralloc.mrvl.so \
    $(LOCAL_PATH)/vendor/hwc/hwcomposer.mrvl.so


## Key Layouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl


## Lights
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/lights/lights.mrvl.so


## Media Config
MEDIA_XML_CONFIGS := \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:systemights.pxa988/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:systemights.pxa988/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/mediaconfig/media_codecs.xml \
    $(LOCAL_PATH)/vendor/mediaconfig/media_profiles.xml


# PowerHAL
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/vendor/powerhal/power.mrvl.so


# RAMDISK
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/rootdir/fstab.pxa988 \
    $(LOCAL_PATH)/rootdir/init.board.rc \
    $(LOCAL_PATH)/rootdir/init.pxa988.rc \
    $(LOCAL_PATH)/rootdir/init.pxa988.tel.rc \
    $(LOCAL_PATH)/rootdir/init.pxa988.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.pxa988.rc


# Wi-Fi
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf
