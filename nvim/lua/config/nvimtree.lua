local utils = require('utils')

utils.map('n', '<leader>.', ':NvimTreeToggle<CR>')
utils.map('n', '<leader>r', ':NvimTreeRefresh<CR>')

require'nvim-tree'.setup {
  update_cwd = true
}
