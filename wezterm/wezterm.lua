local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'

-- Slightly transparent and blurred background
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30

config.font = wezterm.font 'Hack Nerd Font'
config.font_size = 12.5

config.keys = {
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
}

return config
