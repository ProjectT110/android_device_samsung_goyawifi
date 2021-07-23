# Release name
PRODUCT_RELEASE_NAME := goyawifi

# For boot animation from common_full_tablet_wifionly.mk
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/goyawifi/device_goyawifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goyawifi
PRODUCT_NAME := lineage_goyawifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T110
PRODUCT_MANUFACTURER := samsung