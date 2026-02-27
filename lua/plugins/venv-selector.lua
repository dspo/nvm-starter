return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "mfussenegger/nvim-dap-python",
  },
  opts = {
    settings = {
      search = {
        -- 搜索项目目录下的虚拟环境
        project_venvs = {
          command = "fd -H -I -a -t d -d 2 '^(\\.venv|venv|\\.env|env)$' .",
        },
      },
    },
  },
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
  },
  ft = "python",
}
