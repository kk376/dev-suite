local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 12.5

config.window_background_opacity = 0.90
config.macos_window_background_blur = 50
config.window_padding = {
  left = 14,
  right = 14,
  top = 14,
  bottom = 14,
}

config.default_cursor_style = 'BlinkingBeam'
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

return config
