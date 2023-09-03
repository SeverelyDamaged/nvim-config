return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash-language-server",
        "prisma-language-server",
        "ruff",
        "shfmt",
        "html-lsp",
      })
    end,
  },
}
