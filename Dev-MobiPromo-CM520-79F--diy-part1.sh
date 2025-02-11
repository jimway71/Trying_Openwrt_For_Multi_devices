#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: Dev-MobiPromo-CM520-79F--diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add a feed source
# src-git helloworld https://github.com/fw876/helloworld
# src-git kenzo https://github.com/kenzok8/openwrt-packages
# src-git small https://github.com/kenzok8/small
# X sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# X sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# X sed -i 'src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
# sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default
# sed -i '$a src-git cups https://github.com/TheMMcOfficial/lede-cups.git' feeds.conf.default
# X sed -i '$a src-git cups https://github.com/Gr4ffy/lede-cups.git' feeds.conf.default

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git
# X rm -rf package/lean/luci-theme-argon/
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
# X git clone -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

#添加额外软件包
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
# X git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash


# ssr plus
# svn co https://github.com/fw876/helloworld/trunk/tcping package/tcping
# svn co https://github.com/fw876/helloworld/trunk/xray-core package/xray-core
# svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/xray-plugin
# svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
# svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
# svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
# svn co https://github.com/fw876/helloworld/trunk/v2ray-core package/v2ray-core
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus

echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
