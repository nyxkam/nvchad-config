---@type NvPluginSpec
---NOTE: Code Snap capture image to Code

return {
  'mistricky/codesnap.nvim',
  build = 'make',
  opts = {
    save_path = "~/Pictures/",
    mac_window_bar = true,
    title = "CodeSnap",
    code_font_family = "JetBrainsMono Nerd Font",
    watermark_font_family = "Pacifico",
    watermark = "Adevlex",
    bg_theme = "summer",
    breadcrumbs_separator = "/",
    has_line_number = true,
  }
}
