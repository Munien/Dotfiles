-- Map leader to space
vim.g.mapleader = ' '

-- Install plugins
require('plugins')

-- Key mappings
require('keymappings')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Configurations
require('config')
