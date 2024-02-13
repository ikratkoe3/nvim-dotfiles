vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'mbbill/undotree'
    use 'lewis6991/gitsigns.nvim'
    -- use 'lukas-reineke/indent-blankline.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'tpope/vim-fugitive'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'folke/zen-mode.nvim'
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
    }
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
