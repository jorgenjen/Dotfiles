return {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- fuzzy file search
        vim.keymap.set('n', '<leader>gg', builtin.git_files, {})  
        vim.keymap.set('n', '<leader>ss', builtin.live_grep, {})  -- Search for files based on content in the file
    end
}
