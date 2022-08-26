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
-- packadd cmp_snip
require('plugins')
require ('plugins.bar')
local cmp = require('cmp')
local select_opts = {behabior = cmp.SelectBehavior.Select}

local maps = {
    ["<Tab>"] = cmp.mapping(function(fallback)
        local col = vim.fn.col('.') - 1
        if cmp.visible() then
            cmp.select_next_item(select_opts)
        elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
            fallback()
        else
            cmp.complete()
        end

        end, {'i', 's'}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
        local col = vim.fn.col('.') - 1
        if cmp.visible() then
            cmp.select_prev_item(select_opts)
        elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
            fallback()
        else
            cmp.complete()
        end

        end, {'i', 's'}),

         ['<CR>'] = cmp.mapping.confirm({select = true}),
         ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
         ['<Down>'] = cmp.mapping.select_next_item(select_opts),

         ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
         ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
         ['<C-u>'] = cmp.mapping.scroll_docs(-4),
         ['<C-f>'] = cmp.mapping.scroll_docs(4),
}



cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = "luasnip"},
        {name = "buffer"},
        {name = "path"}
    },
    mapping = maps
})

require('luasnip')
require("luasnip.loaders.from_vscode").lazy_load()


