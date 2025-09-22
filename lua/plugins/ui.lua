return {
  -- colorscheme
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --    require("cyberdream").setup ({
  -- italic_comments = true,
  -- hide_fillchars = false,
  --    })
  --      -- load the colorscheme here
  --      vim.cmd([[colorscheme cyberdream]])
  --   end,
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      require("catppuccin").setup({
          flavour = "mocha", -- latte, frappe, macchiato, mocha
          background = { -- :h background
              light = "latte",
              dark = "mocha",
          },
          transparent_background = false, -- disables setting the background color.
          show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
          term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
          dim_inactive = {
              enabled = false, -- dims the background color of inactive window
              shade = "dark",
              percentage = 0.15, -- percentage of the shade to apply to the inactive window
          },
          no_italic = false, -- Force no italic
          no_bold = false, -- Force no bold
          no_underline = false, -- Force no underline
          styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
              comments = { "italic" }, -- Change the style of comments
              conditionals = { "italic" },
              loops = {},
              functions = {},
              keywords = {},
              strings = {},
              variables = {},
              numbers = {},
              booleans = {},
              properties = {},
              types = {},
              operators = {},
              -- miscs = {}, -- Uncomment to turn off hard-coded styles
          },
          color_overrides = {},
          custom_highlights = {},
          default_integrations = true,
          integrations = {
              cmp = true,
              gitsigns = true,
              nvimtree = true,
              treesitter = true,
              notify = false,
              mini = {
                  enabled = true,
                  indentscope_color = "",
              },
              -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
          },
      })

      -- setup must be called before loading
      vim.cmd.colorscheme "catppuccin"
    end
  },


  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = {":TSUpdate"},
    opts = {
      -- ensure_installed = { "python", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      -- sync_install = false,
      -- highlight = { enable = true },
      -- indent = { enable = true },
    },
    config = function ()
      require("nvim-treesitter.configs").setup({
      ensure_installed = {
      "python",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "elixir",
      "heex",
      "javascript",
      "typescript",
      "html",
      "markdown",
      "markdown_inline",
      "latex",
      "regex"
      },
      sync_install = false,
      highlight = { enable = true, disable = {} },
      indent = { enable = true },
      })
   end
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

  -- render-markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    config = function()
      require("render-markdown").setup({
        latex = {
          enabled = true,
          converter = "latex2text",
          position = "above"
        },
        ft = { 'markdown' },
        render_modes = {'n', 'c', 't'},
        completions = { lsp = { enabled = true } },
      })
    end
  }
}
