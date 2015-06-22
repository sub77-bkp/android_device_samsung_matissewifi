# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Inherit some common SlimSaber stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

PRODUCT_RELEASE_NAME := SM-T530
PRODUCT_NAME := slim_matissewifi
