-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}
local highlights = require "highlights"

M.base46 = {
  theme = "onenord",
  theme_toggle = { "onenord", "one_light" },
  transparency = false,
  integrations = { "rainbowdelimiters" },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.ui = {
  cmp = {
    style = "atom_colored",
    icons_left = true,
    lspkind_text = true,
    format_colors = { tailwind = true },
  },

  telescope = { style = "borderless" },

  statusline = {
    theme = "default",
    separator_style = "default",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
    modules = {
      lsp = function()
        local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
        local config = require("nvconfig").ui.statusline
        local sep_style = config.separator_style
        local utils = require "nvchad.stl.utils"

        local sep_icons = utils.separators
        local separators = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]

        local sep_l = separators["left"]

        if rawget(vim, "lsp") then
          for _, client in ipairs(vim.lsp.get_clients()) do
            if client.attached_buffers[stbufnr] then
              local icon = "%#St_lsp_icon#" .. "  "
              local name = client.name
              return ("%#St_lsp_sep#" .. sep_l .. icon .. "%#St_lsp_text#" .. " " .. name .. " " .. "%#St_file_sep#")
            end
          end
        end
        return ""
      end,

      cursor = function()
        local config = require("nvconfig").ui.statusline
        local sep_style = config.separator_style
        local utils = require "nvchad.stl.utils"

        local sep_icons = utils.separators
        local separators = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]

        local sep_l = separators["left"]
        return "%#St_pos_sep#" .. sep_l .. "%#St_pos_icon# %#St_pos_text# %p%% "
      end,

      git = function()
        local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
        if not vim.b[stbufnr].gitsigns_head or not vim.b[stbufnr].gitsigns_status_dict then
          return ""
        end

        local config = require("nvconfig").ui.statusline
        local theme = config.theme
        local git_status = vim.b[stbufnr].gitsigns_status_dict
        local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
        local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
        local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
        local branch_name = "  " .. git_status.head

        if theme == "default" then
          return " "
            .. "%#StGitIcons#"
            .. branch_name
            .. "%#StGitSignsAdd#"
            .. added
            .. "%#StGitSignsChange#"
            .. changed
            .. "%#StGitSignsDelete#"
            .. removed
        elseif theme == "minimal" or "vscode" or "vscode_colored" then
          return " "
            .. "%#ST_GitIcon#"
            .. branch_name
            .. "%#ST_GitSignsAdd#"
            .. added
            .. "%#ST_GitSignsChange#"
            .. changed
            .. "%#ST_GitSignsDelete#"
            .. removed
        else
          return ""
        end
      end,
    },
  },

  tabufline = {
    enable = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "run", "split", "transparency", "theme_toggle", "close_all" },
    modules = {
      split = function()
        local split = "%#BuffLineSplit# %@Split@" .. "  "
        vim.cmd "function! Split(a,b,c,d) \n vsplit \n endfunction"
        return split
      end,

      run = function()
        local run = "%#BuffLineRun# %@Run@" .. "  "
        if vim.bo.filetype == "html" then
          run = "%#BuffLineRun# %@Run@" .. "󰀂  "
        end
        vim.cmd "function! Run(a,b,c,d) \n lua require('core.coderunner').build_run() \n endfunction"
        return run
      end,

      transparency = function()
        local transparency = "%#BufflineTrans# %@ToggleTrans@" .. "󱡓  "
        vim.cmd "function! ToggleTrans(a,b,c,d) \n lua require('base46').toggle_transparency() \n endfunction"
        return transparency
      end,

      theme_toggle = function()
        local themebutton = "%#BuffLineToggleTheme# %@ToggleTheme@" .. "󱥚  "
        vim.cmd "function! ToggleTheme(a,b,c,d) \n lua require('nvchad.themes').open() \n endfunction"
        return themebutton
      end,

      close_all = function()
        local closebutton = "%#BufflineCloseButton# %@CloseAll@" .. "󰅗 "
        vim.cmd "function! CloseAll(a,b,c,d) \n q \n endfunction"
        return closebutton
      end,
    },
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

M.mason = { pkgs = {}, skip = {} }

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
