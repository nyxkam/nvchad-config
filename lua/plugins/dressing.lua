---@type NvPluginSpec
--NOTE: Dressing Plugin to improve the dafault vim.ui interfaces

return {
  "stevearc/dressing.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = "rcarriga/nvim-notify",
  config = function()
    require("dressing").setup {
      input = {
        enabled = true,
        default_prompt = "➤ ",
        win_options = {
          winblend = 0,
        },
      },
      select = {
        enabled = true,
        backend = { "telescope", "buildtin" },
        buildtin = {
          win_options = {
            winblend = 0,
          },
        },
      },
    }
  end,
}
