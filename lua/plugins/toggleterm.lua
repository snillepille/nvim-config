return {
    {
      'akinsho/toggleterm.nvim',
      version = "*",
      opts = {},
      config = function ()
        require("toggleterm").setup({})

        local opts = { noremap = true, silent = true }

        opts.desc = "ToggleTerm toggle terminal"
        vim.keymap.set("n", "<leader>tm", ":ToggleTerm size=12<CR>", opts) -- toggle terminal

        opts.desc = "ToggleTerm select terminal"
        vim.keymap.set("n", "<leader>ts", ":TermSelect<CR>", opts) -- select terminal

        opts.desc = "Exit out of terminal"
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts) -- unfocus terminal with escape
      end
    }
}
