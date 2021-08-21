local map = vim.api.nvim_set_keymap

require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        layout_strategy = "center",
    }
}

map('n', '<leader>b', '<cmd>Telescope buffers<cr>', { noremap = true })
map('n', '<leader>f', '<cmd>Telescope find_files<cr>', { noremap = true })
map('n', '<leader>g', '<cmd>Telescope git_files<cr>', { noremap = true })
map('n', '<leader>o', '<cmd>Telescope oldfiles<cr>', { noremap = true })
