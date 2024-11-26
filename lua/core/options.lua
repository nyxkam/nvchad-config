-- NOTE: Neovim options

require "nvchad.options"

local opt = vim.opt
local o = vim.o
local g = vim.g

o.cursorlineopt = 'both' -- to enable cursorline!
o.wrap = false
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

g.toggle_cmp = true
g.code_action_menu_window_border = 'single'
g.statusStyle = 'blocks' -- fancy, minimal, blocks
