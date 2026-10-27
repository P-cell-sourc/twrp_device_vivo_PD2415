#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD2415 device
$(call inherit-product, device/vivo/PD2415/device.mk)

PRODUCT_DEVICE := PD2415
PRODUCT_NAME := twrp_PD2415
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2415A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_64only_cn_armv82-user 16 BP2A.250605.031.A3 compiler260911192345 release-keys"

BUILD_FINGERPRINT := vivo/PD2415/PD2415:16/BP2A.250605.031.A3/compiler260911192345:user/release-keys
