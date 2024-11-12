local wezterm = require 'wezterm'
local keybinds = require 'keybinds'

local config = wezterm.config_builder()
config.automatically_reload_config = true

-- theme
config.color_scheme = 'catppuccin-mocha'

-- font
-- fc-list command show fonts (alt: wezterm ls-fonts --list-system)
config.font = wezterm.font_with_fallback {
  "Monaspace Krypton",
  "Symbols Nerd Font Mono",
}
config.font_size = 14.0
config.use_ime = true

-- window and tabs
config.window_background_opacity = 0.85
config.macos_window_background_blur = 8
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local prefix = "🌛💤"
  if tab.is_active then
    prefix = "🔥"
  end
  local title_value = string.match(tab.active_pane.title, "%s(.+)$")
  if title_value == nil then
    title_value = "no title"
  end
  return " " .. prefix .. " " .. title_value .. " "
end)

wezterm.on("format-window-title", function(tab, tabs, panes, config, hover, max_width)
  local title_value = string.match(tab.active_pane.title, "%s(.+)$")
  if title_value == nil then
    title_value = "no title"
  end
  return title_value
end)

config.disable_default_key_bindings = true
config.leader = keybinds.leader
config.keys = keybinds.keys
config.key_tables = keybinds.key_tables

return config
