#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/caihong

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5DAAL1

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG += vendor/oplus/caihong.config

# Partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 15028191232
BOARD_SUPER_PARTITION_SIZE := 15032385536

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103
TARGET_RECOVERY_DEFAULT_ROTATION := ROTATION_LEFT

$(call soong_config_set,RECOVERY_MINUI,QSSI_DRM,true)

# Include the proprietary files BoardConfig.
include vendor/oneplus/caihong/BoardConfigVendor.mk
