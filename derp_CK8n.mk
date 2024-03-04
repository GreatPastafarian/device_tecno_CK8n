#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/CK8n/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := derp_CK8n
PRODUCT_DEVICE := CK8n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno CK8n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_tecno-user 14 UP1A.231005.007 499647 release-keys" \
    TARGET_DEVICE=Tecno-CK8n \
    PRODUCT_NAME=CK8n-GL

BUILD_FINGERPRINT := "Tecno/CK8n-GL/TECNO-CK8n:12/SP1A.210812.016/231208V3105:user/release-keys"
