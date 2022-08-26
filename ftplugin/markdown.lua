vim.cmd[[packadd mdeval.nvim]]
vim.g.markdown_fenced_languages = {'python', 'cpp'}

vim.api.nvim_set_keymap('n', '<leader>c', ':MdEval<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cq', ':MdEvalClean<CR>', {})
