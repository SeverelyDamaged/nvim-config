local valid_filetypes = { "haskell", "lhaskell", "cabal", "cabalproject" }

return {
  {
    "mrcjkb/haskell-tools.nvim",
    ft = valid_filetypes,
    -- TODO: Refactor this to have keys defined somewhere else, causes plugin to be loaded
    keys = function()
      local filetype = vim.bo.filetype
      if vim.tbl_contains(valid_filetypes, filetype) then
        local ht = require("haskell-tools")
        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { noremap = true, silent = true, buffer = bufnr }
        local icon, _, _ = require("mini.icons").get("extension", "hs")
        require("which-key").add({
          "<leader>r",
          group = "haskell",
          icon = icon,
        })
        return {
          { "<leader>rr", ht.repl.toggle, desc = "Toggle repl", opts },
          {
            "<leader>rf",
            function()
              ht.repl.toggle(vim.api.nvim_buf_get_name(0))
            end,
            desc = "Toggle buffer repl",
            opts,
          },
          { "<leader>rq", ht.repl.quit, desc = "Quit repl", opts },
        }
      end
      return {}
    end,
  },
}
