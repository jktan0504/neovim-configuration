return {
	{
		"nvim-mini/mini.animate",
		event = "VeryLazy",
		opts = function()
			-- Don't use animate when scrolling with mouse
			local mouse_scrolled = false
			for _, scroll in ipairs({ "Up", "Down" }) do
				local key = "<ScrollWheel" .. scroll .. ">"
				vim.keymap.set({ "", "i" }, key, function()
					mouse_scrolled = true
					return key
				end, { expr = true })
			end

			local animate = require("mini.animate")
			return {
				resize = {
					timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
				},
				scroll = {
					timing = animate.gen_timing.linear({ duration = 150, unit = "total" }),
					subscroll = animate.gen_subscroll.equal({
						predicate = function(total_scroll)
							if mouse_scrolled then
								mouse_scrolled = false
								return false
							end
							return total_scroll > 1
						end,
					}),
				},
				cursor = {
					timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
					enable = true,
				},
				open = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
				},
				close = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
				},
			}
		end,
	},
}
