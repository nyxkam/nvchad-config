---@type NvPluginSpec
---TODO: ShowKey

return {
  "nvchad/showkeys",
  lazy = false,
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 1,
    maxkeys = 5,
  },
}
