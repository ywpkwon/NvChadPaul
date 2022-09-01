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
        o = {name = "toggle",},
        m = {name = "easy motion",},
        l = {name = "lsp",},
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

  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup {
      -- your config goes here
      -- or just leave it empty :)
      }
    end,
  },

  ['phaazon/hop.nvim'] = {
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
  },
}
