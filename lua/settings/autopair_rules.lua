local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
local cond = require('nvim-autopairs.conds')

local remap = vim.api.nvim_set_keymap


npairs.add_rule(Rule("$","$", {"md", "markdown", "lua", "tex"})
 -- don't add a pair if the next character is %
    :with_pair(cond.not_after_regex_check("%%"))
    -- don't add a pair if  the previous character is xxx
    :with_pair(cond.not_before_regex_check("xxx", 3))
    -- don't move right when repeat character
    :with_move(cond.none())
    -- don't delete if the next character is xx
    :with_del(cond.not_after_regex_check("xx"))
    -- disable add newline when press <cr>
    :with_cr(cond.none())
	)

npairs.add_rules({
  Rule("||","||",{"markdown", "tex"})
    :with_pair(function(opts)
        print(vim.inspect(opts))
        if opts.line=="aa ||" then
        -- don't add pair on that line
          return false
        end
    end)
   }
)
