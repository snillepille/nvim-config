return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "L3MON4D3/cmp-luasnip-choice", -- completes clauses (e.g if-else)
  },


  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- loads vscode-style snippets from installed plugins (e.g friendly_snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect"
      },

      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- backwards in docs preview
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- forwards in docs preview
        ["<C-Space>"] = cmp.mapping.complete(), -- Show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- Close completion suggestions
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Select completion
      }),

      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- auto-cmp from language server
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),

    })
  end,
}
