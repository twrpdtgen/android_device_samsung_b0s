#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from b0s device
$(call inherit-product, device/samsung/b0s/device.mk)

PRODUCT_DEVICE := b0s
PRODUCT_NAME := omni_b0s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S908B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="b0sxxx-user 12 SP1A.210812.016 S908BXXS8DXD2 release-keys"

BUILD_FINGERPRINT := samsung/b0sxxx/b0s:12/SP1A.210812.016/S908BXXS8DXD2:user/release-keys
