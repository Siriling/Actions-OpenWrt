#!/bin/bash
#=================================================
# System Required: Linux
# Version: 1.0
# Lisence: MIT
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# 🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

# mt7921
# rm -rf package/kernel/rtl8821cu
# rm -rf package/kernel/mac80211
# rm -rf package/network/services/hostapd
# svn export https://github.com/openwrt/openwrt/trunk/package/kernel/mac80211 package/kernel/mac80211
# svn export https://github.com/openwrt/openwrt/trunk/package/network/services/hostapd package/network/services/hostapd
# rm -rf package/kernel/mac80211/Makefile
# cp -f $GITHUB_WORKSPACE/Makefile package/kernel/mac80211/Makefile

# Add Lienol's Packages
# git clone --depth=1 https://github.com/Lienol/openwrt-package
# rm -rf ../../customfeeds/luci/applications/luci-app-kodexplorer
# rm -rf openwrt-package/verysync
# rm -rf openwrt-package/luci-app-verysync

# 5G Modem Suppor
git clone https://github.com/Siriling/5G-Modem-Support.git package/wwan

# Add OpenAppFilter
git clone --depth=1 https://github.com/DHDAXCW/OpenAppFilter

# Mod zzz-default-settings
# pushd package/lean/default-settings/files
# sed -i '/http/d' zzz-default-settings
# sed -i '/18.06/d' zzz-default-settings
# export orig_version=$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
# export date_version=$(date -d "$(rdate -n -4 -p ntp.aliyun.com)" +'%Y-%m-%d')
# sed -i "s/${orig_version}/${orig_version} (${date_version})/g" zzz-default-settings
# popd

# Fix mt76 wireless driver
# pushd package/kernel/mt76
# sed -i '/mt7662u_rom_patch.bin/a\\techo mt76-usb disable_usb_sg=1 > $\(1\)\/etc\/modules.d\/mt76-usb' Makefile
# popd

# Test kernel 5.15
# sed -i 's/5.4/6.1/g' ./target/linux/rockchip/Makefile
# rm -rf target/linux/rockchip/image/armv8.mk
# cp -f $GITHUB_WORKSPACE/armv8.mk target/linux/rockchip/image/armv8.mk
# cp -f $GITHUB_WORKSPACE/999-fuck-rockchip-pcie.patch target/linux/rockchip/patches-6.1/999-fuck-rockchip-pcie.patch