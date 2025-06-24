#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 15032385536

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/caihong

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5D77L1,OP5DAAL1

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_CAIHONG_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103
TARGET_RECOVERY_DEFAULT_TOUCH_ROTATION := ROTATION_RIGHT

# Include the proprietary files BoardConfig.
include vendor/oneplus/caihong/BoardConfigVendor.mk
