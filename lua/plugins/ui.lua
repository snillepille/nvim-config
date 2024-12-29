return {
  -- colorscheme
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
	    require("cyberdream").setup ({
		italic_comments = true,
		hide_fillchars = false,
	    })
	      -- load the colorscheme here
	      vim.cmd([[colorscheme cyberdream]])
    end,
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter", build = {":TSUpdate"}, opts = {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" }, 
    sync_install = false, 
    highlight = { enable = true }, 
    indent = { enable = true },
   }
  },
  -- dressing
  {
    'stevearc/dressing.nvim',
    event = "VeryLazy",
    opts = {},
  },
  -- todo-comments
   {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
}

