### full_goyawifi.mk for goyawifi

## Configuration Files
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/samsung/goyawifi/device_goyawifi.mk)


## Product Configuration
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := goyawifi
PRODUCT_NAME := full_goyawifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T110
