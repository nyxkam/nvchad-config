require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-a>", "gg<S-v>G", { desc = "select all lines" })
map(
  "n",
  "<leader>gg",
  ":lua  require('nvchad.term').toggle { pos = 'float', id = 'fa', cmd ='lazygit' }<CR>",
  { desc = "lazygit" }
)
map(
  "n",
  "<leader>rg",
  ":lua  require('nvchad.term').toggle { pos = 'float', id = 'fa', cmd ='ranger' }<CR>",
  { desc = "lazygit" }
)
map("n", "<C-b>", ":lua require('core.coderunner').build_run()<CR>", { desc = "Code Runner" })
