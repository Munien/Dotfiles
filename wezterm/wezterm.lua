local keybindings = require 'lua/keybindings'
local helper = require 'lua/helpers'.helper

--- Misc Config
local cfg_general = require 'lua/general'

--- Font Config
local cfg_fonts = require 'lua/fonts'

--- Keybind Config
local cfg_keybindings = require 'lua/keybindings'

--- Combined Config
local config = helper.combine_config(
  cfg_general,
  cfg_fonts,
  cfg_keybindings,
  {}
)

return config
