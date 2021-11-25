-- Map leader to space
vim.g.mapleader = ' '

-- Key mappings
require('keymappings')

-- Install plugins
require('plugins')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Configurations
require('config')
