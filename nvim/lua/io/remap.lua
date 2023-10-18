vim.g.mapleader = " "

vim.cmd("nnoremap <leader>ex :lua vim.lsp.buf.code_action()<enter>")
vim.cmd("nnoremap <leader>pv :Oil<enter>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
