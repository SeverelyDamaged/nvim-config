local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

local highlights = require("nord").bufferline.highlights({
	italic = true,
	bold = true,
})

bufferline.setup({
	options = {
		close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				text_align = "right",
				padding = 1,
			},
		},
		highlights = highlights,
	},
})
