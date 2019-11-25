#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := n3c

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/n3c/device_n3c.mk)
$(call inherit-product, device/coolpad/n3c/prop.mk)
$(call inherit-product-if-exists, vendor/coolpad/n3c/n3c-vendor.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n3c
PRODUCT_NAME := lineage_n3c
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := coolpad_n3c
PRODUCT_MANUFACTURER := coolpad

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Coolpad/full_hct6739_66_n1/hct6739_66_n1:7.1.1/N6F26Q/1558756208:user/test-keys \
    PRIVATE_BUILD_DESC="full_hct6739_66_n1-user 7.1.1 N6F26Q 1558756208 test-keys" 

# Available languages
PRODUCT_LOCALES := ru_RU en_US en_AU en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN zh_HK ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET en_XA ar_XB fr_CA km_KH lo_LA ne_NP si_LK mn_MN hy_AM az_AZ ka_GE my_MM mr_IN ml_IN is_IS mk_MK ky_KG eu_ES gl_ES bn_BD ta_IN kn_IN te_IN uz_UZ ur_PK kk_KZ sq_AL gu_IN pa_IN be_BY bs_BA
