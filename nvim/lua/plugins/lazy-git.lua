return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- write keymap to open lazygit using vim.cmd
    vim.cmd("nnoremap <leader>gg :LazyGit<CR>")
  end,
}
