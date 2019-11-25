#
# Copyright (C) 2016 The CyanogenMod Project
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


LOCAL_PATH := device/coolpad/n3c

$(call inherit-product-if-exists, vendor/coolpad/n3c/n3c-vendor-blob.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay # enable this to be able overlay a default wallpaper

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-2048-hwui-memory.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi 280dpi hdpi tvdpi mdpi ldpi

# Superuser
# WITH_SU := true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Camera
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    device/coolpad/n3c/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/coolpad/n3c/configs/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml
    

# Prebuilt Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/prebuilts/zImage
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/egl.cfg:system/vendor/lib/egl/egl.cfg

# TODO: Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6739:root/fstab.mt6739 \
    $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/init.common_svc.rc:root/init.common_svc.rc \
    $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6739.rc:root/init.mt6739.rc \
    $(LOCAL_PATH)/rootdir/init.mt6739.usb.rc:root/init.mt6739.usb.rc \
    $(LOCAL_PATH)/rootdir/init.epdg.rc:root/init.epdg.rc \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/init.ril.rc:root/init.ril.rc \
    $(LOCAL_PATH)/rootdir/init.sensor.rc:root/init.sensor.rc \
    $(LOCAL_PATH)/rootdir/init.volte.rc:root/init.volte.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6739.rc:root/init.recovery.mt6739.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6739.rc:root/ueventd.mt6739.rc

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudio-resampler \
    libtinyalsa \
    libaudiopolicymanagerdefault \
    libtinycompress \
    libtinymix \
    libtinyxml

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    gps.mt6739 \
    libcurl \
    libepos

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni
    
PRODUCT_PACKAGES += \
    EngineerMode \
    YGPS

PRODUCT_PACKAGES += \
    YahooWeatherProvider

# Camera
PRODUCT_PACKAGES += \
    Snap

# Disable adb security
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.mount.fs=EXT4 \
    persist.service.acm.enable=0 \
    camera.disable_zsl_mode=1 \
    persist.radio.lte.chip=0 \
    ro.config.low_ram=true \
    ro.bootimage.build.fingerprint=Coolpad/full_hct6739_66_n1/hct6739_66_n1:7.1.1/N6F26Q/1558756208:user/test-keys

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=cfq

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

PRODUCT_PACKAGES += \
    libstagefright_color_conversion

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apn_delay=5000 \
    persist.sys.media.use-awesome=false \
    media.stagefright.use-awesome=false

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/configs/keylayout/ACCDET.kl:system/usr/keylayout/ACCDET.kl

# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# NFC
# PRODUCT_PACKAGES += \
    com.gsma.services.nfc \
    Nfc \
    Tag
    
# PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.nfc.nq.xml:system/etc/permissions/com.nxp.nfc.nq.xml \
    frameworks/native/data/etc/com.gsma.services.nfc.xml:system/etc/permissions/com.gsma.services.nfc.xml

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libnl_2 \
    libion

# TODO: RIL
# PRODUCT_PACKAGES += \
    libccci_util \
    librilmtk \
    librilmtkmd2 \
    mtkrild \
    rilproxy

# Radio dependencies
# PRODUCT_PACKAGES += \
    muxreport \
    terservice

# Telephony
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    lib_driver_cmd_mt66xx

# USB     
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
