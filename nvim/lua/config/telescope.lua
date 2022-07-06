local utils = require('utils')
local telescope = require("telescope")
local wk = require("which-key")

telescope.load_extension("projects")
telescope.load_extension("fzf")
telescope.load_extension("live_grep_args")
telescope.load_extension("flutter")

wk.register({
  f = {
    name = "Telescope", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false },
    g = { "<cmd>Telescope live_grep_args<cr>", "Live Grep" },
    h = { "<cmd>Telescope help_tags<cr>", "Show Help Tags" },
    F = { "<cmd>lua require('telescope').extensions.flutter.commands()<cr>", "Show Flutter Commands" },
  },
},
{ prefix = "<leader>" })
