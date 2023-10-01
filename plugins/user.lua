return {
  -- nvim-sorround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  -- denops-translate
  {
    "skanehira/denops-translate.vim",
    cmd = { "Translate" },
    config = function()
      vim.g.translate_source = "en"
      vim.g.translate_target = "ja"
      vim.g.translate_winsize = 10
      require("denops-lazy").load "denops-translate.vim"
    end,
  },

  -- fuzzy-motion
  "yuki-yano/denops-lazy.nvim",
  { "vim-denops/denops.vim", event = { "VeryLazy" } },
  {
    "yuki-yano/fuzzy-motion.vim",
    dependencies = {
      { "vim-denops/denops.vim" },
    },
    cmd = { "FuzzyMotion" },
    config = function() require("denops-lazy").load "fuzzy-motion.vim" end,
  },

  -- Deep Space Theme
  "tyrannicaltoucan/vim-deep-space",

  -- TODO Comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function() require("todo-comments").setup {} end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in telescope" },
    },
  },

  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
