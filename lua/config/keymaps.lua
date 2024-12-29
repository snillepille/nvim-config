-- setup leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- aliases
vim.api.nvim_create_user_command("Lz", function() vim.cmd("Lazy") end, {desc = "Opens Lazy GUI"}) -- Lazy GUI

-- window keymaps
vim.keymap.set({ 't', 'n', 'v' }, "§h", "<cmd>wincmd h<CR>", { desc = "Moves cursor to window left of current" })
vim.keymap.set({ 't', 'n', 'v' }, "§j", "<cmd>wincmd j<CR>", { desc = "Moves cursor to window below current" })
vim.keymap.set({ 't', 'n', 'v' }, "§k", "<cmd>wincmd k<CR>", { desc = "Moves cursor to window above current" })
vim.keymap.set({ 't', 'n', 'v' }, "§l", "<cmd>wincmd l<CR>", { desc = "Moves cursor to window right of current" })
