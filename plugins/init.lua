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

  -- ["goolord/alpha-nvim"] = {
  --   disable = false,
  --   config = function ()
  --     -- require "custom.plugins.alpha"
  --     require'alpha'.setup(require'alpha.themes.startify'.config)
  --   end
  -- },

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

  ["kylechui/nvim-surround"] = {
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },

  ['gelguy/wilder.nvim'] = {
    run = ':UpdateRemotePlugins',
    config = function()
      -- config goes here
      local wilder = require('wilder')
      wilder.setup({modes = {':', '/'}})
      -- wilder.setup({modes = {':', '/', '?'}})

      wilder.set_option('pipeline', {
        wilder.branch(
          -- wilder.python_file_finder_pipeline({
          --       -- to use ripgrep : {'rg', '--files'}
          --       -- to use fd      : {'fd', '-tf'}
          --       file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'},
          --       -- to use fd      : {'fd', '-td'}
          --       dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
          --       -- use {'cpsm_filter'} for performance, requires cpsm vim plugin
          --       -- found at https://github.com/nixprime/cpsm
          --       filters = {'fuzzy_filter', 'difflib_sorter'},
          --     }),
          wilder.cmdline_pipeline({
            language = 'python',
            fuzzy = 1,
            set_pcre2_pattern = 1,
          }),
          wilder.python_search_pipeline({
            pattern = 'fuzzy',
          })
        ),
      })

      local highlighters = {
        wilder.pcre2_highlighter(),
        wilder.lua_fzy_highlighter(),
      }

      local popupmenu_renderer = wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          highlighter = highlighters,
          highlights = {
            accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
            border = 'Normal', -- highlight to use for the border
          },
          border = 'rounded',  -- 'single', 'double', 'rounded' or 'solid'
        })
      )

      local wildmenu_renderer = wilder.wildmenu_renderer({
        highlighter = highlighters,
        separator = ' · ',
        left = {' ', wilder.wildmenu_spinner(), ' '},
        right = {' ', wilder.wildmenu_index()},
      })

      wilder.set_option('renderer', wilder.renderer_mux({
        [':'] = popupmenu_renderer,
        ['/'] = wildmenu_renderer,
        substitute = wildmenu_renderer,
      }))
    end,
  },

  ['gbprod/yanky.nvim'] = {
    config = function()
      require("yanky").setup({
        -- your configuration comes here
        -- otherwise default.
      })

      -- keybind
      vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleForward)")
      vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleBackward)")
      vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
      vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")

      -- telescope picker
      -- require("telescope").load_extension("yank_history")
    end
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
