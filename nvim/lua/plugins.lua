-- Auto install packer.nvim if not exists

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Floating terminal
  use { 'voldikss/vim-floaterm' }

  -- Helpful utilies for lua
  use { 'nvim-lua/plenary.nvim' }

  -- Multiline selection
  use { 'mg979/vim-visual-multi' }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }

  use { 'williamboman/nvim-lsp-installer' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Project drawer
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'kyazdani42/nvim-tree.lua' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Vim repeat to enhance . commands
  use { 'tpope/vim-repeat' }

  -- Vim surround to surround things
  use { 'tpope/vim-surround' }

  -- Vim fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Vim sensible for nice defaults
  use { 'tpope/vim-sensible' }

  -- Easymotion like functionality
  -- https://github.com/ggandor/lightspeed.nvim
  use { 'ggandor/lightspeed.nvim' }

  -- Commentary plugin
  use { 'b3nj5m1n/kommentary' }

  -- Navigator plugin that hooks into tmux
  use { 'numToStr/Navigator.nvim' }

  -- Better search
  use { 'haya14busa/incsearch.vim' }

  -- Javascript syntax highlights
  use { 'pangloss/vim-javascript' }
  use { 'maxmellon/vim-jsx-pretty' }

  -- Rails plugins
  use { 'tpope/vim-bundler' }
  use { 'tpope/vim-rails' }
end)
