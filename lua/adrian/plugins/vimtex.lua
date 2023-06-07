if vim.loop.os_uname().sysname == "Darwin" then
	vim.g.vimtex_view_method = "skim"
	vim.g.vimtex_view_general_viewer = "skim"
else
	vim.g.vimtex_view_method = "zathura"
	vim.g.vimtex_view_general_viewer = "zathura"
end
vim.g.tex_comment_nospell = 1
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_quickfix_ignore_filters = {
	"Underfull",
	"Overfull",
	"Negative",
}
