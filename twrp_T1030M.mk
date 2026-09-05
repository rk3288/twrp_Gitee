# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Define hardware platform
PRODUCT_RELEASE_NAME := T1030M

# Device path for OEM device tree
DEVICE_PATH := device/alldocube/$(PRODUCT_RELEASE_NAME)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_$(PRODUCT_RELEASE_NAME).mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := iPlay 50 Pro
PRODUCT_MANUFACTURER := Alldocube

#PRODUCT_GMS_CLIENTID_BASE := android-alldocube

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=T1030M \
    PRODUCT_NAME=iPlay_50_Pro \
    PRIVATE_BUILD_DESC="vext_k6789v1_64-user 12 SP1A.210812.016 1711613054 release-keys"
BUILD_FINGERPRINT := "Alldocube/iPlay_50_Pro/T1030M:12/SP1A.210812.016/1711613054:user/release-keys"
#Alldocube/iPlay_50_Pro/T1030M:13/TP1A.220624.014/1711613054:user/release-keys
