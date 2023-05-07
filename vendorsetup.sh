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

#Clone vibrator HAL
banner 2>1
rm -rf vendor/qcom/opensource/vibrator
git clone https://github.com/itsxrp/android_vendor_qcom_opensource_vibrator.git vendor/qcom/opensource/vibrator

# Clone Display Hals
rm -rf hardware/qcom-caf/sm8350/display
git clone https://github.com/Cykeek-Labs/hardware_qcom-caf_sm8350_display.git hardware/qcom-caf/sm8350/display

# Clone livedisplay
git clone https://github.com/LineageOS/android_hardware_lineage_livedisplay hardware/lineage/livedisplay

# Clone Bluetooth
rm -rf packages/modules/Bluetooth
git clone https://github.com/ZirgomHaidar/android_packages_modules_Bluetooth packages/modules/Bluetooth
