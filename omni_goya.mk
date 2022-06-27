#
# Copyright (C) 2022 TeamWin Recovery Project
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

$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/languages_small.mk)

PRODUCT_DEVICE       := goya
PRODUCT_NAME         := omni_goya
PRODUCT_BRAND        := samsung
PRODUCT_MODEL        := SM-T110
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab 3 Lite 7.0
PRODUCT_MANUFACTURER := samsung
