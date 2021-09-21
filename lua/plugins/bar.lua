local clrs = require('theme.colors')
local cs = {
	active = {},
	inactive = {}
}

table.insert(cs.active[1], {
})


require('feline').setup {
	colors = clrs,
	components = cs
}
