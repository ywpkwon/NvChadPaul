-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "markdown",
    "markdown_inline",
    "c",
    "cpp",
    "bash",
    "lua",
    "python",
  },
  indent = {
    enable = true,
    disable = { "python", },
  }
}


-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- local tree_cb = nvim_tree_config.nvim_tree_callback
M.nvimtree = {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = { "alpha" },
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 25,
    hide_root_folder = false,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "v", action = "vsplit" },
        { key = "h", action = "split" },
      },
    },
    float = {
      enable = true,
      -- open_win_config = {
      --     relative = "editor",
      --     width = 30,
      --     height = 30,
      --     row = 8,
      --     column = 35
      -- }
    }
  },
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      resize_window = true,
    }
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "none",

    root_folder_modifier = ":t",
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "norg",
    "",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",

    -- shell
    "shfmt",
    "shellcheck",

    -- python
    "pyright",
    "python-lsp-server",
  },
}

M.colorizer = {
  user_default_options = {
    RRGGBBAA = true, -- #RRGGBBAA hex codes
  },
}

return M
