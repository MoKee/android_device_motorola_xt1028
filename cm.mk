# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := cm_xt1028

$(call inherit-product, device/motorola/xt1028/full_xt1028.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1028 \
    BUILD_PRODUCT=falcon_cdma \
    BUILD_FINGERPRINT=motorola/falcon_verizon/falcon_cdma:4.3/14.10.0Q3.X-84-14/16:user/release-keys
