local status, tokyonight = pcall(require, "tokyonight")
if not status then
	return
end

if vim.loop.os_uname().sysname ~= "Darwin" then
	tokyonight.setup({
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	})
end

local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Colorscheme not found!")
	return
end
