#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/samsung/gta9p

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# API levels
BOARD_API_LEVEL := 32
PRODUCT_SHIPPING_API_LEVEL := 32

# define hardware platform
PRODUCT_PLATFORM := sm6375
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control
#PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti.recovery \
    bootctrl.holi.recovery

    # Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

    # Display
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libxml2 \
    vendor.display.config@1.0 \
    vendor.display.config@2.0

# QCOM
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Copy modules for depmod
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/recovery/root/system/lib/modules/1.1,$(TARGET_COPY_OUT_RECOVERY)/root/system/lib/modules/1.1)
