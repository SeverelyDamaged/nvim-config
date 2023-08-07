return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "prisma-language-server",
        "ruff",
      },
    },
  },
}
