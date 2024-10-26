---@type NvPluginSpec
---NOTE: IA Code Completion Supermaven

return {
  "supermaven-inc/supermaven-nvim",
  lazy = false,
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestions = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = {},
      log_level = "info",
      disable_inline_completion = true,
      disable_keymaps = false,

    })
  end
}
