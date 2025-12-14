return {
	-- Markdown preview with Mermaid diagram support
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			-- Open preview in new browser tab
			vim.g.mkdp_auto_start = 0
			vim.g.mkdp_auto_close = 1
			vim.g.mkdp_refresh_slow = 0
			vim.g.mkdp_browser = ""
			-- Use dark theme
			vim.g.mkdp_theme = "dark"
			-- Enable mermaid diagrams
			vim.g.mkdp_preview_options = {
				mermaid = {
					theme = "dark",
				},
				katex = {},
				uml = {},
				disable_sync_scroll = 0,
				sync_scroll_type = "middle",
			}
		end,
		keys = {
			{ "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
			{ "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown Preview Stop" },
		},
	},

	-- Alternative: peek.nvim (requires Deno) - uncomment if you prefer
	-- {
	-- 	"toppair/peek.nvim",
	-- 	event = { "VeryLazy" },
	-- 	build = "deno task --quiet build:fast",
	-- 	config = function()
	-- 		require("peek").setup({
	-- 			theme = "dark",
	-- 			app = "browser",
	-- 		})
	-- 		vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
	-- 		vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
	-- 	end,
	-- },
}
