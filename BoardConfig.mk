#
# Copyright (C) 2012 The Android Open-Source Project
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

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := meson-m1
TARGET_BOOTLOADER_BOARD_NAME := cvt_tv
TARGET_NO_BOOTLOADER := true
# TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_SIMULATOR := false
TARGET_PROVIDES_INIT_RC := true

# TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# TWRP
# # RECOVERY_GRAPHICS_USE_LINELENGTH := true
# # TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_INITRC := device/dns/s32dsb1/recovery/init.rc
DEVICE_RESOLUTION := 1280x720
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TWHAVE_SELINUX := true

# Storage configuration
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true

# For classic partitioned device
# TW_INTERNAL_STORAGE_PATH := "/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "media"

# For datamedia device
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"


# removes the reboot bootloader button from the reboot menu
TW_NO_REBOOT_BOOTLOADER := true

# disables the display of the battery percentage for devices that don't support it properly
TW_NO_BATT_PERCENT := true

# removes the USB storage button on devices that don't support USB storage
TW_NO_USB_STORAGE := true

# forces the rm -rf option to always be on
TW_ALWAYS_RMRF := true

TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/dev/null"


PRODUCT_COPY_FILES += device/dns/s32dsb1/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

TARGET_PREBUILT_KERNEL := device/dns/s32dsb1/kernel
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8

# TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/dns/s32dsb1/releasetools/amlogic_ota_from_target_files
