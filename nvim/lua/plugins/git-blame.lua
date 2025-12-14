return {
	-- Git blame (like VS Code GitLens - show commit message on hover/line)
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true, -- Show blame on current line
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
				delay = 300, -- Delay before showing blame (ms)
				ignore_whitespace = false,
			},
			current_line_blame_formatter = "   <author>, <author_time:%Y-%m-%d> - <summary>",
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
				untracked = { text = "▎" },
			},
			signs_staged = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
		},
		keys = {
			{ "<leader>gB", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle git blame" },
			{ "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview git hunk" },
			{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset git hunk" },
			{ "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset git buffer" },
			{ "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage git hunk" },
			{ "<leader>gS", "<cmd>Gitsigns stage_buffer<cr>", desc = "Stage git buffer" },
			{ "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Undo stage hunk" },
			{ "<leader>gd", "<cmd>Gitsigns diffthis<cr>", desc = "Diff this" },
			{
				"]h",
				function()
					require("gitsigns").nav_hunk("next")
				end,
				desc = "Next git hunk",
			},
			{
				"[h",
				function()
					require("gitsigns").nav_hunk("prev")
				end,
				desc = "Previous git hunk",
			},
		},
	},
}
