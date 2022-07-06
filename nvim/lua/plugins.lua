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
  use { 'rose-pine/neovim', as = 'rose-pine', tag = 'v1.*' }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use { 'nvim-telescope/telescope-live-grep-args.nvim' }

  -- Helpful utilies for lua
  use { 'nvim-lua/plenary.nvim' }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
  use { 'ms-jpq/coq.thirdparty', branch = '3p' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'airblade/vim-rooter' }
  use { 'tami5/lspsaga.nvim' }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  -- LSP for flutter/dart
  use {
    'akinsho/flutter-tools.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Lua development
  -- use { 'tjdevries/nlua.nvim' }

  -- Debugging
  use { 'mfussenegger/nvim-dap' }

  -- Git Signs
  use { 'lewis6991/gitsigns.nvim' }

  -- Project drawer
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Bufferline for tabs
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Vim repeat to enhance . commands
  use { 'tpope/vim-repeat' }

  -- Vim surround to surround things
  use { 'tpope/vim-surround' }

  -- Vim lazygit for Git
  use { 'kdheepak/lazygit.nvim' }

  -- Vim sensible for nice defaults
  use { 'tpope/vim-sensible' }

  -- Easymotion like functionality
  use { 'phaazon/hop.nvim' }

  -- Commentary plugin
  use { 'b3nj5m1n/kommentary' }

  -- Better search
  use { 'bronson/vim-visual-star-search' }

  -- Visual
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'folke/zen-mode.nvim' }

  -- Rails plugins
  use { 'tpope/vim-bundler' }
  use { 'tpope/vim-rails' }

  -- QOL Plugins
  use { 'chun-yang/auto-pairs' }
  use { 'windwp/nvim-ts-autotag' }
  use { 'lewis6991/impatient.nvim' }

  -- Projects / Workspaces
  use { "ahmedkhalf/project.nvim" }

  -- Displays a pop with suggestions on keybind
  use { "folke/which-key.nvim" }
  
  -- Wrapper for terminal commands / QOL
  use { 'kassio/neoterm' }

  -- Test runner for vim
  use { 'vim-test/vim-test' }
end)
