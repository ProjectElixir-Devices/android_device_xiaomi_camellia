echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Kernel Prebuilt [1/5]'
# Camellia Kernel Prebuilt
rm -rf device/xiaomi/camellia-kernel
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_xiaomi_camellia-kernel.git device/xiaomi/camellia-kernel

echo 'Cloning Camellia Vendor tree [2/5]'
# Device Vendor Tree
rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_xiaomi_camellia.git vendor/xiaomi/camellia

echo 'Cloning Sepolicy_vndr [3/5]'
# Sepolicies
rm -rf device/mediatek/sepolicy_vndr
git clone --depth=1  https://github.com/dm700-devs/device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

echo 'Hardware Mediatek [4/5]'
# Hardware Mediatek
rm -rf hardware/mediatek
git clone --depth=1 https://github.com/PQEnablers-Devices/android_hardware_mediatek -b lineage-21 --single-branch hardware/mediatek

echo 'Cloning Hardware Xiaomi [5/5]'
# Hardware Xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/PixelExperience/hardware_xiaomi hardware/xiaomi

echo 'Completed, Now proceeding to lunch'
