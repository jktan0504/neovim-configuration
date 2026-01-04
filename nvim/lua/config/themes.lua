-- ~/.config/nvim/lua/config/themes.lua
-- Custom neon themes based on user preferences

local M = {}

-- File to save current theme
local theme_file = vim.fn.stdpath("config") .. "/current_theme.txt"

-- Load saved theme or default to ultra_neon
local function load_saved_theme()
	local file = io.open(theme_file, "r")
	if file then
		local theme = file:read("*l")
		file:close()
		return theme or "ultra_neon"
	end
	return "ultra_neon"
end

-- Save current theme to file
local function save_theme(theme_name)
	local file = io.open(theme_file, "w")
	if file then
		file:write(theme_name)
		file:close()
	end
end

-- Current active theme
M.current_theme = load_saved_theme()

-- Theme definitions
M.themes = {
	-- Theme 1: Ultra Neon (Pink/Green/Yellow/Cyan/Purple) - SUPER BRIGHT
	ultra_neon = {
		name = "Ultra Neon",
		explorer_bg = "#191326", -- Dark purple
		explorer_input = "#21182e",
		explorer_border = "#6272a4",
		colors = {
			keyword = "#ff2d95", -- HOT pink
			func = "#39ff14", -- Electric neon green
			string = "#ffff00", -- Pure neon yellow
			type = "#00ffff", -- Pure cyan (class names)
			constant = "#bf5fff", -- Vivid purple
			variable = "#e0e0e0", -- Light gray (not pure white)
			param = "#ff9500", -- Vivid orange
			red = "#ff3333", -- Bright red
			comment = "#5c6370", -- Muted gray
			property = "#7dd3fc", -- Light cyan
			tag = "#ff2d95",
			tag_attr = "#39ff14",
			class_name = "#00ffff", -- Cyan for class names
			extends = "#ff2d95", -- Pink for extends keyword
		},
	},

	-- Theme 2: Cyber Ocean (Blue/Teal/Aqua focused) - ELECTRIC
	cyber_ocean = {
		name = "Cyber Ocean",
		explorer_bg = "#0a1628", -- Dark navy blue
		explorer_input = "#0f1f35",
		explorer_border = "#1e3a5f",
		colors = {
			keyword = "#00e5ff", -- Electric cyan
			func = "#00ff87", -- Bright aqua green
			string = "#69ff94", -- Bright mint
			type = "#40c4ff", -- Vivid sky blue (class names)
			constant = "#82b1ff", -- Bright blue
			variable = "#e0e0e0", -- Light gray
			param = "#ffab40", -- Bright orange
			red = "#ff5252", -- Bright red
			comment = "#546e7a", -- Muted blue-gray
			property = "#80deea", -- Light cyan
			tag = "#69ff94",
			tag_attr = "#40c4ff",
			class_name = "#40c4ff", -- Sky blue for class names
			extends = "#00e5ff", -- Cyan for extends
		},
	},

	-- Theme 3: Synthwave (Retro 80s neon) - MAXIMUM 80s
	synthwave = {
		name = "Synthwave",
		explorer_bg = "#1a1025", -- Dark magenta
		explorer_input = "#241530",
		explorer_border = "#4a3060",
		colors = {
			keyword = "#ff00ff", -- Pure magenta
			func = "#00ffff", -- Pure cyan
			string = "#ffff00", -- Pure yellow
			type = "#ff1493", -- Deep pink (class names)
			constant = "#ee82ee", -- Violet
			variable = "#e0e0e0", -- Light gray
			param = "#ff8c00", -- Dark orange
			red = "#ff0000", -- Pure red
			comment = "#6a5a7a", -- Muted purple-gray
			property = "#da70d6", -- Orchid
			tag = "#00ffff",
			tag_attr = "#ff00ff",
			class_name = "#ff1493", -- Deep pink for class names
			extends = "#ff00ff", -- Magenta for extends
		},
	},

	-- Theme 4: Neon Blast (Ocean Neon with high contrast)
	neon_blast = {
		name = "Neon Blast",
		explorer_bg = "#0a1628", -- Same as Cyber Ocean
		explorer_input = "#0f1f35",
		explorer_border = "#00ffff",
		colors = {
			keyword = "#38bdf8", -- SKY BLUE for keywords (use, public, function, extends, return)
			func = "#39ff14", -- NEON GREEN for functions
			string = "#ffff00", -- NEON YELLOW for strings
			type = "#ff2d95", -- HOT PINK for class names (ContractController, Controller)
			constant = "#ff9500", -- NEON ORANGE for constants/numbers
			variable = "#e0e0e0", -- WHITE/LIGHT GRAY for variables ($item, $data)
			param = "#00fff2", -- ELECTRIC CYAN for parameters
			red = "#ff5555", -- BRIGHT RED for errors
			comment = "#6a7a8a", -- Muted gray
			property = "#7dffdc", -- AQUAMARINE for properties (->name, ->id)
			tag = "#ff2d95",
			tag_attr = "#39ff14",
			class_name = "#ff2d95", -- HOT PINK for class names
			extends = "#38bdf8", -- Sky blue for extends keyword
			-- Blade specific
			blade_directive = "#00e5ff", -- Cyan for @if, @foreach etc
			blade_echo = "#00ff7f", -- Green for {{ }}
		},
	},

	-- Theme 5: Matrix (Green focused) - PURE GREEN HACKER
	matrix = {
		name = "Matrix",
		explorer_bg = "#0a1510", -- Very dark green
		explorer_input = "#0f1f18",
		explorer_border = "#1a3025",
		colors = {
			keyword = "#00ff00", -- Pure green
			func = "#39ff14", -- Neon green
			string = "#7cfc00", -- Lawn green
			type = "#00ff7f", -- Spring green (class names)
			constant = "#32cd32", -- Lime green
			variable = "#b0ffb0", -- Very light green
			param = "#adff2f", -- Green yellow
			red = "#ff4500", -- Orange red
			comment = "#3d5a3d", -- Muted dark green
			property = "#98fb98", -- Pale green
			tag = "#39ff14",
			tag_attr = "#7cfc00",
			class_name = "#00ff7f", -- Spring green for class names
			extends = "#00ff00", -- Pure green for extends
		},
	},
}

-- Apply theme
function M.apply_theme(theme_name)
	local theme = M.themes[theme_name]
	if not theme then
		vim.notify("Theme not found: " .. theme_name, vim.log.levels.ERROR)
		return
	end

	M.current_theme = theme_name
	save_theme(theme_name) -- Save to file for persistence
	local c = theme.colors

	-- Snacks Explorer
	vim.api.nvim_set_hl(0, "SnacksExplorerNormal", { bg = theme.explorer_bg, fg = c.variable })
	vim.api.nvim_set_hl(0, "SnacksNormal", { bg = theme.explorer_bg, fg = c.variable })
	vim.api.nvim_set_hl(0, "SnacksWin", { bg = theme.explorer_bg })
	vim.api.nvim_set_hl(0, "SnacksWinBar", { bg = theme.explorer_bg, fg = c.keyword })
	vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = theme.explorer_bg, fg = theme.explorer_border })
	vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = theme.explorer_bg, fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "SnacksPicker", { bg = theme.explorer_bg })
	vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = theme.explorer_bg })
	vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = theme.explorer_bg })
	vim.api.nvim_set_hl(0, "SnacksPickerInput", { bg = theme.explorer_input, fg = c.variable })
	vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = c.variable })
	vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "SnacksPickerGitAdded", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "SnacksPickerGitModified", { fg = c.param, bold = true })
	vim.api.nvim_set_hl(0, "SnacksPickerGitDeleted", { fg = c.red, bold = true })

	-- Syntax highlighting
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Function", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "String", { fg = c.string, bold = true })
	vim.api.nvim_set_hl(0, "Type", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "Constant", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.variable, bold = true })
	vim.api.nvim_set_hl(0, "Statement", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "PreProc", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Include", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Define", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Special", { fg = c.param, bold = true })
	vim.api.nvim_set_hl(0, "Operator", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Number", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "Boolean", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })

	-- Treesitter
	vim.api.nvim_set_hl(0, "@keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.red, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.operator", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.import", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@function", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@function.call", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@function.builtin", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "@function.method", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@method", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@method.call", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@string", { fg = c.string, bold = true })
	vim.api.nvim_set_hl(0, "@string.escape", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@string.regex", { fg = c.red, bold = true })
	vim.api.nvim_set_hl(0, "@character", { fg = c.string, bold = true })
	vim.api.nvim_set_hl(0, "@type", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.type, bold = true, italic = true })
	vim.api.nvim_set_hl(0, "@constant", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "@constant.builtin", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "@number", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "@boolean", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "@variable", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@variable.builtin", { fg = c.param, bold = true, italic = true })
	vim.api.nvim_set_hl(0, "@variable.parameter", { fg = c.param, italic = true })
	vim.api.nvim_set_hl(0, "@property", { fg = c.property, bold = true })
	vim.api.nvim_set_hl(0, "@parameter", { fg = c.param, italic = true })
	vim.api.nvim_set_hl(0, "@namespace", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "@tag", { fg = c.tag, bold = true })
	vim.api.nvim_set_hl(0, "@tag.attribute", { fg = c.tag_attr, bold = true })
	vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@constructor", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = c.variable, bold = true })
	vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@operator", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@comment", { fg = c.comment, italic = true })

	-- PHP/Class-specific highlights
	vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.enum", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.struct", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.type", { fg = c.type, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = c.param, italic = true })
	vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = c.property, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.method", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@lsp.type.namespace", { fg = c.type, bold = true })

	-- Class definition and inheritance
	vim.api.nvim_set_hl(0, "@type.definition", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = c.extends, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.type", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@storageclass", { fg = c.keyword, bold = true })

	-- PHP specific
	vim.api.nvim_set_hl(0, "@lsp.type.class.php", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@type.php", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@constructor.php", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@function.php", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@method.php", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@parameter.php", { fg = c.param, italic = true })
	vim.api.nvim_set_hl(0, "@variable.parameter.php", { fg = c.param, italic = true })
	vim.api.nvim_set_hl(0, "@keyword.php", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.function.php", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.import.php", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@keyword.modifier.php", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "phpKeyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "phpInclude", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "phpUseKeyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "phpClassKeyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "phpFunctionKeyword", { fg = c.keyword, bold = true })

	-- TypeScript/JavaScript specific
	vim.api.nvim_set_hl(0, "@lsp.type.class.typescript", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.class.javascript", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@lsp.type.interface.typescript", { fg = c.class_name, bold = true, italic = true })

	-- Go specific
	vim.api.nvim_set_hl(0, "@type.go", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@function.go", { fg = c.func, bold = true })

	-- Python specific
	vim.api.nvim_set_hl(0, "@type.python", { fg = c.class_name, bold = true })
	vim.api.nvim_set_hl(0, "@function.python", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@parameter.python", { fg = c.param, italic = true })

	-- Blade/Laravel specific
	vim.api.nvim_set_hl(0, "@keyword.blade", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@function.blade", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@tag.blade", { fg = c.tag, bold = true })
	vim.api.nvim_set_hl(0, "@punctuation.special.blade", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "BladeDirective", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "BladeEcho", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "@text.blade", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@injection.blade", { fg = c.func })
	-- Blade directives like @if, @foreach, @extends
	vim.api.nvim_set_hl(0, "@keyword.directive.blade", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@constant.blade", { fg = c.constant, bold = true })
	-- HTML in Blade
	vim.api.nvim_set_hl(0, "@tag.html", { fg = c.tag, bold = true })
	vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = c.tag_attr, bold = true })
	vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@string.html", { fg = c.string, bold = true })
	-- Embedded PHP in Blade
	vim.api.nvim_set_hl(0, "@embedded", { fg = c.func })
	vim.api.nvim_set_hl(0, "phpRegion", { fg = c.variable })
	vim.api.nvim_set_hl(0, "bladePhpParenBlock", { fg = c.param })
	vim.api.nvim_set_hl(0, "bladeDirective", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "bladeEchoDelimiter", { fg = c.func, bold = true })

	vim.notify("Theme switched to: " .. theme.name, vim.log.levels.INFO)
end

-- Get list of available themes
function M.get_themes()
	local names = {}
	for name, theme in pairs(M.themes) do
		table.insert(names, { id = name, name = theme.name })
	end
	return names
end

-- Cycle to next theme
function M.next_theme()
	local theme_list = { "ultra_neon", "cyber_ocean", "synthwave", "neon_blast", "matrix" }
	local current_idx = 1
	for i, name in ipairs(theme_list) do
		if name == M.current_theme then
			current_idx = i
			break
		end
	end
	local next_idx = (current_idx % #theme_list) + 1
	M.apply_theme(theme_list[next_idx])
end

return M
