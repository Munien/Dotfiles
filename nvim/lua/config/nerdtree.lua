local utils = require('utils')

utils.map('n', '<leader>.', "<cmd>NvimTreeToggle<cr>", { silent = true })
utils.map('n', '<leader>/', "<cmd>NvimTreeFindFile<cr>", { silent = true })
utils.map('n', '<leader>r', "<cmd>NvimTreeRefresh<cr>", { silent = true })

require'nvim-tree'.setup {
  respect_buf_cwd = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  git = {
    enable = false
  }
}
