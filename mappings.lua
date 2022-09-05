local M = {}
-- add this table only when you want to disable default keys

M.disabled = {
  n = {
      ["<C-n>"] = "",
      ["<leader>n"] = "",
      -- default lsp mappings
      ["<leader>f"] = "",
      ["<leader>q"] = "",
      ["[d"] = "",
      ["d]"] = "",
      ["gD"] = "",
      ["gd"] = "",
      ["gi"] = "",
      ["gr"] = "",
  }
}

M.convenience = {
  n = {
    [";"] = { ":", ":"}
  },
  i = {
    ["jk"] = { "<esc>l", "escape to normal mode"}
  },
}

M.navigation = {
  n = {
    ["H"] = { "^", "beginning of line" },
    ["L"] = { "$", "end of line" },
  },
  v = {
    ["H"] = { "^", "beginning of line" },
    ["L"] = { "$", "end of line" },
  },
}

M.windows = {
  n = {
    ["<leader>w|"] = { "<cmd>:vsplit<cr>", "split window vertically" },
    ["<leader>w-"] = { "<cmd>:split<cr>", "split window horizontally" },
    ["<leader>wq"] = { "<cmd>:q<cr>", "quit" },
    ["<leader>wQ"] = { "<cmd>:q!<cr>", "quit!" },
    ["<leader>ws"] = { "<cmd>:w<cr>", "save" },
  }
}

M.lsp = {
  n = {
    ["<leader>lj"] = { "<cmd>:vsplit<cr>", "split window vertically" },
    ["<leader>lk"] = { "<cmd>:split<cr>", "split window horizontally" },
  }
}

M.toggle = {
   n = {
      ["<leader>oN"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
      ["<leader>on"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      ["<leader>or"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
      ["<leader>ot"] = {
        function()
          require("base46").toggle_theme()
        end,
        "toggle theme",
      },
      ["<leader>ogm"] = { "<cmd> TZMinimalist <CR>", "toggle zen-minimal" },
      ["<leader>ogf"] = { "<cmd> TZFocus <CR>", "toggle zen-focus" },
      ["<leader>oga"] = { "<cmd> TZAtaraxis<CR>", "toggle zen-artar" },
      ["Z"] = { "<cmd> TZFocus <CR>", "toggle zen-focus" },
   },
}

M.telescope = {
  plugin = true,
  n = {
    -- find
    ["<leader>tf"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>ta"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    ["<leader>tw"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>tb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>td"] = { "<cmd> Telescope diagnostics <CR>", "find diagnostics" },
    -- ["<leader>th"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>to"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },

    -- git
    ["<leader>tm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>tg"] = { "<cmd> Telescope git_status <CR>", "git status" },

    -- pick a hidden term
    ["<leader>tt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
  },
}

M.packer = {
  n = {
    ["<leader>pi"] = { "<cmd> PackerStatus  <CR>", "packer status" },
    ["<leader>pc"] = { "<cmd> PackerCompile <CR>", "packer compile" },
    ["<leader>ps"] = { "<cmd> PackerSync    <CR>", "packer sync" },
  },
}

M.easymotion = {
  n = {
    ["<leader>ml"] = { "<cmd> HopLineMW     <CR>", "hop to line" },
    ["<leader>ma"] = { "<cmd> HopAnywhereMW <CR>", "hop to anywhere" },
    ["<leader>mw"] = { "<cmd> HopWordMW     <CR>", "hop to word" },
  },
}

M.lspconfig = {
  plugin = true,
  n = {
    ["<leader>lk"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "lsp goto_prev",
    },
    ["<leader>lj"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "lsp goto_next",
    },
    ["<leader>ls"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "lsp show",
    },
    ["<leader>lr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "lsp references",
    },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.formatting {}
      end,
      "lsp formatting",
    },
    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "lsp setloclist",
    },
    ["<leader>lD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "lsp declaration",
    },
    ["<leader>ld"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "lsp definition",
    },
    ["<leader>li"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "lsp implementation",
    },
  },
}

local opts_sn = {silent = true, noremap = true,}
M.tmux_vim_nav = {
  n = {
    ["<C-h>"] = {":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft() <cr>", "vim-tmux-left", opts=opts_sn},
    ["<C-j>"] = {":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown() <cr>", "vim-tmux-down", opts=opts_sn},
    ["<C-k>"] = {":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()   <cr>", "vim-tmux-up", opts=opts_sn},
    ["<C-l>"] = {":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", "vim-tmux-right", opts=opts_sn},
  },
}

return M
