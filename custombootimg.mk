DTB := device/samsung/matissewifi/dt.img

LZMA_RAMDISK := $(PRODUCT_OUT)/ramdisk-recovery-lzma.img

$(LZMA_RAMDISK): $(recovery_ramdisk)
	 gunzip -f < $(recovery_ramdisk) | lzma -e > $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(LZMA_RAMDISK) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	$(MKBOOTIMG) --kernel $(PRODUCT_OUT)/kernel --ramdisk $(LZMA_RAMDISK) --cmdline "console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37" --base 0x00000000 --pagesize 2048 --ramdisk_offset 0x02000000 --dt $(DTB) --tags_offset 0x01e00000 --output $(PRODUCT_OUT)/recovery.img
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)



