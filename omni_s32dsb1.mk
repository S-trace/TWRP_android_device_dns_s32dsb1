# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/dns/s32dsb1/full_s32dsb1.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_s32dsb1
PRODUCT_BRAND := MBX
PRODUCT_DEVICE := s32dsb1
PRODUCT_MODEL := "S32DSB1"
PRODUCT_MANUFACTURER := CVTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cvt_tv TARGET_DEVICE=cvt_tv BUILD_FINGERPRINT="MBX/cvt_tv/cvt_tv:4.0.3/TV_20121108.163051/eng.wuanhong.20121108.163026:user/test-keys" PRIVATE_BUILD_DESC="cvt_tv-user 4.0.3 TV_20121108.163051 eng.wuanhong.20121108.163026 test-keys"
