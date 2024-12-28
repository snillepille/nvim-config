-- setup leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- aliases
vim.api.nvim_create_user_command("Lz", function() vim.cmd("Lazy") end, {desc = "Opens Lazy GUI"}) -- Lazy GUI
