#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)

LOCAL_PATH := device/motorola/xt1028

# xt1028 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnGsmDevice=0 \
	telephony.lteOnCdmaDevice=0 \
	ro.telephony.default_network=4 \
	persist.radio.no_wait_for_card=1 \
	persist.radio.dfr_mode_set=1 \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.telephony.gsm-routes-us-smsc=1 \
	ro.cdma.home.operator.isnan=1 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
	ro.cdma.data_retry_config=max_retries=infinite,0,0,10000,10000,100000,10000,10000,10000,10000,140000,540000,960000 \
	ro.gsm.data_retry_config=default_randomization=2000,max_retries=infinite,1000,1000,80000,125000,485000,905000 \
	ro.gsm.2nd_data_retry_config=max_retries=1,15000 \
	persist.radio.mode_pref_nv10=1 \
	persist.radio.vrte_logic=2 \
	persist.radio.0x9e_not_callname=1 \
	persist.radio.skip_data_check=1 \
	persist.ril.max.crit.qmi.fails=4 \
	ro.mot.build.customerid=verizon \
	ro.hw.radio=0x3 \
	ro.hw.device=falcon

# Allow verizon apps to show in market
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase.ms=android-verizon \
	ro.com.google.clientidbase.am=android-verizon \
	ro.com.google.clientidbase.yt=android-verizon

$(call inherit-product, device/motorola/msm8226-common/keylayout/keylayout.mk)
$(call inherit-product, vendor/motorola/xt1028/xt1028-vendor.mk)
