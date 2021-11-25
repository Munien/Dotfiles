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
