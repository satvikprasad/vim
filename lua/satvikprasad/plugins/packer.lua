require("packer").startup(function(use)
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use 'water-sucks/darkrose.nvim'

    use 'github/copilot.vim'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use "rhysd/vim-clang-format"

    use { "wbthomason/packer.nvim" }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            { 'neovim/nvim-lspconfig' },           -- Required
            { 'williamboman/mason.nvim' },         -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            { 'hrsh7th/nvim-cmp' },                -- Required
            { 'hrsh7th/cmp-nvim-lsp' },            -- Required
            { 'hrsh7th/cmp-buffer' },              -- Optional
            { 'hrsh7th/cmp-path' },                -- Optional
            { 'saadparwaiz1/cmp_luasnip' },        -- Optional
            { 'hrsh7th/cmp-nvim-lua' },            -- Optional
            { 'L3MON4D3/LuaSnip' },                -- Required
            { 'rafamadriz/friendly-snippets' },    -- Optional
        },
        use { "akinsho/toggleterm.nvim", tag = '*' },
        use "terrortylor/nvim-comment",
    }
end)
