local utils = require('utils')
local wk = require("which-key")

utils.map('n', ';', ':')

-- Window split mappings
wk.register({
  w = {
    name = "Window", -- optional group name
    s = { "<cmd>split<cr>", "Horizintal Split" },
    v = { "<cmd>vsplit<cr>", "Vertical Split" },
    k = { "<cmd>close<cr>", "Close Spllit" },
  },
},
{ prefix = "<leader>" })

-- Buffer mappings
wk.register({
  b = {
    name = "Buffer", -- optional group name
    k = { "<cmd>bdelete!<cr>", "Delete Buffer" },
    K = { "<cmd>%bdelete!<cr>", "Delete All Buffers" },
    i = { "<cmd>Telescope buffers<cr>", "Display All buffers" },
  },
},
{ prefix = "<leader>" })

-- Resizing mappings
utils.map('', '<leader><Down>', ':resize -1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Up>', ':resize +1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Right>', ':vertical resize -1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Left>', ':vertical resize +1<CR>', { noremap = true, silent = true })

-- TODO: Convert to lua
vim.cmd("nnoremap <expr> n 'Nn'[v:searchforward]")
vim.cmd("nnoremap <expr> N 'nN'[v:searchforward]")
