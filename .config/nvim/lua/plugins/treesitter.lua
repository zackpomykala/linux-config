return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = false,
      sync_install = false,
      ensure_installed = {
        "bash",
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "python",
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",
        "dockerfile",
      },
    },
  },
}
