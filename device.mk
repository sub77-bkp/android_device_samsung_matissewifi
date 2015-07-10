LOCAL_PATH := device/samsung/matissewifi

    $(call find-copy-subdir-files,*,device/samsung/matissewifi/prebuilt/system,system)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/init:init

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := matissewifi



