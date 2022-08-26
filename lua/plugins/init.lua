vim.cmd 'packadd packer.nvim'

local packer = require('packer')
-- local util = require('packer.util') hmm not used?

packer.startup(function(use)

        use("nathom/filetype.nvim")
        use 'rakr/vim-two-firewatch'
        use {'udalov/kotlin-vim', ft = {"kotlin"}}
	use({
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup({
				-- overwrite default configuration
				-- here, e.g. to enable default bindings
				copy_sync = {
					-- enables copy sync and overwrites all register actions to
					-- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
					enable = true,
				},
				resize = {
					-- enables default keybindings (A-hjkl) for normal mode
					enable_default_keybindings = true,
				}
			})
		end
	})

	use {
		'tikhomirov/vim-glsl',
		opt = true,
		ft = 'glsl'
	}
	use {'karb94/neoscroll.nvim'
        }

	use {'wbthomason/packer.nvim', opt = true}

	use {'preservim/nerdtree', cmd = {"NERDTreeFocus"},
            opt = true
        }

	use {'kyazdani42/nvim-web-devicons'}

--	use 'ryanoasis/vim-devicons'

	use {
		'famiu/feline.nvim', after  = {'nvim-web-devicons'}
	}
	use {'windwp/nvim-autopairs',
                config = function()
                    require('nvim-autopairs').setup{}
                end
                    }

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

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
                config = function()
                    require'nvim-treesitter.configs'.setup {
                        highlight = {
                            enable = true,
                            disable = {},
                        },
                        indent = {
                            enable = false,
                            disable = {},
                        }
                    }
                end
	}

	use {
		'iamcco/markdown-preview.nvim',
		run = "cd app && yarn install",
		ft = {'md', 'markdown'},
                config = function()
                    require('settings.markdown-preview')
                end
	}
	use {
		'neovim/nvim-lspconfig',
                config = function()
                    require'settings.lspconfig'
                end,
                alias = 'nvim-lspconfig'

	}
	use {
		'hrsh7th/nvim-cmp'
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
        use 'rafamadriz/friendly-snippets'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
--        use 'https://git.sr.ht/~henriquehbr/nvim-startup.lua/'
        use 'mfussenegger/nvim-jdtls'
        use {'jubnzv/mdeval.nvim', ft = {"md", "markdown"}}
end)


