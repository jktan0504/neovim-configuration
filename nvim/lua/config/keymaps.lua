local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)

vim.api.nvim_create_user_command("ToggleAutoformat", function()
	require("craftzdog.lsp").toggleAutoformat()
end, {})

-- Terminal keymaps (VSCode-like bottom terminal)
-- Use Ctrl+` or Ctrl+j to toggle terminal at bottom
keymap.set("n", "<C-`>", function()
	vim.cmd("ToggleTerm direction=horizontal")
end, { desc = "Toggle bottom terminal" })

keymap.set("t", "<C-`>", function()
	vim.cmd("ToggleTerm")
end, { desc = "Toggle terminal from terminal mode" })

-- Alternative keybind if Ctrl+` doesn't work
keymap.set("n", "<leader>tt", function()
	vim.cmd("ToggleTerm direction=horizontal size=15")
end, { desc = "Toggle bottom terminal" })

keymap.set("n", "<leader>tf", function()
	vim.cmd("ToggleTerm direction=float")
end, { desc = "Toggle floating terminal" })

keymap.set("n", "<leader>tv", function()
	vim.cmd("ToggleTerm direction=vertical size=80")
end, { desc = "Toggle vertical terminal" })

-- Exit terminal mode easily
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
keymap.set("t", "<C-w>", "<C-\\><C-n><C-w>", { desc = "Window navigation from terminal" })

-- Theme switching
keymap.set("n", "<leader>Tn", function()
	require("config.themes").next_theme()
end, { desc = "Next neon theme" })

keymap.set("n", "<leader>T1", function()
	require("config.themes").apply_theme("ultra_neon")
end, { desc = "Ultra Neon theme" })

keymap.set("n", "<leader>T2", function()
	require("config.themes").apply_theme("cyber_ocean")
end, { desc = "Cyber Ocean theme" })

keymap.set("n", "<leader>T3", function()
	require("config.themes").apply_theme("synthwave")
end, { desc = "Synthwave theme" })

keymap.set("n", "<leader>T4", function()
	require("config.themes").apply_theme("matrix")
end, { desc = "Matrix theme" })
