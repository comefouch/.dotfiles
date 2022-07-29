local filesystem = require("gears.filesystem")
local config_dir = filesystem.get_configuration_dir()
local utils_dir = config_dir .. "utilities/"

return {
	-- Default Applications
	default = {
		-- Default terminal emulator
		terminal = "kitty",
		-- Defalut music client
		music_player = "sh -c \"env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify\"",
		-- Default text editor
		text_editor = "kitty -e nvim",
		-- Default code editor
		code_editor = "code",
		-- Default web browser
		web_browser = "chromium --profile-directory=\"Default\"",
        -- Secondary web browser
        secondary_web_browser = "chromium --profile-directory=\"Profile 1\"",
        -- Tertiary web browser
        tertiary_web_browser = "qutebrowser",
		-- Default file manager
		file_manager = "nemo",
		-- Default network manager
		network_manager = "kitty -e nmtui",
		-- Default bluetooth manager
		bluetooth_manager = "blueman-manager",
		-- Default power manager
		power_manager = "xfce4-power-manager",
		-- Default rofi global menu
		app_launcher = "rofi -no-lazy-grab -show drun -modi drun -theme " .. config_dir .. "configuration/rofi.rasi",
		-- Classic rofi menu
		secondary_app_launcher = "rofi -no-lazy-grab -show run -modi drun -theme " .. config_dir .. "configuration/rofi.rasi",
	},

	-- List of apps to start once on start-up
	run_on_start_up = {
		-- Compositor
		"picom -b --experimental-backends --config " .. config_dir .. "/configuration/picom.conf",
		-- Network Manager applet
		"nm-applet",
		-- Blueman applet
		"blueman-applet",
		-- Music server
		"mpd",
		-- Playertctl support for mpd
		"mpDris2",
		-- Polkit and keyring
		"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &",
        -- Keyboard config
        "setxkbmap -option caps:swapescap"
	},

	-- List of binaries/shell scripts that will execute for a certain task
	utils = {
		-- Fullscreen screenshot
		-- full_screenshot = utils_dir .. "screensht full",
        full_screenshot = "flameshot screen",
		-- Area screenshot
		-- area_screenshot = utils_dir .. "screensht area",
        area_screenshot = "flameshot gui",
		-- Color Picker
		color_picker = utils_dir .. "xcolor-pick",
	},
}
