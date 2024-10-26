---@type NvPluginSpec
---NOTE: Lspconfig

return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local lspconfig = require "lspconfig"

    -- EXAMPLE
    local servers = {
      'bashls',
      "jdtls",
      "html",
      "pyright",
      "ts_ls",
      "clangd",
      "cssls",
      "omnisharp",
      "texlab",
      "jsonls",
      "lemminx",
      "cmake",
      "tailwindcss",
    }
    local nvlsp = require "nvchad.configs.lspconfig"

    -- lsps with default config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      }
    end

    -- configuring single server, example: typescript
    -- lspconfig.ts_ls.setup {
    --   on_attach = nvlsp.on_attach,
    --   on_init = nvlsp.on_init,
    --   capabilities = nvlsp.capabilities,
    -- }
  end,
}
