return {
  {
    "lervag/vimtex",
    init = function()
      if vim.loop.os_uname().sysname == "Darwin" then
        vim.g.vimtex_view_method = "skim"
        vim.g.vimtex_view_general_viewer = "skim"
      else
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_view_general_viewer = "zathura"
      end
    end,
  },
}
