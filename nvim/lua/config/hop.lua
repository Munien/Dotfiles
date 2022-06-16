local utils = require('utils')

-- place this in one of your configuration file(s)
utils.map('n', '<leader>hf', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", { silent = true })
utils.map('n', '<leader>hF', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", { silent = true })
utils.map('o', '<leader>hf', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, inclusive_jump = true })<cr>", { silent = true })
utils.map('o', '<leader>hF', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, inclusive_jump = true })<cr>", { silent = true })
utils.map('', '<leader>ht', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR})<cr>", { silent = true })
utils.map('', '<leader>hT', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR})<cr>", { silent = true })
utils.map('n', '<leader>hw', ':HopWord<CR>', { silent = true })

require'hop'.setup {}
