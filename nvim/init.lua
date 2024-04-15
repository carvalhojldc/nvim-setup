local vim = vim
local Plug = vim.fn['plug#']

vim.cmd('source ~/.config/nvim/config.vim')

vim.call('plug#begin')
    ---------------------------------------
    -- Appearance
    Plug('nvim-tree/nvim-web-devicons')
    Plug('akinsho/bufferline.nvim', { ['tag'] = '*' })
    Plug('nvim-lualine/lualine.nvim')

    -- Themes
    Plug('sainnhe/sonokai')
    Plug('sainnhe/gruvbox-material')
    Plug('folke/tokyonight.nvim')

    ---------------------------------------
    -- Completion / linters / formatters
    Plug('thaerkh/vim-indentguides')
    --Plug 'sheerun/vim-polyglot'
    Plug('sindrets/diffview.nvim')
    Plug('lewis6991/gitsigns.nvim')
    Plug('numToStr/Comment.nvim')

    Plug('neovim/nvim-lspconfig')
    Plug('hrsh7th/cmp-nvim-lsp')
    Plug('hrsh7th/nvim-cmp')
    Plug('saadparwaiz1/cmp_luasnip')  -- Snippets source for nvim-cmp
    Plug('L3MON4D3/LuaSnip')          -- Snippets plugin

    Plug('nvim-lua/plenary.nvim')
    Plug('nvim-telescope/telescope.nvim')
    Plug('nvim-tree/nvim-tree.lua')

vim.call('plug#end')

require('theme')

-- disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
    },
})

require('lualine').setup{
  options = {
    --theme = 'gruvbox-material',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  }
}

require("bufferline").setup{}

require('gitsigns').setup {
  signs = {
    add          = { text = '+' },
    change       = { text = 'u' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  }, 
}

require('diffview').setup{}

require('Comment').setup{}

vim.keymap.set('n', '<leader>gd',
function()
    if next(require('diffview.lib').views) == nil then
        vim.cmd('DiffviewOpen')
    else
        vim.cmd('DiffviewClose')
    end
end)

vim.keymap.set('n', '<leader>gh',
function()
    if next(require('diffview.lib').views) == nil then
        vim.cmd('DiffviewFileHistory')
    else
        vim.cmd('DiffviewClose')
    end
end)

require('lsp_config')
