return {
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
}
