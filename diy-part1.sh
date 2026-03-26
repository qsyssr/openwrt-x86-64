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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#!/bin/bash
# 添加 Lucky 插件源
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
# 添加 DDNS-go 插件源
# git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
# 添加 OpenClash (如果官方源没有)
git clone --depth=1 -b master https://github.com/vernesong/OpenClash.git package/openclash
# 添加 easytier (如果官方源没有)
git clone https://github.com/EasyTier/luci-app-easytier.git /opt/luci-app-easytier
# 添加 xgp-v3-screen (如果官方源没有)
git clone https://github.com/zzzz0317/xgp-v3-screen
# 添加 kmod-fb-tft-gc9307 (如果官方源没有)
git clone https://github.com/zzzz0317/kmod-fb-tft-gc9307
# 添加 tailscale (如果官方源没有)
git clone https://github.com/asvow/luci-app-tailscale
