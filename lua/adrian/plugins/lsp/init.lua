local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("adrian.plugins.lsp.mason")
require("adrian.plugins.lsp.handlers").setup()
require("adrian.plugins.lsp.null-ls")
