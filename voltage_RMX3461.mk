#
# Copyright (C) 2021-2022 The superiorOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ice device
$(call inherit-product, device/realme/RMX3461/device.mk)

# Inherit some common superior stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

WITH_GAPPS := true
TARGET_INCLUDE_MATLOG := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := voltage_RMX3461
PRODUCT_DEVICE := RMX3461
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme9SE

PRODUCT_SYSTEM_NAME := RMX3461
PRODUCT_SYSTEM_DEVICE := RE54BFL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3461-user 13 TP1A.220905.001 R.e073d6_1f2d3_143 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3461/RE54BFL1:13/TP1A.220905.001/R.e073d6_1f2d3_143:user/release-keys
