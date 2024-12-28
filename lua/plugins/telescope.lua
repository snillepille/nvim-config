return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>pf", ":Telescope find_files<cr>", desc = "Find files" },
      { "<leader>gf", ":Telescope git_files<cr>", desc = "Git files" },
      { "<leader>lg", ":Telescope live_grep<cr>", desc = "Live grep" },
      { "<leader>of", ":Telescope oldfiles<cr>", desc = "Old files" },
    },
  },
}
