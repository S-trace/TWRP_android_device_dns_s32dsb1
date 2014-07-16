# Inherit device configuration for N70.
$(call inherit-product, device/dns/s32dsb1/full_s32dsb1.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := omni_s32dsb1
PRODUCT_BRAND := MBX
PRODUCT_DEVICE := s32dsb1
PRODUCT_MODEL := "S32DSB1"
PRODUCT_MANUFACTURER := CVTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cvt_tv TARGET_DEVICE=cvt_tv BUILD_FINGERPRINT="MBX/cvt_tv/cvt_tv:4.0.3/TV_20121108.163051/eng.wuanhong.20121108.163026:user/test-keys" PRIVATE_BUILD_DESC="cvt_tv-user 4.0.3 TV_20121108.163051 eng.wuanhong.20121108.163026 test-keys"
