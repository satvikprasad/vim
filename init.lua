require("satvikprasad.plugins.packer")
require("satvikprasad.plugins.nightfox")
require("satvikprasad.plugins.treesitter")
require("satvikprasad.plugins.lsp")
require("satvikprasad.plugins.lualine")
require("satvikprasad.plugins.toggleterm")

require("satvikprasad.options")

-- some
vim.keymap.set("n", "<M-b>", ":Ex<CR>")

-- split screen and navigation
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })
