return {

  ["folke/which-key.nvim"] = {
    disable = false,
    config = function()
      require "plugins.configs.whichkey"
      -- add your whichkey stuff here i.e make another file 
      local wk = require("which-key")
      wk.register({
        --insert any whichkey opts here
        t = {name = "telescope",},
        w = {name = "window",},
        o = {name = "toggle",}
      }, {prefix = "<leader>"})
    end
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["alexghergh/nvim-tmux-navigation"] = {},
}
