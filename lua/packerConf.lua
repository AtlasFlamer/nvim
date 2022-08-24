local packer = require('packer')

packer.startup(function()
    use 'overcache/NeoSolarized'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'

    use 'hoob3rt/lualine.nvim'
    use 'kristijanhusak/defx-git'
    use 'kristijanhusak/defx-icons'
    use ({
      'Shougo/defx.nvim', 
      run = ':UpdateRemotePlugins'
    })
--    use 'neovim/nvim-lspconfig'
--    use 'williamboman/nvim-lsp-installer'
---    use 'tami5/lspsaga.nvim'
---    use 'folke/lsp-colors.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'neoclide/coc.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use ({
      'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate' 
    })
    use 'kyazdani42/nvim-web-devicons'
    use 'onsails/lspkind-nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use ({
      'groenewege/vim-less', 
      ft = {'less'}
    })
end)
