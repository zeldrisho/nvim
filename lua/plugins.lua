local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
    augroup Packer
        autocmd!
        autocmd BufWritePost init.lua PackerCompile
    augroup end
]]

local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'Mofiqul/dracula.nvim' -- theme
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup()
        end
    }
    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank line
    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp'
    use { 'ibhagwan/fzf-lua',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use {
        'akinsho/toggleterm.nvim',
        config = function()
            require('toggleterm').setup({
                direction = 'float'
            })
        end
    }
    use 'windwp/nvim-autopairs'
    use 'Pocco81/AutoSave.nvim'
    use 'wakatime/vim-wakatime'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'romgrk/barbar.nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

for _, file in ipairs(fn.readdir(fn.stdpath('config')..'/lua/plugins', [[v:val =~ '\.lua$']])) do
    require('plugins.'..file:gsub('%.lua$', ''))
end


