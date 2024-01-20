#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from TECNO-CK8n device
$(call inherit-product, device/tecno/CK8n/device.mk)

BOARD_VENDOR := tecno
PRODUCT_DEVICE := CK8n
PRODUCT_NAME := lineage_CK8n
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Tecno CK8n
PRODUCT_MANUFACTURER := TECNO

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_tecno-user 13 TP1A.220624.014 492888 release-keys"

BUILD_FINGERPRINT := TECNO/CK8n-GL/TECNO-CK8n:13/TP1A.220624.014/231129V2678:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
