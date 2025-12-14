return {
	-- Flutter/Dart development tools
	-- This plugin auto-configures dartls (Dart LSP) - do NOT configure dartls in lspconfig
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for better UI
		},
		config = function()
			require("flutter-tools").setup({
				-- Flutter SDK path (auto-detected, but explicit path as fallback)
				flutter_path = "/Users/jktan/Documents/Softwares/Mobile/Flutter/sdk/bin/flutter",
				ui = {
					border = "rounded",
					notification_style = "native", -- or "plugin" for nvim-notify
				},
				decorations = {
					statusline = {
						app_version = true,
						device = true,
						project_config = false,
					},
				},
				debugger = {
					enabled = true,
					run_via_dap = true,
					exception_breakpoints = {},
					-- Register dart-debug-adapter if installed via Mason
					register_configurations = function(paths)
						require("dap").configurations.dart = {
							{
								type = "dart",
								request = "launch",
								name = "Launch Flutter",
								dartSdkPath = paths.dart_sdk,
								flutterSdkPath = paths.flutter_sdk,
								program = "${workspaceFolder}/lib/main.dart",
								cwd = "${workspaceFolder}",
							},
						}
					end,
				},
				fvm = false, -- if using Flutter Version Manager
				widget_guides = {
					enabled = true,
				},
				closing_tags = {
					enabled = true,
					highlight = "Comment",
					prefix = "// ",
				},
				dev_log = {
					enabled = true,
					notify_errors = false,
					open_cmd = "tabedit",
				},
				dev_tools = {
					autostart = false,
					auto_open_browser = false,
				},
				outline = {
					open_cmd = "30vnew",
					auto_open = false,
				},
				lsp = {
					color = {
						enabled = true,
						background = true,
						virtual_text = true,
						virtual_text_str = "■",
					},
					settings = {
						showTodos = true,
						completeFunctionCalls = true,
						analysisExcludedFolders = {
							vim.fn.expand("$HOME/.pub-cache"),
						},
						renameFilesWithClasses = "prompt",
						enableSnippets = true,
						updateImportsOnRename = true,
					},
				},
			})

			-- Keymaps for Flutter commands
			vim.keymap.set("n", "<leader>Fr", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
			vim.keymap.set("n", "<leader>Fd", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
			vim.keymap.set("n", "<leader>Fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter Emulators" })
			vim.keymap.set("n", "<leader>Fh", "<cmd>FlutterReload<cr>", { desc = "Flutter Hot Reload" })
			vim.keymap.set("n", "<leader>FR", "<cmd>FlutterRestart<cr>", { desc = "Flutter Hot Restart" })
			vim.keymap.set("n", "<leader>Fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })
			vim.keymap.set("n", "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter Outline" })
			vim.keymap.set("n", "<leader>Ft", "<cmd>FlutterDevTools<cr>", { desc = "Flutter DevTools" })
			vim.keymap.set("n", "<leader>Fl", "<cmd>FlutterLspRestart<cr>", { desc = "Flutter LSP Restart" })
			vim.keymap.set("n", "<leader>Fp", "<cmd>FlutterPubGet<cr>", { desc = "Flutter Pub Get" })
		end,
	},
}
