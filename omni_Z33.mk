#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Z33 device
$(call inherit-product, device/symphony/Z33/device.mk)

PRODUCT_DEVICE := Z33
PRODUCT_NAME := omni_Z33
PRODUCT_BRAND := Symphony
PRODUCT_MODEL := Z33
PRODUCT_MANUFACTURER := symphony

PRODUCT_GMS_CLIENTID_BASE := android-symphonyedison

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z33-user 11 RP1A.201005.001 60 release-keys"

BUILD_FINGERPRINT := Symphony/Z33/Z33:11/RP1A.201005.001/60:user/release-keys
