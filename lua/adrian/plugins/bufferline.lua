local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		show_tab_indicators = false,
		indicator = {
			-- style = "underline",
		},
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				text_align = "right",
				padding = 1,
			},
		},
	},
})
