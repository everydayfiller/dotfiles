-- options --

local function setOptions()
    local g_opts = {
        termguicolors = true,
        hidden = true,
        incsearch = true,
        hlsearch = true,
        updatetime = 300,
        ignorecase = true,
        smartcase = true,
        scrolloff = 8,
        cmdheight = 2,
        backup = false,
        undodir = os.getenv("HOME")..'/.local/share/nvim/undo',
    }

    local w_opts = {
        relativenumber = true,
        nu = true,
        numberwidth = 3,
        cursorline = true,
        cursorlineopt = 'number',
        wrap = false,
        colorcolumn = '80',
        signcolumn = 'number',
    }

    local b_opts = {
        softtabstop = 4,
        tabstop = 4,
        shiftwidth = 4,
        autoindent = true,
        smartindent = true,
        expandtab = true,
        swapfile = false,
        undofile = true,
    }

    for k,v in pairs(g_opts) do
        vim.api.nvim_set_option(k, v)
    end

    for k,v in pairs(w_opts) do
        vim.api.nvim_win_set_option(0, k, v)
    end

    for k,v in pairs(b_opts) do
        vim.api.nvim_buf_set_option(0, k, v)
    end
end

vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'
setOptions()

