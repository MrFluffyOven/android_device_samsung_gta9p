#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/samsung/gta9p

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API levels
BOARD_API_LEVEL := 30
PRODUCT_SHIPPING_API_LEVEL := 32

# define hardware platform
PRODUCT_PLATFORM := holi
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    update_engine \
    update_verifier \
    update_engine_sideload

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

    # Display
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libxml2 \
    libdmabufheap \
    vendor.display.config@1.0 \
    vendor.display.config@2.0

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2 \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap

# QCOM
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
