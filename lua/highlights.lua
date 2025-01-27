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
  ["@variable.builtin"] = { bold = true },
  ["@variable.parameter"] = { italic = true },
  ["@constant"] = { bold = true },
  ["@constant.builtin"] = { bold = true },
  ["@constant.macro"] = { bold = true },

  ["@parameter"] = { italic = true },
  ["@keyword"] = { italic = true, bold = true },
  ["@keyword.function"] = { italic = true, bold = true },
  ["@keyword.return"] = { italic = true, bold = true },
  ["keyword.operator"] = { bold = true },
  ["@keyword.directive.define"] = { bold = true },

  ["@function"] = { bold = true },
  ["@function.macro"] = { bold = true },
  ["@function.call"] = { bold = true },
  ["@function.method"] = { bold = true },
  ["@function.method.call"] = { bold = true },
  ["@constructor"] = { bold = true },

  ["@tag.attribute"] = { italic = true },
  ["@text.emphasis"] = { italic = true },
  FloatTitle = { fg = "black", bg = "nord_blue" },
  NormalFloat = { bg = "darker_black" },
  FloatBorder = { fg = "darker_black", bg = "darker_black" },
  CursorLineNr = { fg = "blue", bold = true },
  CmpPmenu = { bg = "darker_black" },
  CmpDoc = { bg = "darker_black" },
  St_cwd_sep = { fg = "red", bg = "lightbg" },
  St_cwd_bg = { bg = "red" },
  St_cwd_txt = { fg = "red" },
  St_Pos_sep = { fg = "green" },
  St_Pos_bg = { bg = "green" },
  St_Pos_txt = { fg = "green" },
}

---@type HLTable
M.add = {
  ["@boolean"] = { fg = "purple", bold = true },
  -------------
  --- NOICE ---
  -------------
  NoiceMini = { bg = "darker_black", fg = "white" },
  NoiceCmdlinePopup = { bg = "darker_black", fg = "white" },
  NoiceCmdlinePopupBorder = { bg = "darker_black", fg = "darker_black" },
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

  StGitSepMinimal = { fg = "sun" },
  StGitIconsMinimal = { bg = "sun", fg = "statusline_bg" },
  StGitNameMinimal = { bg = "statusline_bg", fg = "sun" },
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

  St_lsp_sep_minimal = { fg = "purple" },
  St_lsp_icon_minimal = { bg = "purple", fg = "one_bg" },
  St_lsp_text_minimal = { bg = "lightbg", fg = "purple" },
}

return M
