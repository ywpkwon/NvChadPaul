local M = {}
-- add this table only when you want to disable default keys
--
-- M.navigation = {
--   n = {
--     ["H"] = { "^", "beginning of line" },
--     ["L"] = { "$", "end of line" },
--   }
-- }

M.nvimtree = {
   n = {
      ["<leader>of"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
      ["<leader>ot"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
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
    -- ["<leader>th"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>to"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },

    -- git
    ["<leader>tm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>tg"] = { "<cmd> Telescope git_status <CR>", "git status" },

    -- pick a hidden term
    ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
  },
}

return M
