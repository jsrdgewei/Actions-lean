#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
git clone https://github.com/tty228/luci-app-serverchan.git package/others/luci-app-serverchan
git clone https://github.com/vernesong/OpenClash.git package/others/OpenClash
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/others/luci-theme-Light
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >> feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
