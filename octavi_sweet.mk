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

# Inherit GApps stuff
$(call inherit-product, vendor/gapps/gapps.mk)

# Bootanimation Flag
TARGET_BOOT_ANIMATION_RES := 1080

# Octavi Stuff
OCTAVI_BUILD_TYPE := Official
OCTAVI_DEVICE_MAINTAINER := ~Pratyaksh.Bharadwaj~
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64

# Device Identifier - This must come after all inclusions
PRODUCT_NAME := octavi_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys"

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys"
