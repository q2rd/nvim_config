-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  statusline = {
    theme = "vscode_colored",
  },
  --   hl_override = {
  --     Comment = { italic = true },
  --     ["@comment"] = { italic = true },
  --     DiffChange = {
  --       bg = "#464414",
  --       fg = "none",
  --     },
  --     DiffAdd = {
  --       bg = "#103507",
  --       fg = "none",
  --     },
  --     DiffRemoved = {
  --       bg = "#461414",
  --       fg = "none",
  --     },
  --   },
  -- }

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}
local nvim_tree = require "nvim-tree"

nvim_tree.setup {
  git = {
    enable = true, -- Использовать Git для файлового менеджера
    ignore = false, -- Отключить игнорирование файлов по правилам .gitignore
  },
  filters = {
    dotfiles = false, -- Показывать скрытые файлы
  },
  view = {
    side = "left", -- Размещение файлового менеджера (слева)
    width = 30, -- Ширина файлового менеджера
  },
}

return M
