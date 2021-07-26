### lineage.mk for goyawifi

## Screen Resolution 
TARGET_SCREEN_WIDTH := 1024                                              # Target device's screen width.
TARGET_SCREEN_HEIGHT := 600                                              # Target device's screen height.


## Configuration Files
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk) # LineageOS Wi-Fi only tablet configuration.
$(call inherit-product, device/samsung/goyawifi/device_goyawifi.mk)      # Target device's makefile.


## Prodct Metadata
PRODUCT_BRAND := samsung                                                 # Target device's brand. This is usually the manufacturer of the device.
PRODUCT_DEVICE := goyawifi                                               # Target device's device name. This is the codename of the device.
PRODUCT_MANUFACTURER := samsung                                          # Target device's manufacturer. This is usually the board manufacturer of the device, but is usually identical to the brand.
PRODUCT_MODEL := SM-T110                                                 # Target device's model. This is the commercial model name given to users, instead of the codename.
PRODUCT_NAME := lineage_goyawifi                                         # Target device's building name. This can be used for commands like breakfast and brunch.
PRODUCT_RELEASE_NAME := goyawifi                                         # Target device's release name. This is usually the same as PRODUCT_DEVICE.
