### lineage.mk for goyawifi

## Screen Resolution 
TARGET_SCREEN_WIDTH := 1024
TARGET_SCREEN_HEIGHT := 600


## Configuration Files
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, device/samsung/goyawifi/device_goyawifi.mk)


## Product Configuration
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := goyawifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T110
PRODUCT_NAME := lineage_goyawifi
PRODUCT_RELEASE_NAME := goyawifi
