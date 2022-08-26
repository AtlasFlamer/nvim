local vim = vim
-- local g = vim.g
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.number = true
vim.wo.colorcolumn = '80'
vim.cmd[[
so ~/.config/nvim/viml/colorscheme_config.vim
filetype plugin on
autocmd SwapExists * let v:swapchoice = "e"
]]
require ('settings/remap')
require ('settings/nvim_cmp')
-- packadd cmp_snip
require('plugins')
require ('plugins.bar')



