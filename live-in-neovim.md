# 🚀 LazyVim 迁移与生存逻辑手册

### 第一层：核心心态 (Mental Model)

* **Normal 模式是“家”**：大部分时间待在这里。按 `Esc` 随时回家。
* **Insert 模式是“工具”**：只在打字时进入。打完立刻按 `Esc`。
* **以“空格”为核心**：所有 IDE 功能都在 `Space` 键后的二级菜单里。

---

### 第二层：LazyVim 菜单体系 (Space Menu)

*记住首字母，即记住功能*

| 快捷键 | 逻辑分类 | 常用操作 |
| :--- | :--- | :--- |
| **`Space f`** | **F**iles (文件) | `ff` 找文件, `fr` 最近文件, `ft` 终端 |
| **`Space c`** | **C**ode (代码) | `ca` 快速修复, `cr` 重命名, `cf` 格式化 |
| **`Space s`** | **S**earch (搜索) | `sg` 全局搜文字, `sn` 通知历史, `sk` 查按键 |
| **`Space g`** | **G**it (版本控制) | `gg` Lazygit 面板, `ghp` 预览改动 |
| **`Space b`** | **B**uffers (页签) | `bd` 关闭当前页, `bp` 上一个页签 |
| **`Space e`** | **E**xplorer | 打开/关闭左侧文件树 |

---

### 第三层：高效编辑语法 (Verb + Noun)

*像说话一样写代码：[动词] + [名词]*

**1. 动词 (Operators)**

* `d` : Delete (删除/剪切)
* `y` : Yank (拷贝)
* `c` : Change (改写：删除并进入插入模式)
* `v` : Visual (选中)

**2. 名词 (Text Objects)**

* `iw` : Inside Word (单词内)
* `i(` : Inside Parenthesis (括号内)
* `i"` : Inside Quote (引号内)
* `ip` : Inside Paragraph (段落内)

**例子：**

* `c i (` : 改写括号里的内容
* `d i p` : 删除整个段落
* `y i w` : 拷贝当前单词

---

### 第四层：紧急脱困 (The Escape Hatch)

*当你感到错乱、卡住或想放弃修改时*

* **`:redraw!`** : 界面缩放错乱时强制刷新。
* **`q`** : 关闭弹出的插件窗口、通知窗口。
* **`:e!`** : 丢弃所有未保存修改，重载当前文件（回到最初）。
* **`:q!`** : 强行退出当前窗口，不保存。
* **`:bd!`** : 强行杀掉当前内存里的文件（Buffer）。
* **`:qa!`** : 强行退出整个 Neovim（救命必杀技）。

---
