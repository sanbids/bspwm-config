lvim.format_on_save.enabled = true
lvim.colorscheme = "tokyo-night"

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})
vim.opt_global.showcmd = false
require('cmp-npm').setup({})
reload("user.option")
reload("user.lsconfig")
reload("user.cmp")
reload("user.hlsearch")
reload("user.whichKey")
reload("user.builtin")
reload("user.telescope")
reload("user.codeRunner")
reload("user.keymapping")
reload("user.autocommand")
reload("user.mapping")

-- sandesh for test
--
autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },


  {
    command = "prettier",
    extra_args = { "--print-with", "100" },
    filetypes = { "typescript", "typescriptreact" },
  },
}

require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

local scheme = {
  { "shortcuts/no-neck-pain.nvim", tag = "*" },
  {
    'Mofiqul/dracula.nvim'
  },
  { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" },

  {

    "Khaledgarbaya/night-owl-vim-theme",
  },
  {
    "tanvirtin/monokai.nvim",
  },

  {
    "sainnhe/sonokai",
  },
  {
    "bluz71/vim-moonfly-colors",
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "tomasiser/vim-code-dark",
  },
  {
    "shaeinst/roshnivim-cs"
  },
  {
    "bluz71/vim-nightfly-colors"
  },

}

lvim.plugins = {
  {
    'barrett-ruth/import-cost.nvim',
    build = 'sh install.sh yarn'
  },
  scheme,
  {
    "ktunprasert/gui-font-resize.nvim",
    config = function() require("gui-font-resize").setup() end,
  },
  {

    'nickeb96/fish.vim'
  },
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup()
    end,
  },
  {
    "tpope/vim-surround",

  },
  { 'navarasu/onedark.nvim' },

  { 'ThePrimeagen/vim-be-good' },
  { 'michaelb/sniprun', run = 'bash ./install.sh' },
  { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' },
  { "nvim-telescope/telescope-packer.nvim" },
  {
    'nat-418/telescope-color-names.nvim',
    config = function()
      require('telescope').load_extension('color_names')
    end
  },
  { "kelly-lin/telescope-ag" },
  { "sudormrfbin/cheatsheet.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },
  { "xiyaowong/telescope-emoji.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "mtoohey31/cmp-fish", ft = "fish" },
  {
    'David-Kunz/cmp-npm',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  },
  { "uga-rosa/cmp-dictionary" },
  { "hrsh7th/cmp-cmdline" },
  { "f3fora/cmp-spell" },
  { "hrsh7th/cmp-calc" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },

  {
    'nacro90/numb.nvim'

  },

  {
    "andymass/vim-matchup",
    setup = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },

  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  { 'norcalli/nvim-colorizer.lua' },


  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120; -- Width of the floating window
        height = 25; -- Height of the floating window
        default_mappings = true; -- Bind default mappings
        debug = false; -- Print debug information
        opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
      }
    end
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },

  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },

  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },

  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BracyStop", "BraceyReload", "BraceyEval" },
    run = "npm install --prefix server",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
  },
  { 'junegunn/fzf.vim' },
  { 'mattn/emmet-vim' },
  { 'Shougo/denite.nvim' },
}
