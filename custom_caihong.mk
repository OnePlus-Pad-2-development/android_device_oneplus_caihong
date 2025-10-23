#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from caihong device
$(call inherit-product, device/oneplus/caihong/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := custom_caihong
PRODUCT_DEVICE := caihong
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OPD2403
PRODUCT_CHARACTERISTICS := nosdcard,tablet

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1778208015618 release-keys" \
    BuildFingerprint=OnePlus/OPD2403IN/OP5DAAL1:16/UKQ1.231108.001/U.R4T3.367361a-12b9c76-12b9c73:user/release-keys \
    DeviceName=OP5DAAL1 \
    DeviceProduct=OPD2403 \
    SystemDevice=OP5DAAL1 \
    SystemName=OPD2403
