#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/smdk4412-common/BoardCommonConfig.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/lt01-common/include

COMMON_PATH := device/samsung/lt01-common

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(COMMON_PATH)/bluetooth/vnd_tab3.txt

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 

# RIL
TARGET_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Use dlmalloc instead of jemalloc for mallocs
#MALLOC_IMPL := dlmalloc
MALLOC_SVELTE := true

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2235564032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12813598720

# F2FS filesystem
TARGET_USERIMAGES_USE_F2FS := true

# exFAT kernel support
KERNEL_EXFAT_MODULE_NAME := "exfat"

# Exynos4x12 Tablet
BOARD_EXYNOS4X12_TABLET := true

# Camera
BOARD_USES_PROPRIETARY_LIBCAMERA := true

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# PDFIUM
TARGET_NEEDS_PDFIUM_BIGINT := true

# Recovery
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Sensors
BOARD_USE_LEGACY_SENSORS_FUSION := false

# Button backlight
BOARD_EXYNOS4X12_TABLET_HAS_LED_BUTTONS := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/lt01-common/sepolicy

# Charging mode
BOARD_CHARGING_CMDLINE_NAME := lpcharge
BOARD_CHARGING_CMDLINE_VALUE := 1

# Properties
TARGET_SYSTEM_PROP += device/samsung/lt01-common/system.prop

# inherit from the proprietary version
-include vendor/samsung/lt01-common/BoardConfigVendor.mk
