# Inherit some common Bliss stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Release name
PRODUCT_RELEASE_NAME := SM-T530
PRODUCT_NAME := cm_matissewifi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=matissewifixx TARGET_DEVICE=matissewifi BUILD_FINGERPRINT="samsung/matissewifixx/matissewifi:5.0.2/LRX22G/T530XXU1BOD8:user/release-keys" PRIVATE_BUILD_DESC="matissewifixx-user 5.0.2 LRX22G T530XXU1BOD8 release-keys"

