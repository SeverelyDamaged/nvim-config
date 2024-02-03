return {
  "neovim/nvim-lspconfig",
  opts = {
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
