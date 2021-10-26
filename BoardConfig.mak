BOARD_VENDOR := mirea

DEVICE_PATH := device/mirea/it1
# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Asserts
TARGET_OTA_ASSERT_DEVICE := mirea_it1,mirea_it1uhl,mirea_it1whl,mirea_it1dugl,mirea_it1dtwl,it1

# Architecture
TARGET_ARCH := arm64 # основна архитектура процессора
TARGET_ARCH_VARIANT := armv8-a #вариант архитектуры
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

TARGET_BOARD_PLATFORM := msm8998

TARGET_USES_UEFI := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296 # размер образа ядра в байтах
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880 # размер образа рекавери
в байтах
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296 # размер образа системы в
байтах
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1294991360 # размер образа для
хранения данных пользователя в байтах
BOARD_HAS_NO_CACHE_PARTITION := true


AB_OTA_UPDATER := true # активация режима обновления по схеме A/B
AB_OTA_PARTITIONS := \ # список разделов, входящие в обновление по OTA
boot \
system \
vendor
PRODUCT_PACKAGES += \ # дополнительные пакеты, необходимые для
установки A/B OTA
update_engine \
update_verifier
TARGET_NO_RECOVERY := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := wlan0
WIFI_DRIVER_MODULE_NAME := rt2800usb
WIFI_DRIVER_MODULE_PATH :=
/system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH := true