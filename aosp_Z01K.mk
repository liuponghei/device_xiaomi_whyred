#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := whyred

$(call inherit-product, build/target/product/embedded.mk)

# PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from whyred device
$(call inherit-product, device/asus/Z01K/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_Z01K
PRODUCT_DEVICE := Z01K
PRODUCT_MANUFACTURER := asus
PRODUCT_BRAND := asus
PRODUCT_FULL_TREBLE_OVERRIDE := true

TARGET_VENDOR_PRODUCT_NAME := whyred
TARGET_VENDOR_DEVICE_NAME := whyred
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=whyred PRODUCT_NAME=whyred
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="whyred-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEIMIFA release-keys"

BUILD_FINGERPRINT := xiaomi/whyred/whyred:8.1.0/OPM1.171019.011/V9.5.11.0.OEIMIFA:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model
