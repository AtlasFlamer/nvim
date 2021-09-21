so ~/.config/nvim/viml/colorscheme_config.vim

lua require('plugin')

packadd feline.nvim
packadd uwu.vim
lua require ('plugins.bar')
colorscheme uwu


augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
