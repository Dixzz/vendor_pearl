# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017-2018 The LineageOS Project
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

PEARL_SRC_API_DIR := $(TOPDIR)prebuilts/pearl-sdk/api
INTERNAL_PEARL_PLATFORM_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/pearl_public_api.txt
INTERNAL_PEARL_PLATFORM_REMOVED_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/pearl_removed.txt
FRAMEWORK_PEARL_PLATFORM_API_FILE := $(TOPDIR)pearl-sdk/api/pearl_current.txt
FRAMEWORK_PEARL_PLATFORM_REMOVED_API_FILE := $(TOPDIR)pearl-sdk/api/pearl_removed.txt
FRAMEWORK_PEARL_API_NEEDS_UPDATE_TEXT := $(TOPDIR)vendor/pearl/build/core/apicheck_msg_current.txt

BUILD_RRO_SYSTEM_PACKAGE := $(TOPDIR)vendor/pearl/build/core/system_rro.mk

# We modify several neverallows, so let the build proceed
ifneq ($(TARGET_BUILD_VARIANT),user)
SELINUX_IGNORE_NEVERALLOWS := true
endif

# Rules for MTK targets
include $(TOPDIR)vendor/pearl/build/core/mtk_target.mk

# Rules for QCOM targets
include $(TOPDIR)vendor/pearl/build/core/qcom_target.mk
