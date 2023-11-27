vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or, branch = '0.1.x',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({
		'marko-cerovac/material.nvim',
		as = 'material',
		config = function ()
			vim.cmd('colorscheme material')
		end
	})

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
	use('nvim-treesitter/nvim-treesitter-context')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
	use('fatih/vim-go')

	use('eandrju/cellular-automaton.nvim')

  use {
  	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v2.x',
  	requires = {
    		-- LSP Support
    		{'neovim/nvim-lspconfig'},             -- Required
    		{'williamboman/mason.nvim'},           -- Optional
    		{'williamboman/mason-lspconfig.nvim'}, -- Optional

    		-- Autocompletion
    		{'hrsh7th/nvim-cmp'},     -- Required
    		{'hrsh7th/cmp-nvim-lsp'}, -- Required
    		{'L3MON4D3/LuaSnip'},     -- Required
  	}
  }
end)
