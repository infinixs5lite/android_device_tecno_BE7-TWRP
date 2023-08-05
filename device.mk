#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/tecno/BE7
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.1-mtkimpl.recovery \
    android.hardware.boot@1.1-mtkimpl

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    Fastbootd

# MTK Plpath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils.recovery

PRODUCT_PACKAGES += \
    bootctrl.mt6739

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

PRODUCT_PACKAGES_DEBUG += \
    bootctrl
