-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	},
	use ('ggandor/leap.nvim'),
	use {
		requires = {
			'nvim-treesitter/nvim-treesitter',
		},		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	use {
		'tpope/vim-dadbod'
	},
	use {
		'kristijanhusak/vim-dadbod-ui',
	},
	use {
		'kristijanhusak/vim-dadbod-completion'
	},
	use {
		'Shatur/neovim-ayu',
		require('ayu').setup({
			overrides = {
				Normal = { bg = "None" },
				ColorColumn = { bg = "None" },
				SignColumn = { bg = "None" },
				Folded = { bg = "None" },
				FoldColumn = { bg = "None" },
				CursorLine = { bg = "None" },
				CursorColumn = { bg = "None" },
				WhichKeyFloat = { bg = "None" },
				VertSplit = { bg = "None" },
			},
		})
	},
	use {
		'andreasvc/vim-256noir',
		't184256/vim-boring',
		'fxn/vim-monochrome',
		'chriskempson/base16-vim',
		'Jorengarenar/vim-darkness',
		'lervag/vimtex'
	},
	use {
		'stevearc/oil.nvim',
		config = function() require('oil').setup() end
	},
	use {
		'rebelot/kanagawa.nvim',
	},
	use {
		'rafamadriz/friendly-snippets',
		'Pocco81/true-zen.nvim',
		'sainnhe/gruvbox-material'
	},
	use {
		'L3MON4D3/LuaSnip',
		dependencies = { "rafamadriz/friendly-snippets" },
		config = function()
			require("luasnip/loaders/from_vscode").load({ paths = { "~/.local/share/nvim/site/pack/packer/start/friendly-snippets" } })
		end
	},
	use {'neoclide/coc.nvim', branch = 'master', run = 'npm ci'}
}
end)
