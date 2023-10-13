require('lazy').setup({
  -- Telescope
  {'nvim-telescope/telescope.nvim', tag = '0.1.4',},
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope-live-grep-args.nvim'},

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
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
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  -- LSP Support
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  -- Autocompletion
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'saadparwaiz1/cmp_luasnip'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-nvim-lua'},
  -- Snippets
  {'L3MON4D3/LuaSnip'},
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
    run = function() vim.fn["mkdp#util#install"]() end,
  },
})
