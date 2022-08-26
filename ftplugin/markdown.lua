vim.cmd[[packadd mdeval.nvim]]
require'mdeval'.setup({
    require_confirmation = false,
    eval_options = {
        cpp = {
            command = {"g++", "-std=c++20", "-O0"},
            default_header = [[
            #include <iostream>
            #include <vector>
            ]],
        },
        python = {
            command = {"python"},
        }
    }
});
vim.g.markdown_fenced_languages = {'python', 'cpp'}

vim.api.nvim_set_keymap('n', '<leader>c', ':MdEval<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cq', ':MdEvalClean<CR>', {})
