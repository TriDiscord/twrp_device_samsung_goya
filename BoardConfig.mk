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

LOCAL_PATH := device/samsung/goya

# Platform
TARGET_ARCH                  := arm
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_CPU_VARIANT           := cortex-a9
TARGET_CPU_SMP               := true
ARCH_ARM_HAVE_TLS_REGISTER   := true
TARGET_FORCE_CPU_UPLOAD      := true
TARGET_BOARD_PLATFORM        := mrvl
TARGET_BOOTLOADER_BOARD_NAME := goya
BOARD_VENDOR                 := samsung

# Bootloader
TW_NO_REBOOT_BOOTLOADER     := true
TW_HAS_DOWNLOAD_MODE        := true
TARGET_NO_BOOTLOADER        := true
TARGET_NO_RADIOIMAGE        := true
BOARD_HAS_NO_MISC_PARTITION := true

# Assert
TARGET_OTA_ASSERT_DEVICE := goyawifi,goyawifiue,goyawifixx,goyawifixxx,goyawifizc,goyawifizs,goyawifi,goya3g,goya3gxx,goya3gzc,goya3gdv,goya3gub

# Filesystem
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE             := 4096
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_HAS_NO_REAL_SDCARD           := true
RECOVERY_SDCARD_ON_DATA            := false

# Kernel
TARGET_PREBUILT_KERNEL  := $(LOCAL_PATH)/prebuilt/zImage
BOARD_KERNEL_CMDLINE    := androidboot.selinux=permissive androidboot.hardware=pxa988
BOARD_KERNEL_PAGESIZE   := 2048
BOARD_KERNEL_BASE       := 0x10000000
BOARD_KERNEL_OFFSET     := 0x00008000
BOARD_RAMDISK_OFFSET    := 0x01000000
BOARD_SECOND_OFFSET     := 0x00f00000
BOARD_TAGS_OFFSET       := 0x00000100
BOARD_MKBOOTIMG_ARGS    += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS    += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS    += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS    += --tags_offset $(BOARD_TAGS_OFFSET)

# USB
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TW_MTP_DEVICE     := "/dev/usb_mtp_gadget"

# Recovery
TW_THEME                     := landscape_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# TeamWin Recovery
TW_THEME           := landscape_hdpi
TW_EXCLUDE_TWRPAPP := true
TW_USE_TOOLBOX     := false
TW_NO_CPU_TEMP     := true
TW_NO_HAPTICS      := true
