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
	use {'karb94/neoscroll.nvim', event = "CursorMoved",
                config = function()
                    require('neoscroll')
                end
        }

	use {'wbthomason/packer.nvim', opt = true}

	use {'preservim/nerdtree', cmd = {"NERDTreeFocus"},
            opt = true
        }

	use {'kyazdani42/nvim-web-devicons'}

--	use 'ryanoasis/vim-devicons'

	use {
		'famiu/feline.nvim'
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
		'hrsh7th/nvim-cmp',
                config = function()
                    require('settings/nvim_cmp')
                end
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use {'L3MON4D3/LuaSnip', requires = 'friendly-snippets',
                event = "InsertEnter",
                config = function()
                    require('luasnip')
                    require("luasnip.loaders.from_vscode").lazy_load()
                end}
	use {'saadparwaiz1/cmp_luasnip', after = "nvim-cmp"}
        use {'rafamadriz/friendly-snippets', event = "InsertEnter", after = "cmp-buffer"}
        use {'hrsh7th/cmp-buffer', after = {"cmp-nvim-lsp"}}
        use {'hrsh7th/cmp-path', after = {"cmp-nvim-lsp"}}
--        use 'https://git.sr.ht/~henriquehbr/nvim-startup.lua/'
        use {'mfussenegger/nvim-jdtls', ft = {"java"}}
        use {'jubnzv/mdeval.nvim', ft = {"md", "markdown"},
        config = function()
            require'mdeval'.setup({
                require_confirmation = false,
                eval_options = {
                    cpp = {
                        command = {"g++", "-std=c++20", "-O0"},
                        default_header = [[
                        #include <iostream>
                        #include <vector>
                        ]],
                    },
                    python = {
                        command = {"python"},
                    }
                }
            });
        end,
    }
end)


