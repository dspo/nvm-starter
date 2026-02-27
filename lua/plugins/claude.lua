-- Claude Code 环境变量配置
-- 覆盖 claudecode.nvim 的默认配置，通过 zsh -ic 加载 ~/.zshrc 中的环境变量

return {
  {
    "coder/claudecode.nvim",
    opts = {
      -- 使用 zsh -ic 启动，加载 ~/.zshrc 中定义的 claude 函数和环境变量
      terminal_cmd = "zsh -ic claude",
      terminal = {
        split_side = "right",
        split_width_percentage = 0.40,
      },
    },
  },
}
