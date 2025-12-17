mkdir -p device/nothing/{galaga,galaga-kernel,dump}
mkdir -p device/mediatek/sepolicy_vndr
mkdir -p hardware/mediatek
git clone https://github.com/sm455/android_device_nothing_Galaga -b los device/nothing/galaga
git clone https://github.com/nothing-galaga/android_device_nothing_Galaga-kernel device/nothing/galaga-kernel
git clone https://gitea.com/Saikrishna1504/galaga_dump device/nothing/dump
git clone https://github.com/nothing-galaga/android_hardware_mediatek hardware/mediatek
git clone https://github.com/nothing-galaga/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr 


source build/envsetup.sh
export WITH_GAPPS=true
python device/nothing/galaga/extract-files.py device/nothing/galaga/dump 
brunch galaga


