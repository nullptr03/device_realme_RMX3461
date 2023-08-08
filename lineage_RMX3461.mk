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
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

WITH_GAPPS := false
TARGET_INCLUDE_MATLOG := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# chipset flag enclose var with "" if more than one
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rising.chipset", "Snapdragon 870 5G");
RISING_CHIPSET := "Snapdragon 778G"

# chipset flag enclose var with "" if more than one
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rising.maintainer", "maintainer");
RISING_MAINTAINER := "Andy | アンディ"

# chipset flag enclose var with "" if more than one
# this will reflect on build/display version, a firmware package/zip name 
# e.g. risingDroid-7.0-COMMUNITY-device-AOSP.zip - AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RISING_PACKAGE_TYPE := "VANILLA AOSP"

# Aperture Camera (default: not defined - skipped by the compiler)
TARGET_BUILD_APERTURE_CAMERA := true/false

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := false

PRODUCT_NAME := lineage_RMX3461
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
