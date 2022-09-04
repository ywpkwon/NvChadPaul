-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  -- hl_add = require("custom.highlights").new_hlgroups,
  -- hl_override = require("custom.highlights").overriden_hlgroups,
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    -- ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
    -- ["goolord/alpha-nvim"] = override.alpha,
    ["williamboman/mason.nvim"] = override.mason,
  },
}

M.mappings = require "custom.mappings"

return M
