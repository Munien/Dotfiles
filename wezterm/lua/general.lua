local cfg = {}

cfg.warn_about_missing_glyphs = false
cfg.window_background_opacity = 1.0

cfg.color_scheme = "Ayu Mirage"
-- cfg.color_scheme = "Batman"
-- cfg.color_scheme = "Dracula+"
-- cfg.color_scheme = "MaterialDarker"
-- cfg.color_scheme = "Overnight Slumber"
-- cfg.color_scheme = "Tinacious Design (Dark)"
-- cfg.color_scheme = "Tomorrow Night Eighties"

-- TODO: Find path to fish shell dynamically
cfg.default_prog = {"/opt/homebrew/bin/fish", "-l"}

return cfg
