#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#!/bin/bash

# 1. 清理可能存在的重复包 (防止编译因同名包冲突失败)
rm -rf feeds/luci/applications/luci-app-lucky
rm -rf feeds/luci/applications/luci-app-openclash

# 3. 克隆插件到 package 目录 (确保路径正确)
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone --depth=1 -b master https://github.com/vernesong/OpenClash.git package/openclash
git clone https://github.com/EasyTier/luci-app-easytier.git package/luci-app-easytier
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# 4. 克隆屏幕驱动和相关工具 (移动到 package 目录下)
git clone https://github.com/zzzz0317/xgp-v3-screen package/xgp-v3-screen
git clone https://github.com/zzzz0317/kmod-fb-tft-gc9307 package/kmod-fb-tft-gc9307
