# Copyright (C) 2015 The Pure Nexus Project
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

# Include Pure Nexus telephony configuration
include vendor/nexus/configs/nexus_phone.mk

# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Override AOSP build properties
PRODUCT_NAME := nexus_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Addtional backup tools for dirty flash
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/common/genericdevice/addon.d/99-dpi.sh:system/addon.d/99-dpi.sh \
    vendor/nexus/prebuilt/common/genericdevice/addon.d/91-font.sh:system/addon.d/91-font.sh

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/MOB30Y/3067468:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 MOB30Y 3067468 release-keys"
