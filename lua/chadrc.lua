-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

M.base46 = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  transparency = false,
  integrations = { "rainbowdelimiters" },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.ui = {
  cmp = {
    style = "atom_colored",
    icons_left = false,
    lspkind_text = true,
    format_colors = { tailwind = true },
  },

  telescope = { style = "borderless" },

  statusline = {
    theme = "minimal",
    separator_style = "default",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = require("ui.stl").modules,
  },

  tabufline = {
    enable = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "run", "split", "transparency", "theme_toggle", "close_all" },
    modules = require("ui.buf").modules,
    bufwidth = 21,
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 1,
    height = 0.9,
    border = "rounded",
  },
}

M.lsp = { signature = true }

M.cheatsheet = {
  theme = "grid", --simple/grid
  exclude_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" },
}

M.mason = {
  pkgs = {
    "lua_ls",
    "ts_ls",
    "html",
    "cssls",
    "emmet_ls",
    "pyright",
    "clangd",
    "omnisharp",
  },
  skip = {},
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
