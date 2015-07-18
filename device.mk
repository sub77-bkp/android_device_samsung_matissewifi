LOCAL_PATH := device/samsung/matisse

#    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilt/system,system)

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/kernel:kernel \
#    $(LOCAL_PATH)/dt.img:dt.img \
#    $(LOCAL_PATH)/init-test:recovery/root/init


$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := matisse


