-- Smaller Tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.undofile = true
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

-- Toggle Markdown Preview
vim.api.nvim_set_keymap('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', {} )
vim.api.nvim_set_keymap('i', '<leader>mp', '<Plug>MarkdownPreviewToggle', {} )


