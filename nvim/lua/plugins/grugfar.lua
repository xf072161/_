return {
    'MagicDuck/grug-far.nvim',
    -- Note (lazy loading): grug-far.lua defers all it's requires so it's lazy by default
    -- additional lazy config to defer loading is not really needed...
    config = function()
      -- optional setup call to override plugin options
      -- alternatively you can set options with vim.g.grug_far = { ... }
      require('grug-far').setup({
        -- options, see Configuration section below
        -- there are no required options atm
				windowCreationCommand = 'tab split',
				startInInsertMode = false,
				openTargetWindow = {
						-- filter for windows to exclude when considering candidate targets. It's a list of either:
						-- * filetype to exclude
						-- * filter function of the form: function(winid: number): boolean (return true to exclude)
						exclude = {},

						-- preferred location for target window relative to the grug-far window. If an existing candidate
						-- window that is not excluded by the exclude filter exists in that direction, it will be reused,
						-- otherwise a new window will be created in that direction.
						-- available options: "prev" | "left" | "right" | "above" | "below"
						preferredLocation = 'right',

						-- use a temporary scratch buffer, in order to prevent language servers starting up and
						-- consuming resources as you are moving through the results. The buffer is converted to
						-- a real buffer once you navigate to it explicitly
						useScratchBuffer = true,
				}
      });
    end
}
