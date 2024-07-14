return {
  {
    "mrcjkb/haskell-tools.nvim",
    keys = function()
      local ht = require("haskell-tools")
      local bufnr = vim.api.nvim_get_current_buf()
      local opts = { noremap = true, silent = true, buffer = bufnr }
      local icon, _, _ = require("mini.icons").get("extension", "hs")
      require("which-key").add({
        "<leader>h",
        group = "haskell",
        icon = icon,
      })

      return {
        { "<leader>hr", ht.repl.toggle, desc = "Toggle repl", opts },
        {
          "<leader>hf",
          function()
            ht.repl.toggle(vim.api.nvim_buf_get_name(0))
          end,
          desc = "Toggle buffer repl",
          opts,
        },
        { "<leader>hq", ht.repl.quit, desc = "Quit repl", opts },
      }
    end,
  },
}
