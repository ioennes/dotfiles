require("io.remap")
require("io.set")

vim.opt.clipboard:append("unnamedplus")
vim.g.gruvbox_material_background = 'hard'
vim.cmd("colorscheme gruvbox-material")
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
-- vim.cmd("hi SignColumn ctermbg=NONE guibg=NONE")
vim.cmd("nnoremap <leader>ex :lua vim.lsp.buf.code_action()<enter>")
vim.cmd("inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : '<Tab>'")
require("oil").setup()
require("luasnip.loaders.from_vscode").lazy_load()
require('nvim-autopairs').setup{
	map_cr = false,
}
