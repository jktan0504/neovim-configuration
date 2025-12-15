return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
		config = function(_, opts)
			require("solarized-osaka").setup(opts)
			vim.cmd.colorscheme("solarized-osaka")

			-- Schedule the color overrides to run after colorscheme loads
			vim.schedule(function()
				-- Load linkarzu colors
				local colors = require("config.colors")

				-- Apply linkarzu color overrides
				if colors.linkarzu_color10 then
					-- Base colors (transparent background)
					vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.linkarzu_color07, fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = colors.linkarzu_color09 })

					-- Neo-tree (much darker background)
					vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#020204", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#020204", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "#020204", fg = "#020204" })
					vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "#020204", fg = "#050508" })
					vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = "#020204", fg = "#050508" })
					vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { bg = "#020204", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { bg = "#020204", fg = colors.linkarzu_color09 })
					vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#040406" })
					vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#444444" })
					vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.linkarzu_color04 })
					vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.linkarzu_color04 })
					vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = colors.linkarzu_color02 })
					vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.linkarzu_color02 })
					vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.linkarzu_color05 })
					vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.linkarzu_color11 })
					vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#0a0a0f" })
					vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = colors.linkarzu_color04, bold = true })

					-- UI elements
					vim.api.nvim_set_hl(0, "Comment", { fg = "#5c6370", italic = true }) -- Muted gray for comments
					vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.linkarzu_color13 })
					vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.linkarzu_color04, bold = true })
					vim.api.nvim_set_hl(0, "LineNr", { fg = colors.linkarzu_color09 })
					vim.api.nvim_set_hl(0, "Visual", { bg = colors.linkarzu_color25 })
					vim.api.nvim_set_hl(0, "Cursor", { bg = colors.linkarzu_color24, fg = colors.linkarzu_color10 })
					vim.api.nvim_set_hl(0, "SignColumn", { bg = colors.linkarzu_color10 })

					-- Syntax highlighting with ULTRA NEON effect (brighter + glow)
					vim.api.nvim_set_hl(0, "Keyword", { fg = "#ff6ac1", bold = true }) -- Bright pink
					vim.api.nvim_set_hl(0, "Function", { fg = "#5af78e", bold = true }) -- Bright neon green
					vim.api.nvim_set_hl(0, "String", { fg = "#f3f99d", bold = true }) -- Bright neon yellow
					vim.api.nvim_set_hl(0, "Type", { fg = "#9aedfe", bold = true }) -- Bright cyan
					vim.api.nvim_set_hl(0, "Constant", { fg = "#caa9fa", bold = true }) -- Bright purple
					vim.api.nvim_set_hl(0, "Identifier", { fg = "#f8f8f2", bold = true })
					vim.api.nvim_set_hl(0, "Statement", { fg = "#ff6ac1", bold = true }) -- Bright pink
					vim.api.nvim_set_hl(0, "PreProc", { fg = "#ff6e6e", bold = true }) -- Bright red
					vim.api.nvim_set_hl(0, "Special", { fg = "#ffca85", bold = true }) -- Bright orange
					vim.api.nvim_set_hl(0, "Operator", { fg = "#ff6ac1", bold = true }) -- Bright pink
					vim.api.nvim_set_hl(0, "Number", { fg = "#caa9fa", bold = true }) -- Bright purple
					vim.api.nvim_set_hl(0, "Boolean", { fg = "#caa9fa", bold = true }) -- Bright purple

					-- Treesitter with ULTRA NEON glow effect
					vim.api.nvim_set_hl(0, "@keyword", { fg = "#ff6ac1", bold = true }) -- Bright pink
					vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#ff6e6e", bold = true }) -- Bright red
					vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@keyword.operator", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@keyword.import", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@function", { fg = "#5af78e", bold = true }) -- Bright neon green
					vim.api.nvim_set_hl(0, "@function.call", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@function.builtin", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@function.method", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@method", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@method.call", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@string", { fg = "#f3f99d", bold = true }) -- Bright neon yellow
					vim.api.nvim_set_hl(0, "@string.escape", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@string.regex", { fg = "#ff6e6e", bold = true })
					vim.api.nvim_set_hl(0, "@character", { fg = "#f3f99d", bold = true })
					vim.api.nvim_set_hl(0, "@type", { fg = "#9aedfe", bold = true }) -- Bright cyan
					vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#9aedfe", bold = true, italic = true })
					vim.api.nvim_set_hl(0, "@type.definition", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@constant", { fg = "#caa9fa", bold = true }) -- Bright purple
					vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "#caa9fa", bold = true })
					vim.api.nvim_set_hl(0, "@number", { fg = "#caa9fa", bold = true })
					vim.api.nvim_set_hl(0, "@number.float", { fg = "#caa9fa", bold = true })
					vim.api.nvim_set_hl(0, "@boolean", { fg = "#caa9fa", bold = true })
					vim.api.nvim_set_hl(0, "@variable", { fg = "#f8f8f2" })
					vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#ffca85", bold = true, italic = true })
					vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#ffca85", italic = true })
					vim.api.nvim_set_hl(0, "@variable.member", { fg = "#9aedfe" })
					vim.api.nvim_set_hl(0, "@property", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@attribute", { fg = "#5af78e" })
					vim.api.nvim_set_hl(0, "@parameter", { fg = "#ffca85", italic = true })
					vim.api.nvim_set_hl(0, "@namespace", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@module", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@tag", { fg = "#ff6ac1", bold = true }) -- Bright pink (HTML)
					vim.api.nvim_set_hl(0, "@tag.attribute", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = "#f8f8f2" })
					vim.api.nvim_set_hl(0, "@constructor", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#f8f8f2", bold = true })
					vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@punctuation.special", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@operator", { fg = "#ff6ac1", bold = true })
					vim.api.nvim_set_hl(0, "@comment", { fg = "#5c6370", italic = true }) -- Muted gray
					vim.api.nvim_set_hl(0, "@label", { fg = "#caa9fa", bold = true })

					-- LSP Semantic Tokens (for class names, parameters, etc.)
					vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = "#9aedfe", bold = true }) -- Cyan for class names
					vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.enum", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.struct", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.type", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = "#ffca85", italic = true }) -- Orange params
					vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = "#7dd3fc", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.method", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = "#e0e0e0" })
					vim.api.nvim_set_hl(0, "@lsp.type.namespace", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = "#ff6ac1", bold = true }) -- Pink for extends/implements

					-- PHP specific highlights
					vim.api.nvim_set_hl(0, "@lsp.type.class.php", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@type.php", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@constructor.php", { fg = "#9aedfe", bold = true })
					vim.api.nvim_set_hl(0, "@function.php", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@method.php", { fg = "#5af78e", bold = true })
					vim.api.nvim_set_hl(0, "@parameter.php", { fg = "#ffca85", italic = true })
					vim.api.nvim_set_hl(0, "@variable.parameter.php", { fg = "#ffca85", italic = true })

					-- Markdown headings
					vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { bg = colors.linkarzu_color18, fg = colors.linkarzu_color26, bold = true })
					vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { bg = colors.linkarzu_color19, fg = colors.linkarzu_color26, bold = true })
					vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { bg = colors.linkarzu_color20, fg = colors.linkarzu_color26, bold = true })
					vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { bg = colors.linkarzu_color21, fg = colors.linkarzu_color26, bold = true })
					vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { bg = colors.linkarzu_color22, fg = colors.linkarzu_color26, bold = true })
					vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { bg = colors.linkarzu_color23, fg = colors.linkarzu_color26, bold = true })

					-- StatusLine
					vim.api.nvim_set_hl(0, "StatusLine", { bg = colors.linkarzu_color17, fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "StatusLineNC", { bg = colors.linkarzu_color17, fg = colors.linkarzu_color09 })

					-- Lazy.nvim UI (make it visible)
					vim.api.nvim_set_hl(0, "LazyNormal", { bg = colors.linkarzu_color07, fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "LazyButton", { bg = colors.linkarzu_color13, fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "LazyButtonActive", { bg = colors.linkarzu_color04, fg = colors.linkarzu_color10, bold = true })
					vim.api.nvim_set_hl(0, "LazyH1", { bg = colors.linkarzu_color04, fg = colors.linkarzu_color10, bold = true })
					vim.api.nvim_set_hl(0, "LazyH2", { fg = colors.linkarzu_color04, bold = true })
					vim.api.nvim_set_hl(0, "LazyProp", { fg = colors.linkarzu_color02 })
					vim.api.nvim_set_hl(0, "LazyValue", { fg = colors.linkarzu_color03 })
					vim.api.nvim_set_hl(0, "LazyComment", { fg = colors.linkarzu_color09, italic = true })
					vim.api.nvim_set_hl(0, "LazyProgressDone", { fg = colors.linkarzu_color02, bold = true })
					vim.api.nvim_set_hl(0, "LazyProgressTodo", { fg = colors.linkarzu_color09 })
					vim.api.nvim_set_hl(0, "LazySpecial", { fg = colors.linkarzu_color05 })
					vim.api.nvim_set_hl(0, "LazyDimmed", { fg = colors.linkarzu_color09 })

					-- Snacks Explorer (dark purple/neon tint for contrast)
					vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#8be9fd", bold = true }) -- Cyan folders
					vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = "#f8f8f2" })
					vim.api.nvim_set_hl(0, "SnacksPickerGitAdded", { fg = "#50fa7b", bold = true }) -- Neon green
					vim.api.nvim_set_hl(0, "SnacksPickerGitModified", { fg = "#ffb86c", bold = true }) -- Orange
					vim.api.nvim_set_hl(0, "SnacksPickerGitDeleted", { fg = "#ff5555", bold = true }) -- Red
					vim.api.nvim_set_hl(0, "SnacksExplorerNormal", { bg = "#191326", fg = "#f8f8f2" }) -- Dark purple
					vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "#191326", fg = "#f8f8f2" })
					vim.api.nvim_set_hl(0, "SnacksWin", { bg = "#191326" })
					vim.api.nvim_set_hl(0, "SnacksWinBar", { bg = "#191326", fg = "#bd93f9" }) -- Purple title
					vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = "#191326", fg = "#6272a4" })
					vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = "#191326", fg = "#ff79c6", bold = true }) -- Pink title
					vim.api.nvim_set_hl(0, "SnacksPickerTree", { fg = "#44475a" })
					vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "#191326" })
					vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = "#191326" })
					vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = "#191326" })
					vim.api.nvim_set_hl(0, "SnacksPickerInput", { bg = "#21182e", fg = "#f8f8f2" }) -- Slightly lighter purple
					vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = "#50fa7b", bold = true }) -- Neon green match

					-- Editor darker/transparent
					vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", fg = colors.linkarzu_color14 })
					vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
					vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", fg = "#030305" })
					vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "#0a0a10" })
					vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", fg = "#0a0a10" })
				end

				-- Apply saved theme on startup
				local themes = require("config.themes")
				themes.apply_theme(themes.current_theme)
			end)
		end,
	},
}
