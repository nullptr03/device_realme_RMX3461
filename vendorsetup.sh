#!/bin/bash

banner(){
clear
echo "=================================="
echo "|                                |"
echo "|   Realme 9 5G SE Setup Script  |"
echo "|       Branch: Superior         |"
echo "|  Maintained By: ZirgomHaidar   |"
echo "|                                |"
echo "=================================="
}

banner 2>1

# Clone Kernel source
git clone https://github.com/ZirgomHaidar/kernel_realme_sm8350 kernel/realme/sm8350

# Clone Vendor source
git clone https://gitlab.com/ZirgomHaidar/vendor_realme_rmx3461.git vendor/realme/RMX3461

# Clone livedisplay
git clone https://github.com/LineageOS/android_hardware_lineage_livedisplay hardware/lineage/livedisplay

# Clone Bluetooth
rm -rf packages/modules/Bluetooth
git clone https://github.com/ZirgomHaidar/android_packages_modules_Bluetooth packages/modules/Bluetooth

# Clone hardware
git clone https://github.com/pjgowtham/android_hardware_oplus hardware/oplus
