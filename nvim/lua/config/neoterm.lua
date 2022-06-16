local wk = require("which-key")

wk.register({
  t = {
    name = "Terminal",
    n = { "<cmd>Tnew<cr>", "New Terminal" },
    r = { "<cmd>Tredo<cr>", "Repeats Last Command Sent To The Terminal" },
    c = { "<cmd>Tclear!<cr>", "Clears The Terminal" },
    k = { "<cmd>Tkill<cr>", "Kills The Terminal" },
    f = { "<cmd>Tls<cr>", "Lists Neoterm Instances" },
    ["{"] = { "<cmd>Tnext<cr>", "Next Terminal" },
    ["}"] = { "<cmd>Tprev<cr>", "Previous Terminal" },
  },
},
{ prefix = "<leader>" })
