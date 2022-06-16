local wk = require("which-key")

wk.register({
  ["<leader><tab>"] = {
    name = "Workspaces", -- optional group name
    n = { "<cmd>tabnew<cr>", "New Tab" },
    f = { "<cmd>Telescope projects<cr>", "Find Projects" },
    k = { "<cmd>tabclose<cr>", "Close Tab" },
    ["1"] = { "<cmd>tabn 1<cr>", "First Tab" },
    ["2"] = { "<cmd>tabn 2<cr>", "Second Tab" },
    ["3"] = { "<cmd>tabn 3<cr>", "Third Tab" },
    ["4"] = { "<cmd>tabn 4<cr>", "Forth Tab" },
    ["5"] = { "<cmd>tabn 5<cr>", "Fifth Tab" },
  },
})

require("project_nvim").setup {}
