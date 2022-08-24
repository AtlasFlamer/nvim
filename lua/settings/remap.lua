-- Smaller Tab
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.undofile = true


-- switch between windows easily
vim.api.nvim_set_keymap('n', "<A-j>", ':wincmd j <CR>', {} )
vim.api.nvim_set_keymap('n', "<A-k>", ':wincmd k <CR>', {} )
vim.api.nvim_set_keymap('n', "<A-h>", ':wincmd h <CR>', {} )
vim.api.nvim_set_keymap('n', "<A-l>", ':wincmd l <CR>', {} )

-- Separate words by underscore
vim.opt.iskeyword:remove {"_"}

-- Easier Escape
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {} )

-- Leader key: (Space)
vim.g.mapleader = " "

-- Yank to system clipboard <leader>{y,Y,p,P}
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', {} )
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', {} )
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', {} )
vim.api.nvim_set_keymap('n', '<leader>dd', '"+dd', {} )

-- Not needed
-- vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', {} )

vim.api.nvim_set_keymap('v', '<leader>p', '"+p', {} )
vim.api.nvim_set_keymap('v', '<leader>P', '"+P_', {} )
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', {} )
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', {} )

-- Save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {} )

-- GPD :
vim.api.nvim_set_keymap('n', 'L', ':', {})


-- Toggle Markdown Preview
vim.api.nvim_set_keymap('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', {} )

-- Nerd Tree
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', {} )

vim.api.nvim_set_keymap('n', '<leader><leader><CR>', '<Plug>JupyterExecute', {})
