local plugins = {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "jiriks74/presence.nvim",
    lazy = false,
    config = function ()
      require "configs.presence"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_insalled = {
        --defaults
        "vim",
        "lua",

        --web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        --common dev
        "json",
        "java",
        "python",

        --low level dev
        "c",
        "cpp",
        "rust",
        "zig"
      }
    }
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_insalled = {
        "clangd",
        "marksman",
        "rust-analyzer",
        "taplo",
        "jdtls",
        "zls"
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
    end
  },
  {
    "rcarriga/cmp-dap",
    config = function()
    end
  }
}

return plugins
