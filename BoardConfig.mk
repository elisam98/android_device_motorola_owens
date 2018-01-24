#
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

include device/motorola/msm8937-common/BoardConfigCommon.mk

-include vendor/motorola/owens/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/owens

# Asserts
TARGET_OTA_ASSERT_DEVICE := owens,owens_retail
TARGET_KERNEL_CONFIG := owens_defconfig
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3623878656    #  3538944 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10768858624 # 10516463 * 1024 mmcblk0p54

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
