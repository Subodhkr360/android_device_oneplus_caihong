#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_IS_TABLET := true

# AAPT
PRODUCT_AAPT_CONFIG := normal large xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3000
TARGET_SCREEN_WIDTH := 2120

# Carrier
PRODUCT_VENDOR_PROPERTIES += \
    ro.carrier=wifi-only \
    ro.radio.noril=yes

# Display
PRODUCT_PACKAGES += \
    libui_shim.vendor

# GMS
WITH_GMS_COMMS_SUITE := false

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/Vendor_22d9_Product_3869.idc:$(TARGET_COPY_OUT_ODM)/usr/idc/Vendor_22d9_Product_3869.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Vendor_22d9_Product_3869.kl:$(TARGET_COPY_OUT_ODM)/usr/keylayout/Vendor_22d9_Product_3869.kl

# Livedisplay
$(call soong_config_set_bool,OPLUS_LINEAGE_LIVEDISPLAY_HAL,ENABLE_SE,false)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget \
    OPlusWifiResTarget

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml \
    $(LOCAL_PATH)/configs/permissions/apq_excluded_telephony_features.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/apq_excluded_telephony_features.xml

# Regional properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/CN/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/CN/build.default.prop \
    $(LOCAL_PATH)/recovery/root/vendor/odm/etc/GLO/build.default.prop:$(TARGET_COPY_OUT_ODM)/etc/GLO/build.default.prop

# Recovery
$(call soong_config_set_bool,recovery,target_recovery_uses_qti_drm,true)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# OnePlus Addons
$(call inherit-product-if-exists, packages/apps/OnePlusAddons/oneplusaddons.mk)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8650-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/caihong/caihong-vendor.mk)
