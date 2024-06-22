#!/bin/bash

# 提供选项菜单
echo "请选择要执行的命令:"
echo "1) 执行脚本并使用中国大陆源"
echo "2) 执行脚本并使用海外源"
echo "3) 执行脚本并使用教育网源"
echo "4) 执行脚本并使用Docker一键安装脚本"

# 读取用户输入
read -p "请输入序号: " choice

# 根据用户输入执行相应命令
case $choice in
1)
echo "正在执行使用中国大陆源..."
bash <(curl -sSL https://linuxmirrors.cn/main.sh)
;;
2)
echo "正在执行脚本并使用海外源..."
bash <(curl -sSL https://linuxmirrors.cn/main.sh) --abroad
;;
3)
echo "正在执行脚本并使用教育网源..."
bash <(curl -sSL https://linuxmirrors.cn/main.sh) --edu
;;
4)
echo "正在执行Docker一键安装脚本..."
bash <(curl -sSL https://linuxmirrors.cn/docker.sh)
;;
*)
echo "无效的选择"
;;
esac
