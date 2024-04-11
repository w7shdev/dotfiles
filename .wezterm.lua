-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.default_prog = { "pwsh" } -- with this it's running powershell 7 on startup
config.color_scheme = "Night Owl (Gogh)"

-- read here <https://wezfurlong.org/wezterm/config/lua/config/win32_system_backdrop.html>
config.window_background_opacity = 0.2
config.win32_system_backdrop = "Acrylic" -- choicses ( Acrylic, Mica, Tabbed)

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
	{
		key = "w",
		mods = "LEADER|CTRL",
		action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }),
	},
	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "l",
		mods = "LEADER",
		action = wezterm.action.SpawnCommandInNewTab({
			args = { "wsl", "~" },
		}),
	},
}

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "JetBrains Mono", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#333333",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#333333",
}

config.colors = {
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = "#575757",
	},
}
-- show the tabs at the bottom ...
-- config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.initial_rows = 38
config.initial_cols = 160


-- and finally, return the configuration to wezterm
return config
