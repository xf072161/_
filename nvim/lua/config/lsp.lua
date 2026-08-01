vim.lsp.config("lua_ls", {
		--@type lspconfig.settings.lua_ls
		cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { '.git', '.luarc.json', '.luarc.jsonc' },
    capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config("buf_lsp", {
		--@type lspconfig.settings.buf_lsp
		cmd = { 'buf', 'lsp', 'serve' },
    filetypes = { 'proto' },
    root_markers = { 'buf.yaml', '.git' },
    capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config("rust_analyzer", {
		--@type lspconfig.settings.rust_analyzer
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", "rust-project.json" },
	capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config("gopls", {
		--@type lspconfig.settings.gopls
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod" },
    capabilities = require('blink.cmp').get_lsp_capabilities(),
    settings = {
      gopls = {
        semanticTokens = true,
        usePlaceholders = true,
        staticcheck = true,
        buildFlags = { "-tags=acceptance,functional" },
				codelenses = {
					test = true,
				},
        analyses = {
          ST1000 = false,
        },
				hints = {
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
      },
      },
    },
})

vim.lsp.enable("gopls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("lua_ls")
vim.lsp.enable("buf_lsp")

vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
