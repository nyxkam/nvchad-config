-- NOTE: Neovim options

require "nvchad.options"

local opt = vim.opt
local o = vim.o
local g = vim.g

o.cursorlineopt = 'both' -- to enable cursorline!
o.wrap = false

g.toggle_cmp = true
g.code_action_menu_window_border = 'single'
g.statusStyle = 'fancy' -- fancy, minimal, blocks
