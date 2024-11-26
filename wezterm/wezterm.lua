local wezterm = require("wezterm")
math.randomseed(os.time())

local config = wezterm.config_builder()

-- config start

config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 4,
}
if wezterm.gui.get_appearance():find("Dark") then
	config.color_scheme = "NvimDark"
	config.window_background_gradient = {
		colors = { string.format("hwb(%f,%f%%,%d%%)", math.random(0, 360), math.random(5, 15), math.random(80, 85)) },
	}
elseif wezterm.gui.get_appearance():find("Light") then
	config.color_scheme = "NvimLight"
	config.window_background_gradient = {
		colors = { string.format("hwb(%f,%f%%,0%%)", math.random(0, 360), math.random(83, 86), math.random(8, 13)) },
	}
else
	config.color_scheme = "Builtin Solarized Dark"
end
-- config.font = wezterm.font("Cascadia Code")
config.font = wezterm.font_with_fallback({
	"Noto Sans Mono",
	"Cascadia Code",
})
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
return config
