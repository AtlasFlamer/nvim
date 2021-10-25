lua require'settings.nvim_cmp'
lua require ('settings')

so ~/.config/nvim/viml/colorscheme_config.vim
lua require('plugins')

packadd feline.nvim
lua require ('plugins.bar')

filetype plugin on

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

packadd nvim-autopairs
lua require('nvim-autopairs').setup{}
lua require('settings.autopair_rules')

packadd nvim-colorizer.lua
lua require'colorizer'.setup()

packadd nvim-lspconfig
lua require'lspconfig'.ccls.setup{}
lua vim.o.completeopt = 'menuone,noselect'

" nvim-cmp set-up
packadd nvim-cmp
packadd LuaSnip
packadd cmp_luasnip


lua require('settings.markdown-preview')

