# Release name
PRODUCT_RELEASE_NAME := matissewifi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280
#TARGET_BOOTANIMATION_HALF_RES := true

# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/full_matissewifi.mk)

# Inherit some common SlimSaber stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

PRODUCT_DEVICE := matissewifi
PRODUCT_NAME := slim_matissewifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T530
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=matissewifi \
    TARGET_DEVICE=matissewifi \
	BUILD_FINGERPRINT=samsung/matissewifixx/matissewifi:5.0.2/LRX22G/T530XXU1BOD8:user/release-keys \
	PRIVATE_BUILD_DESC="matissewifixx-user 5.0.2 LRX22G T530XXU1BOD8 release-keys"



