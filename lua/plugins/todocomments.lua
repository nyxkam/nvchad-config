---@type NvPluginSpec
---TODO: Commnets

return {
  "folke/todo-comments.nvim",
  lazy = false,
  cmd = { 'TodoTrouble', 'TodoLocList', 'TodoQuickFix', 'TodoTelescope' },
  config = function()
    require "todo-comments".setup()
  end
}
