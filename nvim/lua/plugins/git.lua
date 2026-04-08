return {
	'lewis6991/gitsigns.nvim',
	config = function()
		local gs = require('gitsigns')

		gs.setup({
			signs = {
				add          = { text = '┃' },
				change       = { text = '┃' },
				delete       = { text = '┃' },
				topdelete    = { text = '┃' },
				changedelete = { text = '┃' },
				untracked    = { text = '┃' },
		  }
		})
	end
}

