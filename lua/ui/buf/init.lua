local M = {}

M.modules = {
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
}

return M
