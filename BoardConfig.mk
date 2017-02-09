#
# Copyright (C) 2016 The CyanogenMod Project
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

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/yu/lettuce/board/*.mk

# inherit from proprietary files
-include vendor/yu/lettuce/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1  lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/yu/lettuce/dt.img
#BOARD_CUSTOM_BOOTIMG_MK := device/yu/lettuce/mkbootimg.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 67108864
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1304215508
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Vendor Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
#TARGET_PREBUILT_KERNEL := device/yu/lettuce/kernel
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP Build Flags
TARGET_RECOVERY_FSTAB := device/yu/lettuce/recovery/etc/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := false
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_QCOM_RTC_FIX := true
