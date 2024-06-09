#
# Copyright 2017 The Android Open Source Project
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
PRODUCT_RELEASE_NAME := ocluhl

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/ocluhl/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ocluhl
PRODUCT_NAME := omni_ocluhl
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC U11 life
PRODUCT_MANUFACTURER := HTC	

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ocla1_sprout_00401 \
	BUILD_PRODUCT=htc_ocla1_sprout \
    TARGET_DEVICE=htc_ocla1_sprout
