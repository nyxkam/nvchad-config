-- NOTE: NvChad Related Highlights
-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  ["@comment"] = { italic = true },
  FloatTitle = { fg = "black", bg = "nord_blue" },
  NormalFloat = { bg = "darker_black" },
  FloatBorder = { fg = "nord_blue" },
  CursorLineNr = { fg = "blue", bold = true },
  St_cwd_text = { fg = "red", bg = "lightbg" },
}

---@type HLTable
M.add = {
  -------------
  --- NOICE ---
  -------------
  NoiceMini = { bg = "darker_black", fg = "white" },
  NoiceCmdlinePopup = { bg = "darker_black", fg = "white" },
  NoiceCmdlinePopupBorder = { bg = "NONE", fg = "darker_black" },
  NoiceCmdlinePopupBorderSearch = { link = "NoiceCmdlinePopupBorder" },
  NoiceCmdlinePopupTitle = { bg = "darker_black", fg = "red", bold = true },
  NoiceCmdlinePopupTitleCmdline = { bg = "nord_blue", fg = "darker_black", bold = true },
  NoiceCmdlinePopupTitleHelp = { bg = "red", fg = "darker_black", bold = true },
  NoiceCmdlinePopupTitleSearch = { bg = "sun", fg = "darker_black", bold = true },
  NoiceCmdlinePopupTitleFilter = { bg = "baby_pink", fg = "darker_black", bold = true },
  NoiceLspProgressSpinner = { fg = "white" },

  ----------------
  --- BUFFERLN ---
  ----------------
  BuffLineToggleTheme = { bg = { "sun", "black2", 90 }, fg = "sun" },
  BuffLineCloseButton = { bg = "red", fg = "black2" },
  BuffLineRun = { bg = { "pink", "black2", 90 }, fg = "pink" },
  BuffLineSplit = { bg = { "teal", "black2", 90 }, fg = "teal" },
  BufflineTrans = { bg = { "cyan", "black2", 90 }, fg = "cyan" },

  ----------------
  --- STATUSLN ---
  ----------------
  StGitIcons = { bg = "statusline_bg", fg = "cyan" },
  StGitName = { bg = "statusline_bg", fg = "cyan" },
  StGitSignsAdd = { bg = "statusline_bg", fg = "green" },
  StGitSignsChange = { bg = "statusline_bg", fg = "sun" },
  StGitSignsDelete = { bg = "statusline_bg", fg = "red" },

  StGitSepMinimal = { fg = "cyan" },
  StGitIconsMinimal = { bg = "cyan", fg = "statusline_bg" },
  StGitNameMinimal = { bg = "statusline_bg", fg = "cyan" },
  StGitSignsAddMinimal = { bg = "statusline_bg", fg = "green" },
  StGitSignsChangeMinimal = { bg = "statusline_bg", fg = "sun" },
  StGitSignsDeleteMinimal = { bg = "statusline_bg", fg = "red" },

  ST_GitIcon = { bg = "black", fg = "cyan" },
  ST_GitSignsAdd = { bg = "black", fg = "green" },
  ST_GitSignsChange = { bg = "black", fg = "sun" },
  ST_GitSignsDelete = { bg = "black", fg = "red" },

  St_lsp_sep_default = { fg = "sun" },
  St_lsp_icon_default = { bg = "sun", fg = "one_bg" },
  St_lsp_text_default = { bg = "lightbg", fg = "sun" },

  St_lsp_sep_minimal = { fg = "green" },
  St_lsp_icon_minimal = { bg = "green", fg = "one_bg" },
  St_lsp_text_minimal = { bg = "lightbg", fg = "green" },
}

return M
