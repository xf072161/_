return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
		completion = {
			documentation = {
				auto_show = true,
				treesitter_highlighting = false
			},
			menu = {
				draw = {
					columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
          },
				}
			}
		},
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
