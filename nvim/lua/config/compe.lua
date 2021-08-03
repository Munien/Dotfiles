local utils = require('utils')

local options = { noremap=true, silent=true, expr=true }

utils.map('i', '<C-Space>', 'compe#complete()', options)
utils.map('i', '<CR>', "compe#confirm('<CR>')", options)
utils.map('i', '<C-e>', "compe#close('<C-e>')", options)
utils.map('i', '<C-f>', "compe#scroll({ 'delta': +4 })", options)
utils.map('i', '<C-d>', "compe#scroll({ 'delta': -4 })", options)

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = false;
    ultisnips = false;
    luasnip = false;
  };
}
