vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Rust fmt
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("rust-format", { clear = true }),
    callback = function()
        if vim.bo.filetype == 'rust' then
            vim.cmd([[%! rustfmt]])
        end
    end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("go-format", { clear = false }),
    callback = function()
        if vim.bo.filetype == 'go' then
            vim.cmd("silent %!gofmt")
        end
    end,
})

-- COLORSCHEME
vim.cmd([[colorscheme darkrose]])

-- Disable annoying match brackets and all the jaz
vim.cmd([[
augroup CustomHI
autocmd!
autocmd VimEnter * NoMatchParen
augroup END
]])

vim.keymap.set("i", "jj", "<Esc>")

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = false

vim.opt.relativenumber = true

vim.opt.swapfile = false

vim.o.hlsearch = false
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.updatetime = 250

vim.o.timeout = true
vim.o.timeoutlen = 300

--vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.g.vimtex_compiler_method = 'latexrun'

vim.cmd [[
let g:clang_format#auto_format = 1
]]

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
