local utils = require('utils')

utils.map('n', '<leader>sd', ':lua vim.lsp.buf.definition()<CR>')
