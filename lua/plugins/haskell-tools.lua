return {
  {
    "mrcjkb/haskell-tools.nvim",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    opts = function(_, opts)
      local ht = require("haskell-tools")
      local bufnr = vim.api.nvim_get_current_buf()
      local opt = { noremap = true, silent = true, buffer = bufnr }
      local icon, _, _ = require("mini.icons").get("extension", "hs")
      require("which-key").add({
        "<leader>r",
        group = "haskell",
        icon = icon,
      })
      vim.keymap.set("n", "<leader>rr", ht.repl.toggle, { unpack(opt), desc = "Toggle repl for package" })
      vim.keymap.set("n", "<leader>rf", function()
        ht.repl.toggle(vim.api.nvim_buf_get_name(0))
      end, { unpack(opt), desc = "Toggle repl for buffer" })
      vim.keymap.set("n", "<leader>rq", ht.repl.quit, { unpack(opt), desc = "Quit repl" })
      return opts
    end,
  },
}
