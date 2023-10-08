return {
  updater = {
    remote = "origin",
    channel = "stable",
    version = "latest",
    branch = "nightly",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
    remotes = {},
  },

  plugins = {
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        opts.winbar = nil
        return opts
      end
    },
  },

  colorscheme = "catppuccin",

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
        ignore_filetypes = {
          "markdown",
        },
      },
      timeout_ms = 1000,
    },
    servers = {},
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  polish = function()
    require("telescope").setup {
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    }

    require("neo-tree").setup {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    }
  end,
}
