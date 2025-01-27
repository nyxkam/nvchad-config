local M = {}

M.build_run = function()
  local ft_cmds = {
    python = "python3 " .. vim.fn.expand "%",
    cpp = "clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out",
    c = "clear && gcc -o out " .. vim.fn.expand "%" .. " && ./out",
    html = "live-server .",
    javascript = "node " .. vim.fn.expand "%",
    typescript = "node " .. vim.fn.expand "%",
    rust = "rustc " .. vim.fn.expand "%" .. " && ./out",
    go = "go run " .. vim.fn.expand "%",
    java = "javac " .. vim.fn.expand "%" .. " && java " .. vim.fn.expand "%:r",
    lua = "lua " .. vim.fn.expand "%",
    cs = "dotnet run " .. vim.fn.expand "%",
  }

  local ft = vim.bo.filetype

  local cmd = ft_cmds[ft]
  if not cmd then
    vim.notify("No build command configured for filetype: " .. ft, vim.log.levels.ERROR)
    return
  end

  require("nvchad.term").runner {
    id = "build",
    pos = "sp",
    cmd = cmd,
  }
end

return M
