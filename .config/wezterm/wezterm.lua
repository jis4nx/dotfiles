local wezterm = require("wezterm")
local config = wezterm.config_builder()

local function font_with_fallback(name, params)
  local names = { name, "Apple Color Emoji", "azuki_font" }
  return wezterm.font_with_fallback(names, params)
end

local font_name = "JetBrainsMonoNerdFontMono"

-- GPU acceleration
config.front_end = "OpenGL"

-- Theme
config.color_scheme = "Catppuccin Mocha"

-- Font
config.font = font_with_fallback(font_name)
config.font_size = 11
config.line_height = 1.0
config.dpi = 96.0

config.font_rules = {
  {
    italic = true,
    font = font_with_fallback(font_name, { italic = true }),
  },
  {
    italic = false,
    font = font_with_fallback(font_name, { bold = true }),
  },
  {
    intensity = "Bold",
    font = font_with_fallback(font_name, { bold = true }),
  },
}

config.warn_about_missing_glyphs = false

-- Cursor
config.default_cursor_style = "BlinkingUnderline"

-- Keybindings
config.disable_default_key_bindings = true
config.keys = {
  {
    key = [[\]],
    mods = "CTRL|ALT",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
  },
  {
    key = [[\]],
    mods = "CTRL",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
  },
  {
    key = "q",
    mods = "CTRL",
    action = wezterm.action.CloseCurrentPane({ confirm = false }),
  },

  -- Pane navigation
  { key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },

  -- Resize panes
  { key = "h", mods = "CTRL|SHIFT|ALT", action = wezterm.action.AdjustPaneSize({ "Left", 1 }) },
  { key = "l", mods = "CTRL|SHIFT|ALT", action = wezterm.action.AdjustPaneSize({ "Right", 1 }) },
  { key = "k", mods = "CTRL|SHIFT|ALT", action = wezterm.action.AdjustPaneSize({ "Up", 1 }) },
  { key = "j", mods = "CTRL|SHIFT|ALT", action = wezterm.action.AdjustPaneSize({ "Down", 1 }) },

  -- Tabs
  { key = "t", mods = "CTRL", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
  { key = "w", mods = "CTRL", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
  { key = "Tab", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) },
  { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },

  -- Copy mode
  { key = "x", mods = "CTRL", action = wezterm.action.ActivateCopyMode },
  { key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
  { key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("ClipboardAndPrimarySelection") },
}

-- Colors
config.bold_brightens_ansi_colors = true

-- Window padding
config.window_padding = {
  left = 2,
  right = 2,
  top = 3,
  bottom = 2,
}

-- Tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true

-- General
config.automatically_reload_config = true
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }
config.window_background_opacity = 0.7
config.window_close_confirmation = "NeverPrompt"

config.window_frame = {
  active_titlebar_bg = "#45475a",
  font = font_with_fallback(font_name, { bold = true }),
}

return config
