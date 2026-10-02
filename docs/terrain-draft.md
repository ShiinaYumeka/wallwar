# 四队队长选地形

## 原生使用

运行 Minecraft Java 1.21.11，启用这份数据包，按原有方式初始化 `wallwar:scores`。在等待阶段设置四队常规模式，再运行：

```mcfunction
scoreboard players set Teams time 4
scoreboard players set #BOSS_MODE time 0
function wallwar:system/random_teamup/main/start
```

必须至少有四名可用队长。旁观队 `sp` 不参与；`no_leader` 玩家不参加随机抽取。不要直接调用递归内部函数 `main/get_leader` 作为入口。

1. 抽取四名队长，但不自动分配地形；其余玩家和队长均先进入 `waiting`。
2. 四人点击聊天中的确认按钮，或各自执行 `/trigger ww_ready set 1`。
3. 全部确认后随机生成唯一的选地顺序 1、2、3、4。当前队长点击未占用的颜色地形，或执行 `/trigger ww_terrain set <编号>`。
4. 地形编号：红 4（东南）、黄 3（西南）、蓝 1（东北）、绿 2（西北）。选中地形即绑定对应队伍，实际地图不搬动。
5. 选四块地形后发放原有队员选择器；每轮按 **4 → 3 → 2 → 1** 选队员，不按队伍颜色排序，不采用蛇形顺序。攻击待选队员并右键确认。
6. 选完最后一名队员立即完成；只有四名队长时，第四次选地后直接完成。

2/3 队和 Boss 模式沿用原有流程。中途取消可由管理员执行 `function wallwar:system/random_teamup/terrain/cancel`。成员离线或数据包重载会取消未完成的分队，避免跳过本人确认、自动代选或卡在不存在的队长上。

## 插件桥接接口

- 调用方先调用 `terrain/cancel`，然后只给本局玩家设置 `ww_participant`。可给最多四名本局成员设置 `ww_seed`，覆盖本次 `no_leader` 抽选资格但不删除偏好，之后调用 `terrain/start`。
- `terrain/api` 将 `#ww_draft_api time` 设置为 1。`load` 增加三个独立目标，不重置现有比赛计分项。
- `#ww_phase time`：0 未开始/取消、1 确认、2 选地、3 选人、4 完成；`#ww_complete time` 为完成标记。
- `ww_order` 是队长的选地顺序；`ww_ready`、`ww_terrain` 是有限开放的 trigger。只有当前队长的地形 trigger 有效。
- `ww_captain`、`ww_confirmed`、`ww_turn`、`ww_ranked` 和 `ww_participant` 为本轮标签；原有 `leader`、`choosing`、`chose` 继续用于队员选择器。
- 插件只读回数据包结果，不能另建第二套随机次序。队长转让时继承 `ww_order` 和本轮队长标签。

选地阶段禁止调用队员确认；攻击选择要求真实的当前队长攻击来源。无攻击者不会沿用上一条命令残留的 `#temp tid`。无效攻击也先撤销选择 advancement，使后续有效攻击仍能触发。

## 打包与验证

`python tools/package_datapack.py` 从当前 `data/` 和 `pack.mcmeta` 确定性生成根目录 `wallwar.zip`；ZIP 根目录直接包含 `pack.mcmeta` 和 `data`，没有额外套目录。不要使用旧归档覆盖这次函数改动。

配套 WarwallTool 1.3.0 使用独立 Paper 1.21.11 build 132、10 名服务端虚拟玩家执行 76 项检查通过；插件自身 185 项单元测试通过。覆盖随机顺序、反向选人、4 人直接完成、指定队长、重入/越权、队长转让、原生攻击选择函数、重载/离线取消和 2/3 队兼容。

该测试完整解析数据包，但禁用自动战斗 tick，仅调用受测函数；并未验证真实客户端画面、网络右键事件和整场战斗。PR 不自动部署生产服或合并上游。
