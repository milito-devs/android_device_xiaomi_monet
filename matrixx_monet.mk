#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

PRODUCT_NAME := lineage_monet
PRODUCT_DEVICE := monet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

MATRIXX_MAINTAINER := alecchangod
TARGET_CUSTOM_UDFPS := true
WITH_BCR := true
PERF_ANIM_OVERRIDE := true

ifeq ($(WITH_GMS),true)
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
endif

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="monet-user 12 SKQ1.211006.001 V13.0.2.0.SJIEUXM release-keys" \
    BuildFingerprint=Xiaomi/monet_eea/monet:12/SKQ1.211006.001/V13.0.2.0.SJIEUXM:user/release-keys

# Inherit from dolby
$(call inherit-product-if-exists, vendor/sony/dolby/sony-dolby-vendor.mk)

# Inherit from Leica camera
$(call inherit-product-if-exists, vendor/xiaomi/monet-leicacamera/leica-camera-vendor.mk)
