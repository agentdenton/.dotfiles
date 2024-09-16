-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- don't auto commenting new lines
autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})

-- set indentation to 4 spaces
augroup("setIndent4", { clear = true })
autocmd("Filetype", {
  group = "setIndent4",
  pattern = { "python", "rust" },
  command = "set softtabstop=4 shiftwidth=4 tabstop=4",
})

-- set indentation to 2 spaces
augroup("setIndent2", { clear = true })
autocmd("Filetype", {
  group = "setIndent2",
  pattern = { "lua", "cpp", "c" },
  command = "set softtabstop=2 shiftwidth=2 tabstop=2",
})