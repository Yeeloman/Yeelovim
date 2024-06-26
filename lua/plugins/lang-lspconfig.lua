-- check https://github.com/williamboman/mason-lspconfig.nvim
-- for more informations
-- and for each language server added add the configs from https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pyright
local on_attach = require("util.lspkeymap").on_attach
local diagnostic_signs = require("util.lspkeymap").diagnostic_signs

local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- lua
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = { -- custom settings for lua
			Lua = {
				-- make the language server recognize "vim" global
				diagnostics = {
					disable = true, -- Add this line to fix missing field
					disableScheme = true,
					globals = { "vim" },
				},
				workspace = {
					--[[ make language server aware of runtime files ]]
					library = {
						-- checkThirdParty = false,
						vim.env.VIMRUNTIME,
					},
				},
			},
		},
	})

	lspconfig.efm.setup({
		filetypes = { "lua" }, -- Add more filetypes as needed
		init_options = { documentFormatting = true },
		settings = {
			rootMarkers = { ".git/" }, -- Adjust this based on your project
			languages = {
				lua = {
					{ formatCommand = "lua-format -i", formatStdin = true },
				},
				-- Add more language configurations as needed
			},
		},
	})

	-- json
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jsonc" },
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	})

	-- typescript
	lspconfig.tsserver.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"typescript",
		},
		root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
	})

	-- bash
	lspconfig.bashls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "sh", "aliasrc" },
	})

	-- solidity
	lspconfig.solidity.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "solidity" },
	})

	-- typescriptreact, javascriptreact, css, sass, scss, less, svelte, vue
	lspconfig.emmet_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = {
			"typescriptreact",
			"javascriptreact",
			"javascript",
			"css",
			"sass",
			"scss",
			"less",
			"svelte",
			"vue",
			"html",
		},
	})

	-- docker
	lspconfig.dockerls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	-- C/C++
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
		},
	})

	-- html
	lspconfig.html.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
	-- css
	lspconfig.cssls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	-- Rust
	lspconfig.rust_analyzer.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	--golang
	lspconfig.gopls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "go" },
	})

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local autopep8 = require("efmls-configs.formatters.autopep8")
	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier_d = require("efmls-configs.formatters.prettier_d")
	local fixjson = require("efmls-configs.formatters.fixjson")
	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")
	local hadolint = require("efmls-configs.linters.hadolint")
	local solhint = require("efmls-configs.linters.solhint")
	local cpplint = require("efmls-configs.linters.cpplint")
	local clangformat = require("efmls-configs.formatters.clang_format")
	local golangci_lint = require("efmls-configs.linters.golangci_lint")
	-- local gci = require("efmls-configs.formatters.gci")
	-- local htmlbeautifier = require("efmls-configs.formatters.htmlbeautifier")
	-- local htmlhint = require("efmls-configs.linters.htmlhint")

	-- configure efm server
	lspconfig.efm.setup({
		filetypes = {
			"lua",
			"python",
			"json",
			"jsonc",
			"sh",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
			"vue",
			"markdown",
			"docker",
			"solidity",
			"html",
			"css",
			"c",
			"cpp",
			"rust",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, autopep8 },
				typescript = { eslint_d, prettier_d },
				json = { eslint_d, fixjson },
				jsonc = { eslint_d, fixjson },
				sh = { shellcheck, shfmt },
				javascript = { eslint_d, prettier_d },
				javascriptreact = { eslint_d, prettier_d },
				typescriptreact = { eslint_d, prettier_d },
				svelte = { eslint_d, prettier_d },
				vue = { eslint_d, prettier_d },
				markdown = { prettier_d },
				docker = { hadolint, prettier_d },
				solidity = { solhint },
				html = { prettier_d },
				-- html = { htmlhint, htmlbeautifier },
				css = { prettier_d },
				c = { clangformat, cpplint },
				cpp = { clangformat, cpplint },
				go = { golangci_lint--[[ , gci ]] },
			},
		},
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
	},
}
