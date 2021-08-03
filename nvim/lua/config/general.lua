local utils = require('utils')

-- General Config
--

utils.opt('o', 'updatetime', 300)
utils.opt('o', 're', 1)
utils.opt('o', 'signcolumn', 'number')

require('kommentary.config').use_extended_mappings()
