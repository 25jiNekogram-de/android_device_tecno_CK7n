#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/CK7n
KERNEL_PATH := $(DEVICE_PATH)-kernel

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1.vendor:64
TARGET_HAS_UDFPS := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    SettingsProviderResTarget \
    SettingsResTarget \
    SystemUIResTarget

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/transsion/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/CK7N/CK7n-vendor.mk)
