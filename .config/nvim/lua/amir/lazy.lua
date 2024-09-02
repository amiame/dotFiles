require('lazy').setup({
  -- Telescope
  {'nvim-telescope/telescope.nvim', tag = '0.1.4',},
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope-live-grep-args.nvim'},

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'nvim-treesitter/nvim-treesitter-textobjects'},
  {'nvim-treesitter/playground'},

  -- Undo
  {'mbbill/undotree'},

  -- Fugitive
  {'tpope/vim-fugitive'},

  -- Color
  {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },

  -- LSP
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true},
  -- LSP Support
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  -- Autocompletion
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  -- {'saadparwaiz1/cmp_luasnip'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-nvim-lua'},
  -- Snippets
  -- {'L3MON4D3/LuaSnip'},
  -- Snippet Collection (Optional)
  {'rafamadriz/friendly-snippets'},

  -- Tab
  {'gcmt/taboo.vim'},

  -- Context
  {'wellle/context.vim'},

  -- DB
  {'tpope/vim-dadbod'},
  {'kristijanhusak/vim-dadbod-ui'},
  {'kristijanhusak/vim-dadbod-completion'},

  -- Markdown
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- ascii editor
  {
    "jbyuki/venn.nvim",
  },

  --  [markdown markmap]
  --  https://github.com/Zeioth/markmap.nvim
  {
    "Zeioth/markmap.nvim",
    build = "yarn global add markmap-cli",
    cmd = { "MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop" },
    opts = {
      html_output = "/tmp/markmap.html", -- (default) Setting a empty string "" here means: [Current buffer path].html
      hide_toolbar = false, -- (default)
      grace_period = 3600000 -- (default) Stops markmap watch after 60 minutes. Set it to 0 to disable the grace_period.
    },
    config = function(_, opts) require("markmap").setup(opts) end
  },

  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre " .. vim.fn.expand "~" .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/**.md",
    --   "BufNewFile " .. vim.fn.expand "~" .. "/Library/Mobile Documents/iCloud~md~obsidian/Documents/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "azabiong/vim-highlighter",
    init = function()
      -- settings
    end,
  },
})
