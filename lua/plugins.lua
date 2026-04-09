-- Github symbols for statusline
vim.pack.add({
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

require('gitsigns').setup({ signcolumn = false })

-- Mason.nvim
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
})

require('mason').setup()

-- Blink.cmp
vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})

require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp" } }
})

-- Colorscheme
vim.pack.add({
    { src = "https://github.com/ribru17/bamboo.nvim" },
})

require('bamboo').setup({})

vim.pack.add({
    { src = "https://github.com/mcauley-penney/techbase.nvim" },
})

require('techbase').setup({})

-- Fuzzy Picker
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
})

local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
    "borderless",
    winopts = { backdrop = 85 },
    keymap = {
        builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
            ["<C-p>"] = "toggle-preview",
        },
        fzf = {
            ["ctrl-a"] = "toggle-all",
            ["ctrl-t"] = "first",
            ["ctrl-g"] = "last",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
        }
    },
    actions = {
        files = {
            ["ctrl-q"] = actions.file_sel_to_qf,
            ["ctrl-n"] = actions.toggle_ignore,
            ["ctrl-h"] = actions.toggle_hidden,
            ["enter"]  = actions.file_edit_or_qf,
        }
    }
})

-- Git Integration
vim.pack.add({
    { src = "https://github.com/tpope/vim-fugitive" },
})

-- Miniharp
vim.pack.add({
    { src = "https://github.com/vieitesss/miniharp.nvim" },
})

require('miniharp').setup({ show_on_autoload = true })

--Lualine
vim.pack.add({
    {'https://github.com/nvim-mini/mini.icons',
    src = 'https://github.com/nvim-lualine/lualine.nvim' },
})

require('lualine').setup()

-- render-markdown
vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/nvim-mini/mini.nvim',            -- if you use the mini.nvim suite
    'https://github.com/nvim-mini/mini.icons',        -- if you use standalone mini plugins
    -- 'https://github.com/nvim-tree/nvim-web-devicons', -- if you prefer nvim-web-devicons
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})
require('render-markdown').setup({}) -- only mandatory if you want to set custom options

-- Trouble
vim.pack.add({
    { src = "https://github.com/folke/trouble.nvim" },
})

require('trouble').setup({
    keymap = {
        ["<leader>xx"] = "<cmd>Trouble diagnostics toggle<CR>"
},
})

