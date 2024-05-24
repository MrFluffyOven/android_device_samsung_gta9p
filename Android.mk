#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_DEVICE),gta9p)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
