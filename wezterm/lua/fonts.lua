local wezterm = require 'wezterm'

local cfg = {}

-- TODO: If it cant find the font just skip this config option
cfg.font = wezterm.font("SauceCodePro Nerd Font")
cfg.font_size = 17

return cfg
