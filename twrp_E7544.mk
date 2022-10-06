#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from E7544 device
$(call inherit-product, device/micromax/E7544/device.mk)

PRODUCT_DEVICE := E7544
PRODUCT_NAME := twrp_E7544
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := IN_2b
PRODUCT_MANUFACTURER := micromax

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums512_1h10_Natv-user 11 RP1A.201005.001 66 release-keys"

BUILD_FINGERPRINT := Micromax/E7544/E7544:11/RP1A.201005.001/66:user/release-keys
