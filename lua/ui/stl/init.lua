local M = {}

M.modules = {
  lsp = function()
    local theme = require("nvconfig").ui.statusline.theme
    if theme == "default" then
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
            local icon = "%#St_lsp_icon_default#" .. " "
            local name = client.name
            return (
              "%#St_lsp_sep_default#"
              .. sep_l
              .. icon
              .. "%#St_lsp_text_default#"
              .. " "
              .. name
              .. " "
              .. "%#St_file_sep_default#"
            )
          end
        end
      end
      return ""
    elseif theme == "minimal" then
      local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
      local config = require("nvconfig").ui.statusline
      local sep_style = config.separator_style
      local utils = require "nvchad.stl.utils"

      sep_style = (sep_style ~= "round" and sep_style ~= "block") and "block" or sep_style

      local sep_icons = utils.separators
      local separators = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]

      local sep_l = separators["left"]
      local sep_r = "%#St_sep_r#" .. separators["right"] .. " %#ST_EmptySpace#"

      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_clients()) do
          if client.attached_buffers[stbufnr] then
            local icon = "%#St_lsp_icon_minimal#" .. " "
            local name = client.name
            return ("%#St_lsp_sep_minimal#" .. sep_l .. icon .. "%#St_lsp_text_minimal#" .. " " .. name .. sep_r)
          end
        end
      end
      return ""
    elseif theme == "vscode" then
      local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_clients()) do
          if client.attached_buffers and client.attached_buffers[stbufnr] then
            return (vim.o.columns > 100 and "   LSP ~ " .. client.name .. " ") or "   LSP "
          end
        end
      end

      return ""
    elseif theme == "vscode_colored" then
      local stbufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
      if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_clients()) do
          if client.attached_buffers and client.attached_buffers[stbufnr] then
            local lsp_status = vim.o.columns > 100 and "%#St_Lsp#" .. "   LSP ~ " .. client.name .. " "
                or "%#St_Lsp#" .. "   LSP "
            return lsp_status
          end
        end
      end

      return ""
    else
      return "%f"
    end
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
    local icon = "󰘬 "
    local branch_name = " " .. git_status.head

    if theme == "default" then
      local utils = require "nvchad.stl.utils"
      return "%#St_gitIcons#" .. utils.git()
    elseif theme == "minimal" then
      local sep_style = config.separator_style
      local utils = require "nvchad.stl.utils"

      sep_style = (sep_style ~= "round" and sep_style ~= "block") and "block" or sep_style
      local sep_icons = utils.separators
      local separators = (type(sep_style) == "table" and sep_style) or sep_icons[sep_style]
      local sep_l = separators["left"]
      local sep_r = "%#St_sep_r#" .. separators["right"] .. " %#ST_EmptySpace#"

      return ""
          .. "%#StGitSepMinimal#"
          .. sep_l
          .. "%#StGitIconsMinimal#"
          .. icon
          .. "%#StGitNameMinimal#"
          .. branch_name
          .. "%#StGitSignsAddMinimal#"
          .. added
          .. "%#StGitSignsChangeMinimal#"
          .. changed
          .. "%#StGitSignsDeleteMinimal#"
          .. removed
          .. sep_r
    elseif theme == "vscode_colored" then
      return ""
          .. "%#St_gitIcons#"
          .. icon
          .. branch_name
          .. "%#GitSignsAdd#"
          .. added
          .. "%#GitSignsChange#"
          .. changed
          .. "%#GitSignsDelete#"
          .. removed
    elseif theme == "vscode" then
      return " "
          .. "%#StGitBranchVSCode#"
          .. icon
          .. branch_name
          .. "%#StGitAddedVSCode#"
          .. added
          .. "%#StGitChangedVSCode#"
          .. changed
          .. "%#StGitRemovedVSCode#"
          .. removed
          .. "  "
    else
      return ""
    end
  end,
}

return M
