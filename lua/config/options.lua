-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colors
vim.opt.termguicolors = true

-- Set general indentation rules
vim.opt.tabstop = 4         -- A tab is 2 spaces
vim.opt.shiftwidth = 4      -- Indentation width
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.softtabstop = 4     -- Insert 2 spaces for a Tab

-- Set relative line numbers
vim.opt.relativenumber = true

-- Indentation for Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
    vim.opt.softtabstop = 2
  end,
})

vim.opt.hlsearch = false
vim.opt.incsearch = true
