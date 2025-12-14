return {
	-- Mini.map - Fast and lightweight minimap
	{
		"nvim-mini/mini.map",
		version = false,
		config = function()
			local map = require("mini.map")
			map.setup({
				-- Highlight integrations (none by default)
				integrations = {
					map.gen_integration.builtin_search(),
					map.gen_integration.diagnostic({
						error = "DiagnosticFloatingError",
						warn = "DiagnosticFloatingWarn",
						info = "DiagnosticFloatingInfo",
						hint = "DiagnosticFloatingHint",
					}),
					map.gen_integration.gitsigns(),
				},

				-- Symbols used to display data
				symbols = {
					encode = map.gen_encode_symbols.dot("4x2"),
					scroll_line = "█",
					scroll_view = "┃",
				},

				-- Window options
				window = {
					focusable = true,
					side = "right", -- 'left' or 'right'
					show_integration_count = true,
					width = 15, -- Width of the map window
					winblend = 0, -- Transparency
					zindex = 10,
				},
			})

			-- Auto-open minimap on startup
			vim.defer_fn(function()
				map.open()
			end, 100)

			-- Keymaps
			vim.keymap.set("n", "<leader>mm", map.toggle, { desc = "Toggle minimap" })
			vim.keymap.set("n", "<leader>mr", map.refresh, { desc = "Refresh minimap" })
			vim.keymap.set("n", "<leader>mo", map.open, { desc = "Open minimap" })
			vim.keymap.set("n", "<leader>mc", map.close, { desc = "Close minimap" })
		end,
	},
}
