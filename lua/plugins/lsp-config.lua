return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      eslint = {
        settings = {
          format = false,
          workingDirectories = { mode = "location" },
        },
        root_dir = function()
          return vim.loop.cwd()
        end,
      },
    },
  },
}
