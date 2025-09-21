-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.enable_wayland = false

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font("Fira Code")
config.font_size = 25.0
config.color_scheme = "Catch Me If You Can (terminal.sexy)"

-- window settings
config.enable_tab_bar = false
config.adjust_window_size_when_changing_font_size = false
config.window_background_opacity = 0.95
config.window_padding = {
	left = 1,
	right = 1,
	top = 0,
	bottom = 0,
}

-- Finally, return the configuration to wezterm:
return config
