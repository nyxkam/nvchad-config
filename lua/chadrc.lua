-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },
  transparency = false,
  integrations = { "rainbowdelimiters" },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  hl_add = {
    ---NOTE: BUFERLINE
    BufflineBufOnActive = { fg = "white", bg = "black" },
    BufflineBufOnInactive = { fg = "light_grey", bg = "lightbg" },
    BufflineBufOnModified = { fg = "blue", bg = "black" },
    BuffLineBufOffModified = { fg = "blue", bg = "lightbg" },
    BufflineBufOnClose = { fg = "red", bg = "black" },
    BuffLineBufOffClose = { fg = "red", bg = "lightbg" },

    BuffLineTree = { bg = "black", fg = "white" },
    BuffLineEmpty = { bg = "black", fg = "white" },
    BuffLineEmptyColor = { bg = "lightbg", fg = "white" },
    BuffLineToggleThemeButton = { bg = "black", fg = "sun" },
    BuffLineCloseButton = { bg = "red", fg = "black" },
    BuffLineRun = { bg = "black", fg = "pink" },
    BuffLineSplit = { bg = "black", fg = "teal" },
    BufflineTrans = { bg = "black", fg = "white" },

    ---NOTE: STATUSLINE
    StalineFolderIcon = { bg = "red", fg = "black" },
    StalineFolderSep = { bg = "black", fg = "red" },
    StalineFolderText = { bg = "one_bg", fg = "red" },
    StalineFolderTextMinimal = { bg = "black", fg = "white" },

    StalineFilename = { bg = "black", fg = "white" },
    StalineFilenameMinimal = { bg = "black", fg = "white" },
    StalineFilenameFancy = { bg = "lightbg", fg = "white" },
    StalineFilenameSep = { fg = "black", bg = "black" },
    StalineLogo = { bg = "black", fg = "blue" },

    StalineProgress = { bg = "black", fg = "green" },
    StalineProgressMinimal = { bg = "lightbg", fg = "white" },
    StalineModeMinimal = { bg = "lightbg", fg = "white" },
    StalineProgressSep = { bg = "grey", fg = "green" },
    StalineProgressIcon = { bg = "green", fg = "grey" },

    StalineBranch = { bg = "black", fg = "white" },
    StalineModeSepTwo = { bg = "lightbg", fg = "grey" },
    StalineNormalMode = { bg = "nord_blue", fg = "black" },
    StalineVisualMode = { bg = "yellow", fg = "black" },
    StalineCommandMode = { bg = "orange", fg = "black" },
    StalineInsertMode = { bg = "green", fg = "black" },
    StalineTerminalMode = { bg = "purple", fg = "black" },
    StalineNTerminalMode = { bg = "purple", fg = "black" },
    StalineConfirmMode = { bg = "cyan", fg = "black" },

    StalineNormalModeSep = { fg = "nord_blue", bg = "grey" },
    StalineVisualModeSep = { fg = "yellow", bg = "grey" },
    StalineCommandModeSep = { fg = "orange", bg = "grey" },
    StalineInsertModeSep = { fg = "green", bg = "grey" },
    StalineTerminalModeSep = { fg = "purple", bg = "grey" },
    StalineNTerminalModeSep = { fg = "grey_fg", bg = "grey" },
    StalineConfirmModeSep = { fg = "cyan", bg = "grey" },

    StalineEmptySpace = { bg = "black", fg = "grey_fg2" },
    StalineSep = { bg = "black", fg = "lightbg" },
    StalineNix = { bg = "black", fg = "blue" },

    StalineLspError = { bg = "black", fg = "red" },
    StalineLspInfo = { bg = "black", fg = "blue" },
    StalineLspHints = { bg = "black", fg = "cyan" },
    StalineLspWarning = { bg = "black", fg = "yellow" },

    StalineLspErrorIcon = { bg = "black", fg = "red" },
    StalineLspInfoIcon = { bg = "black", fg = "blue" },
    StalineLspHintsIcon = { bg = "black", fg = "cyan" },
    StalineLspWarningIcon = { bg = "black", fg = "yellow" },

    StalineLspNameNormal = { bg = "one_bg", fg = "purple" },
    StalineLspName = { bg = "one_bg", fg = "purple" },
    StalineLspNameMinimal = { bg = "black", fg = "white" },
    StalineLspIcon = { bg = "purple", fg = "black" },

    StalineDiffAdd = { bg = "black", fg = "green" },
    StalineDiffAddFancy = { bg = "black", fg = "green" },
    StalineDiffAddMinimal = { bg = "black", fg = "lightbg" },
    StalineDiffChange = { bg = "black", fg = "yellow" },
    StalineDiffChangeFancy = { bg = "black", fg = "yellow" },
    StalineDiffChangeMinimal = { bg = "black", fg = "yellow" },
    StalineDiffRemoveFancy = { bg = "black", fg = "red" },
    StalineDiffRemoveMinimal = { bg = "black", fg = "lightbg" },
    StalineDiffRemove = { bg = "black", fg = "red" },

    StalineDefaultFile = { bg = "black", fg = "white" },
  },
}

M.ui = {
  cmp = {
    style = "atom_colored",
    format_colors = { tailwind = true }
  },
  telescope = { style = "borderless" }
}

M.nvdash = {
  load_on_startup = true,
}

return M
