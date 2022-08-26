-- Use <tab> and <s-tab> to navigate through the popup menu
vim.api.nvim_set_keymap("i", '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
vim.api.nvim_set_keymap("i", '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})

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


-- Toggle Markdown Preview
vim.api.nvim_set_keymap('n', '<leader>mp', '<Plug>MarkdownPreviewToggle', {} )
