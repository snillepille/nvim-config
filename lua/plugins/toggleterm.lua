return {
    {
      'akinsho/toggleterm.nvim',
      version = "*",
      opts = {},
      config = function ()
        require("toggleterm").setup({})

        local opts = { noremap = true, silent = true }


        opts.desc = "ToggleTerm toggle vertical terminal"
        vim.keymap.set("n", "<leader>tm", ":1ToggleTerm size=80 direction=vertical<CR>", opts) -- Toggle main terminal

        opts.desc = "ToggleTerm toggle horizontal terminal"
        vim.keymap.set("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<CR>", opts) -- Toggle horizontal terminal

        opts.desc = "ToggleTerm scripts terminal"
        vim.keymap.set("n", "<leader>tS", ":ToggleTerm size=80 direction=vertical name='scripts' dir='~/PycharmProjects/scripts'<CR>", opts) -- Toggle ./scripts terminal

        opts.desc = "ToggleTerm all terminals"
        vim.keymap.set("n", "<leader>ta", ":ToggleTermToggleAll<CR>", opts) -- Toggle all terminals

        opts.desc = "ToggleTerm select terminal"
        vim.keymap.set("n", "<leader>ts", ":TermSelect<CR>", opts) -- Select terminal

        opts.desc = "Exit out of terminal mode"
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts) -- Unfocus terminal with escape
      end
    }
}
