local utils = require('utils')

utils.map('n', ';', ':')           -- jk to escape
utils.map('i', 'jk', '<Esc>')           -- jk to escape

utils.map('n', '<leader>ev', ':split $MYVIMRC<CR>')           -- edit vim rc
utils.map('n', '<leader>sv', ':source $MYVIMRC<CR>')           -- source vim rc
utils.map('n', '<cmd>s', ':w')           -- use local changes

-- Git mergetool
utils.map('n', 'gl', '<cmd>diffget //2<CR>')           -- use local changes
utils.map('n', 'gr', '<cmd>diffget //3<CR>')           -- use remote changes
utils.map('v', '<leader>yy', '"+y')           -- Copy to system clipboard

-- Native terminal mappings
utils.map('n', 'ts', '<cmd>split term://fish<CR>')           -- use local changes
utils.map('n', 'tv', '<cmd>vsplit term://fish<CR>')           -- use local changes

-- 
utils.map('', '<leader><Down>', ':resize -1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Up>', ':resize +1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Right>', ':vertical resize -1<CR>', { noremap = true, silent = true })
utils.map('', '<leader><Left>', ':vertical resize +1<CR>', { noremap = true, silent = true })
