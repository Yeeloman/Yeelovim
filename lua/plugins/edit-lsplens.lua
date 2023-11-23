-- check https://github.com/VidocqH/lsp-lens.nvim
-- for more informations
local SymbolKind = vim.lsp.protocol.SymbolKind

local conf = {
	enable = true,
	include_declaration = false, -- Reference include declaration
	sections = { -- Enable / Disable specific request, formatter example looks 'Format Requests'
		definition = false,
		references = true,
		implements = true,
		git_authors = false,
	},
	ignore_filetype = {
		"prisma",
	},
	-- Target Symbol Kinds to show lens information
	target_symbol_kinds = { SymbolKind.Function, SymbolKind.Method, SymbolKind.Interface },
	-- Symbol Kinds that may have target symbol kinds as children
	wrapper_symbol_kinds = { SymbolKind.Class, SymbolKind.Struct },
}
return {
	"https://github.com/VidocqH/lsp-lens.nvim",
	-- lazy = false,
	event = "VeryLazy",
	config = function()
		require("lsp-lens").setup(conf)
	end,
}
