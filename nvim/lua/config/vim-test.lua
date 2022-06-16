local wk = require("which-key")

wk.register({
  T = {
    name = "Test Runner",
    n = { "<cmd>TestNearest<cr>", "Test Nearest File" },
    T = { "<cmd>TestFile<cr>", "Test Current File" },
    a = { "<cmd>TestSuite<cr>", "Run Whole Test Suite" },
    g = { "<cmd>TestVisit<cr>", "Opens the last file tested" },
  },
},
{ prefix = "<leader>" })
