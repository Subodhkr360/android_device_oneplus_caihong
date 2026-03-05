#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from caihong device
$(call inherit-product, device/oneplus/caihong/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

#viperx
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

PRODUCT_NAME := lineage_caihong
PRODUCT_DEVICE := caihong
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OPD2403
PRODUCT_CHARACTERISTICS := nosdcard,tablet
TARGET_HAS_UDFPS := false
EXTRA_UDFPS_ANIMATIONS := false

#Axion
HBM_SUPPORTED := true
HBM_NODE := /sys/kernel/oplus_display/hbm
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
TORCH_STR_SUPPORTED := true
TARGET_INCLUDE_VIPERFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := walt
#
AXION_CAMERA_REAR_INFO := 13
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Snakeඞ
AXION_PROCESSOR := Snapdragon_8_GEN_3
TARGET_ENABLE_BLUR := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1768876946191 release-keys" \
    BuildFingerprint=OnePlus/OPD2403IN/OP5DAAL1:16/UKQ1.231108.001/U.R4T3.2f5f456-deb173-e28402:user/release-keys \
    DeviceName=OP5DAAL1 \
    DeviceProduct=OPD2403 \
    SystemDevice=OP5DAAL1 \
    SystemName=OPD2403
