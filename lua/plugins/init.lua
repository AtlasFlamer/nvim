vim.cmd 'packadd packer.nvim'

local packer = require('packer')
local util = require('packer.util')

packer.startup(function()
	use {
		'tikhomirov/vim-glsl',
		opt = true,
		ft = 'glsl'
	}
	use 'karb94/neoscroll.nvim'
	use 'untitled-ai/jupyter_ascending.vim'
	use 'soywod/iris.vim'
	use {'wbthomason/packer.nvim'}
	use {
		'glacambre/firenvim',
			run = function() vim.fn['firenvim#install'](0) end

	}
	use {
		'junegunn/fzf'
	}
	use {
		'junegunn/fzf.vim'
	}
	use {'kyazdani42/nvim-web-devicons', cond = nightly}
	use 'lewis6991/gitsigns.nvim'
	use 'ryanoasis/vim-devicons'
	use 'preservim/nerdtree'
	use {
		'famiu/feline.nvim',
		after = {
			'nvim-web-devicons',
			'gitsigns.nvim',
		}
	}
	use  'mangeshrex/uwu.vim'
	use 'windwp/nvim-autopairs'
	use {
		'plasticboy/vim-markdown',
		ft = {'md', 'markdown'},
		config = function ()
			-- Disable folding
			vim.g.vim_markdown_folding_disabled = 1
			-- Enable conceal
			vim.g.vim_markdown_conceal = 1
			-- Enable Math
			vim.g.vim_markdown_math = 1
			-- Striketrough using two tildes
			vim.g.vim_markdown_strikethrough = 1
			-- Enable TOC Autofit
			vim.g.vim_markdown_toc_autofit = 1
		end
	}
	use 'norcalli/nvim-colorizer.lua'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate"
	}

	use {
		'iamcco/markdown-preview.nvim',
		run = "cd app && yarn install",
		ft = {'md', 'markdown'}
	}
	use {
		'neovim/nvim-lspconfig'
	}
	use {
		'hrsh7th/nvim-cmp'
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
end)

