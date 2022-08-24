vim.cmd[[
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" CR
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

]]
-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing message exxtra message when using completion
vim.o.shortmess = vim.o.shortmess .. "c"

-- Chain completion list.
vim.g.completion_chain_complete_list = {
    default = {
        default = {
            { complete_items = {
                'lsp',
                'snippet'
            }},
            { mode = '<c-p>'},
            { mode = '<c-n>'}
        },
        comment = {},
        string = { { complete_items = { 'path'}}}
    }
}




-- GPD :
vim.api.nvim_set_keymap('n', 'L', ':', {})


-- Leader key: (Space)
vim.g.mapleader = " "

-- Fast save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {} )


-- Nerd Tree
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFocus<CR>', {} )


-- Toggle Markdown Preview
vim.api.nvim_set_keymap('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', {} )

