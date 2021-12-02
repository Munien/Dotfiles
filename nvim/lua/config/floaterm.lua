local utils = require('utils')

-- General Config

utils.map('n', '<leader>tn', ':FloatermNew<CR>')
utils.map('n', '<leader>tk', ':FloatermKill<CR>')
utils.map('n', '<leader>tt', ':FloatermToggle<CR>')
utils.map('n', '<leader>t[', ':FloatermPrev<CR>')
utils.map('n', '<leader>t]', ':FloatermNext<CR>')
utils.map('t', 'jk', '<C-\\><C-n>')
