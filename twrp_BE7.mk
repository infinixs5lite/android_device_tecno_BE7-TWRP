#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from BE7 device
$(call inherit-product, device/tecno/BE7/device.mk)

PRODUCT_DEVICE := BE7
PRODUCT_NAME := twrp_BE7
PRODUCT_BRAND := TECNO pop 6 go
PRODUCT_MODEL := TECNO BE7
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_be7_h639-user 11 RP1A.200720.011 313984 release-keys"

BUILD_FINGERPRINT := TECNO/BE7-OP/TECNO-BE7:11/RP1A.200720.011/220602V528:user/release-keys
