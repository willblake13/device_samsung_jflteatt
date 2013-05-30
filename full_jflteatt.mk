# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for jflteatt hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and jflteatt, hence its name.
#

# Extra Apps and files
PRODUCT_COPY_FILES += \
    vendor/samsung/d2att/Alert-SonarMerge.mp3:system/media/audio/notifications/Alert-SonarMerge.mp3 \
    vendor/samsung/d2att/CyanPing.ogg:system/media/audio/notifications/CyanPing.ogg \
    vendor/samsung/d2att/apple_smsreceived.ogg:system/media/audio/notifications/apple_smsreceived.ogg \
    vendor/samsung/d2att/IphoneCellSoundMerge.mp3:system/media/audio/ringtones/IphoneCellSoundMerge.mp3 \
    vendor/aokp/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk \
    vendor/samsung/d2att/com.aokp.ota.apk:system/app/com.aokp.ota.apk

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers \
        librs_jni

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from jfltetmo device
$(call inherit-product, device/samsung/jflteatt/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_jflteatt
PRODUCT_DEVICE := jflteatt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I337

PRODUCT_PACKAGES += \
    loki_patch \
    loki.sh \
    valid_bootloaders
