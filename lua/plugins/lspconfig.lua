---@type NvPluginSpec
---NOTE: Lspconfig

return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local lspconfig = require "lspconfig"

    -- EXAMPLE
    local servers = {
      "bashls",
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
      "marksman",
      "emmet_ls",
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

    lspconfig.intelephense.setup {
      on_attach = nvlsp.on_attach,
      capabilities = nvlsp.capabilities,
      on_init = nvlsp.on_init,
      cmd = { "intelephense", "--stdio" },
      root_dir = lspconfig.util.root_pattern("composer.json", ".git", "index.php", "public"),
      filetypes = { "php" },
    }

    -- configuring single server, example: typescript
    -- lspconfig.ts_ls.setup {
    --   on_attach = nvlsp.on_attach,
    --   on_init = nvlsp.on_init,
    --   capabilities = nvlsp.capabilities,
    -- }
  end,
}
