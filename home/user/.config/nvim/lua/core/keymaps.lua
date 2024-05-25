local keymap = vim.keymap

vim.g.mapleader = ","

keymap.set("i", "<C-a>", "<ESC>I")
keymap.set("i", "<C-e>", "<ESC>A")
keymap.set("n", "<C-a>", "<ESC>^")
keymap.set("n", "<C-e>", "<ESC>$")

keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

