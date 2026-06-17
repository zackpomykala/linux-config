-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>fc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", { desc = "Search Neovim Config Files" })
map("n", "<leader>sc", "<cmd>Telescope live_grep cwd=~/.config/nvim<cr>", { desc = "Grep Neovim Config Files" })
