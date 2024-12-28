return {
  -- nvim devicons
  {
  "nvim-tree/nvim-web-devicons",
  opts = {}
  },

  -- nvim tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local api = require "nvim-tree.api"

      require("nvim-web-devicons").setup()

      -- Global commands
      vim.keymap.set("n", "<leader>e", api.tree.open, { desc = "nvim-tree: Open/Focus", noremap = true, silent = true, nowait = true })
      vim.keymap.set("n", "<leader>q", api.tree.close, { desc = "nvim-tree: Close", noremap = true, silent = true, nowait = true })

      -- Buffer Specific commands
      local function my_on_attach(bufnr)

        -- Options wrapper
        local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- custom mappings
      vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent,        opts("Up"))
      vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))

    end


    -- pass to setup along with your other options
    require("nvim-tree").setup {
      ---
      on_attach = my_on_attach,
      ---
    }
  end,
  },
}
