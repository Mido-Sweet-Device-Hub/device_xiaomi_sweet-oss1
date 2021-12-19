#
# Copyright (C) 2021 Octavi-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some device specific configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common OctaviOS configurations
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Bootanimation Flag
TARGET_BOOT_ANIMATION_RES := 1080

# Octavi Stuff
OCTAVI_BUILD_TYPE := Official
OCTAVI_DEVICE_MAINTAINER := ~Pratyaksh.Bharadwaj~
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

# Device Identifier - This must come after all inclusions
PRODUCT_NAME := octavi_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 9 PKQ1.180729.001 V10.3.6.0.PEJMIXM release-keys"

BUILD_FINGERPRINT := "Xiaomi/beryllium/beryllium:9/PKQ1.180729.001/V10.3.6.0.PEJMIXM:user/release-keys"
