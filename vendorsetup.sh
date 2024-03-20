echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Kernel Prebuilt [1/7]'
# Camellia Kernel Prebuilt
rm -rf device/xiaomi/camellia-kernel
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_xiaomi_camellia-kernel.git device/xiaomi/camellia-kernel

echo 'Cloning Camellia Vendor tree [2/7]'
# Device Vendor Tree
rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_xiaomi_camellia.git vendor/xiaomi/camellia

echo 'Cloning Sepolicy_vndr [3/7]'
# Sepolicies
rm -rf device/mediatek/sepolicy_vndr
git clone --depth=1  https://github.com/dm700-devs/device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

echo 'Hardware Mediatek [4/7]'
# Hardware Mediatek
rm -rf hardware/mediatek
git clone --depth=1 https://github.com/PQEnablers-Devices/android_hardware_mediatek -b lineage-21 --single-branch hardware/mediatek

echo 'Cloning Hardware Xiaomi [5/7]'
# Hardware Xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

echo 'Cloning ViperFX [6/7]'
# Cloing ViperFX
rm -rf packages/apps/ViPER4AndroidFX
git clone --depth=1 https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

echo 'Cloning Firmware [7/7]'
# Cloing Firmware
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_camellia-firmware vendor/xiaomi/camellia-firmware

echo 'Completed, Now proceeding to lunch'
