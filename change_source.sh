#!/bin/bash

echo "请选择更新源:"
echo "1) 阿里云"
echo "2) 清华大学"
echo "3) 中国科学技术大学"
read -p "输入数字选择: " choice

case $choice in
    1)
        new_sources="deb http://mirrors.aliyun.com/ubuntu/ noble main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ noble-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ noble-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ noble-security main restricted universe multiverse"
        ;;
    2)
        new_sources="deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-security main restricted universe multiverse"
        ;;
    3)
        new_sources="deb https://mirrors.ustc.edu.cn/ubuntu/ noble main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ noble-security main restricted universe multiverse"
        ;;
    *)
        echo "无效选择"
        exit 1
        ;;
esac

# 备份原始sources.list文件
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

# 替换sources.list内容
echo "$new_sources" | sudo tee /etc/apt/sources.list

# 更新APT缓存
sudo apt update

echo "更新源已切换并缓存更新完毕。"
