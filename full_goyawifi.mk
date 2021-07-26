### full_goyawifi.mk for goyawifi

## Configuration Files
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)     # Full base configuration file for mostly needed stuff.
$(call inherit-product, device/samsung/goyawifi/device_goyawifi.mk) # Device configuration file included with the device.


## Product Metadata
PRODUCT_BRAND := samsung                                            # Target device's brand. This is usually the manufacturer of the device.
PRODUCT_DEVICE := goyawifi                                          # Target device's device name. This is the codename of the device.
PRODUCT_NAME := full_goyawifi                                       # Target device's building name. This is usually the same as the file name in full_{codename} makefiles.
PRODUCT_MANUFACTURER := samsung                                     # Target device's manufacturer. This is usually the board manufacturer of the device, but is usually identical to the brand.
PRODUCT_MODEL := SM-T110                                            # Target device's model. This is the commercial model name given to users, instead of the codename.
