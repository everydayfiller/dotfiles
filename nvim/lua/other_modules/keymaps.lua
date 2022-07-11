-- keymaps --

local keymap = function(mode, lhs, rhs)
    vim.keymap.set(
        mode,
        lhs, 
        rhs, 
        {noremap = true, silent = true}
    )
end

keymap("", '<space>', '<nop>')
vim.g.mapleader = ' '

keymap('', '<up>', '<nop>')
keymap('', '<down>', '<nop>')
keymap('', '<left>', '<nop>')
keymap('', '<right>' , '<nop>')

-- normal --
keymap('n', '<leader>p', ' _dP')
keymap('v', '>', '>>')
keymap('v', '<', '<<')

-- insert --
keymap('i', 'jj', '<esc>')

-- visual --
keymap('v', 'p', '"_dP')
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")
keymap('v', '>', '>gv')
keymap('v', '<', '<gv')

