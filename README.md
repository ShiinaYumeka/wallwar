# 1.21.11战墙数据包

这是一个基于 Minecraft Java 1.21.11版本的高版本战墙数据包

## 📌 简介
- 此数据包从24年底初步开始开发，经过大量测试与修复逐步完善至今
- 其实是自己做着玩的（x）

## 🚀 快速开始
### 安装
```bash
#初始化
function wallwar:scores 
#开始队长分队
function wallwar:system/random_teamup/main/start


```

## 四队地形选择与反向选人

四名队长确认后随机抽取选地顺序，选完地形后按相反顺序选择队员。
详见 [操作、桥接接口及验证说明](docs/terrain-draft.md)。

更新源码后运行 `python tools/package_datapack.py` 同步重建 `wallwar.zip`。
