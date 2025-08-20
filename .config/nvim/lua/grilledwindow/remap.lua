vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", "<CMD>Oil<CR>")
vim.keymap.set("n", "-", "<CMD>Oil<CR>")

vim.keymap.set("n", '""', '"+')
vim.keymap.set("x", '""', '"+')
vim.keymap.set("n", '<leader>c', '"+y')
vim.keymap.set("n", '<leader>v', '"+gP')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("i", "<C-a>", "ggVG")

vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })
