local M = {}

-- Verifica si el buffer actual debería ser formateado
M.should_format_buffer = function()
  local buf = vim.api.nvim_get_current_buf()

  for _, client in ipairs(vim.lsp.get_clients()) do
    -- Verifica si el cliente está adjunto al buffer actual y si soporta el formato
    if client.attached_buffers[buf] and client.supports_method("textDocument/formatting") then
      return true
    end
  end
  return false
end

-- Callback para formatear el buffer antes de guardarlo
M.format_on_save = function()
  if M.should_format_buffer() then
    vim.lsp.buf.format()
  end
end

-- Autocomando para formatear antes de guardar
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = M.format_on_save
})

return M
