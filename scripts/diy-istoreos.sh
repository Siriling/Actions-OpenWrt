#!/bin/bash
#=================================================
# System Required: Linux
# Version: 1.0
# Lisence: MIT
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# 🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

# Change default shell to zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# mt7921
# rm -rf package/kernel/rtl8821cu
rm -rf package/kernel/mac80211
rm -rf package/network/services/hostapd
svn export https://github.com/openwrt/openwrt/trunk/package/kernel/mac80211 package/kernel/mac80211
svn export https://github.com/openwrt/openwrt/trunk/package/network/services/hostapd package/network/services/hostapd
# rm -rf package/kernel/mac80211/Makefile
# cp -f $GITHUB_WORKSPACE/mt7921/Makefile package/kernel/mac80211/Makefile

# 修改默认IP地址
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改主机名字
# sed -i 's/OpenWrt/R5S/g' package/base-files/files/bin/config_generate

# 修改版本号
# sed -i 's/R22.3.3/R22.3.3定制版/g' package/lean/default-settings/files/zzz-default-settings
# sed -i 's/OpenWrt/R5S/g' package/lean/default-settings/files/zzz-default-settings

# 系统信息内添加编译者信息
# sed -i '/<tr><td width="33%"><%:CPU usage (%)%><\/td><td id="cpuusage">-<\/td><\/tr>/a\<tr><td width="33%"><%:Compiler author%><\/td><td>Siriling<\/td><\/tr><\/table>' package/lean/autocore/files/x86/index.htm
# sed -i '/<tr><td width="33%"><%:CPU usage (%)%><\/td><td id="cpuusage">-<\/td><\/tr>/a\<tr><td width="33%"><%:Compiler author%><\/td><td>Siriling<\/td><\/tr><\/table>' package/lean/autocore/files/arm/index.htm

# 给添加的代码添加汉化
# sed -i '$a\\nmsgid "Compiler author"\nmsgstr "编译作者"' feeds/luci/modules/luci-base/po/zh-cn/base.po

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
# sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
# sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
# sed -i 's/"aMule设置"/"电驴下载"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
# sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
# sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
# sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
# sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
# sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
# sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
# sed -i 's/"TTYD 终端"/"命令窗"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
# sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
# sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
# sed -i 's/"Web 管理"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
# sed -i 's/"管理权"/"改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
# sed -i 's/"带宽监控"/"监视"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
