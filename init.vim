lua require ('settings')
so ~/.config/nvim/viml/colorscheme_config.vim
lua require('plugins')

packadd feline.nvim
lua require ('plugins.bar')


augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end


