# ZeroClaw Run Builder

🚀 **ZeroClaw 的 OpenWrt 构建工具** - 自动化交叉编译和打包解决方案

[![Build](https://github.com/gcy529/zeroclaw-run-builder/actions/workflows/build.yml/badge.svg)](https://github.com/gcy529/zeroclaw-run-builder/actions/workflows/build.yml)
[![Tests](https://github.com/gcy529/zeroclaw-run-builder/actions/workflows/test.yml/badge.svg)](https://github.com/gcy529/zeroclaw-run-builder/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## 📖 项目介绍

**ZeroClaw Run Builder** 是一个专为 OpenWrt 路由器设计的自动化构建工具。

> 📝 **项目声明**：
> - **上游项目**：基于 [breeze303/openwrt-zeroclaw](https://github.com/breeze303/openwrt-zeroclaw)
> - **工作流参考**：学习 [wukongdaily/RunFilesBuilder](https://github.com/wukongdaily/RunFilesBuilder)

### 核心功能

- 🔧 **自动化构建** - 一键交叉编译 ZeroClaw
- 📦 **多架构支持** - x86_64, ARM, MIPS 等
- 🚀 **GitHub Actions** - 自动 CI/CD
- 🏪 **iStoreOS 支持** - 兼容 iStoreOS/ImmortalWrt

---

## 🚀 快速开始

### 安装

```bash
# 从 Releases 下载对应架构的 ipk
wget https://github.com/gcy529/zeroclaw-run-builder/releases/download/v0.1.0/zeroclaw_0.1.0_x86_64.ipk

# 安装到 OpenWrt
opkg install zeroclaw_0.1.0_x86_64.ipk
```

### iStoreOS 安装

1. 打开 iStoreOS Web 界面
2. 进入 `iStore` 应用商店
3. 搜索 "ZeroClaw" 并安装

### ImmortalWrt 安装 iStore 商店

如果你的 ImmortalWrt 固件没有 iStore 商店，可以使用以下命令一键安装：

```bash
wget -qO imm.sh https://cafe.cpolar.top/wkdaily/zero3/raw/branch/main/zero3/imm.sh && chmod +x imm.sh && ./imm.sh
```

安装完成后，刷新页面即可在 LuCI 界面看到 iStore 应用商店。

---

## 🙏 致谢

- [breeze303/openwrt-zeroclaw](https://github.com/breeze303/openwrt-zeroclaw) - 上游 OpenWrt 包定义
- [wukongdaily/RunFilesBuilder](https://github.com/wukongdaily/RunFilesBuilder) - 工作流设计参考
- [OpenWrt](https://openwrt.org/) - 嵌入式 Linux 发行版

---

**许可证**: MIT
