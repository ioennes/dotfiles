-- REQUIRE

require("core")
require("mason").setup()
require("oil").setup()
require("lualine").setup()
require('nvim-autopairs').setup{
	map_cr = false,
}

-- LSPs
local lsp = require 'lspconfig'

lsp.pylsp.setup{}
lsp.lua_ls.setup{}
lsp.jdtls.setup{}
lsp.clangd.setup{}

-- CMP SETUP

local cmp = require "cmp"
cmp.setup {
	mapping = {
		["<C-j>"] = cmp.mapping.scroll_docs(-4),
		["<C-k>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<Tab>"] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		},
		["<C-space>"] = cmp.mapping.complete(),
	},

	sources = {
		{ name = "gh_issues" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
	}
}

-- COLORSCHEME
vim.cmd("colorscheme 256_noir")

-- REMAPS
vim.api.nvim_set_keymap('n', '<leader>pv', ':Oil<CR>', { noremap = true, silent = true })
vim.cmd("nnoremap <leader>ex :lua vim.lsp.buf.code_action()<enter>")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- SET
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.scrolloff = 10

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
