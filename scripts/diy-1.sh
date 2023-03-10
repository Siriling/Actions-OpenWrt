#!/bin/bash
#=================================================
# System Required: Linux
# Version: 1.0
# Lisence: MIT
# Author: SuLingGG
# Blog: https://mlapp.cn
#=================================================

# ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§ð§

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# ä¿®æ¹é»è®¤IPå°å
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# ä¿®æ¹ä¸»æºåå­
sed -i 's/OpenWrt/R5S/g' package/base-files/files/bin/config_generate

# ä¿®æ¹çæ¬å·
# sed -i 's/R22.3.3/R22.3.3å®å¶ç/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/R5S/g' package/lean/default-settings/files/zzz-default-settings

# ç³»ç»ä¿¡æ¯åæ·»å ç¼è¯èä¿¡æ¯
sed -i '/<tr><td width="33%"><%:CPU usage (%)%><\/td><td id="cpuusage">-<\/td><\/tr>/a\<tr><td width="33%"><%:Compiler author%><\/td><td>Siriling<\/td><\/tr><\/table>' package/lean/autocore/files/x86/index.htm
sed -i '/<tr><td width="33%"><%:CPU usage (%)%><\/td><td id="cpuusage">-<\/td><\/tr>/a\<tr><td width="33%"><%:Compiler author%><\/td><td>Siriling<\/td><\/tr><\/table>' package/lean/autocore/files/arm/index.htm

# ç»æ·»å çä»£ç æ·»å æ±å
sed -i '$a\\nmsgid "Compiler author"\nmsgstr "ç¼è¯ä½è"' feeds/luci/modules/luci-base/po/zh-cn/base.po

# ä¿®æ¹æä»¶åå­ï¼ä¿®æ¹åå­åä¸ç¥éä¼ä¸ä¼å¯¹æä»¶åè½æå½±åï¼èªå·±å¤æµè¯ï¼
# sed -i 's/"BaiduPCS Web"/"ç¾åº¦ç½ç"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
# sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BTä¸è½½")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
# sed -i 's/"aMuleè®¾ç½®"/"çµé©´ä¸è½½"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
# sed -i 's/"ç½ç»å­å¨"/"å­å¨"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
# sed -i 's/"ç½ç»å­å¨"/"å­å¨"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
# sed -i 's/"Turbo ACC ç½ç»å é"/"ç½ç»å é"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
# sed -i 's/"Turbo ACC ç½ç»å é"/"ç½ç»å é"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
# sed -i 's/"å®æ¶æµéçæµ"/"æµé"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
# sed -i 's/"KMS æå¡å¨"/"KMSæ¿æ´»"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
# sed -i 's/"TTYD ç»ç«¯"/"å½ä»¤çª"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
# sed -i 's/"USB æå°æå¡å¨"/"æå°æå¡"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
# sed -i 's/"ç½ç»å­å¨"/"å­å¨"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
# sed -i 's/"Web ç®¡ç"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
# sed -i 's/"ç®¡çæ"/"æ¹å¯ç "/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
# sed -i 's/"å¸¦å®½çæ§"/"çè§"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po