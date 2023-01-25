local status, tokyonight = pcall(require, "tokyonight")
if not status then
	return
end

tokyonight.setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
})

local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
	print("Colorscheme not found!")
	return
end
