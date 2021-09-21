vim.api.nvim_command("packadd feline.nvim")
local clrs = require('theme.colors')
local cs = {
	active = {},
	inactive = {}
}



require('feline').setup {
	colors = clrs,
	components = cs
}
