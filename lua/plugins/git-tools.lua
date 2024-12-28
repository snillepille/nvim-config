return {
  {
    "tpope/vim-fugitive"
  },
  {
  "lewis6991/gitsigns.nvim",
  config =function ()
    require("gitsigns").setup()

    vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Git-hunk" })
  end
  }
}
