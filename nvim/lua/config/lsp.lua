vim.lsp.config("gopls", {
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
      },
    },
})

vim.lsp.enable("gopls")

vim.diagnostic.config({ underline = true, virtual_text = true, virtual_lines = true, signs = false })
