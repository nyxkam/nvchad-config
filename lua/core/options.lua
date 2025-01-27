-- NOTE: Neovim options

require "nvchad.options"

local o = vim.opt

o.wrap = false
o.emoji = true
o.ruler = true
o.history = 1000
o.fillchars = {
  stlnc = " ",
  diff = "░",
  msgsep = "━",
  foldopen = "",
  foldsep = "│",
  foldclose = "",
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "┃",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
  fold = "─",
  eob = " ",
}
