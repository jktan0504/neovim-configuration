# Minimap & Terminal Setup - VSCode-like Features

## ✅ What's Been Added

### 1. **Minimap (like VSCode)**
Plugin: [mini.map by echasnovski](https://github.com/echasnovski/mini.map)

**Features:**
- Shows code overview on the right side
- Displays git changes, diagnostics, search results
- Fast and lightweight (part of mini.nvim)
- Auto-opens on startup
- Scrollable minimap

**Why mini.map?**
- Fastest performance (async rendering)
- No external dependencies
- Built-in LSP/Git integration
- Pure Lua (no Rust/external binaries needed)
- Part of the trusted mini.nvim ecosystem

**Alternative plugins researched:**
- [neominimap.nvim](https://github.com/Isrothy/neominimap.nvim) - More features but heavier
- [minimap.vim](https://github.com/wfxr/minimap.vim) - Requires Rust binary
- [codewindow.nvim](https://neovimcraft.com/plugin/gorbit99/codewindow.nvim/) - Less maintained

---

### 2. **Bottom Terminal (like VSCode)**
Plugin: [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

**Features:**
- Toggle terminal at bottom/float/vertical
- Multiple terminals support
- Persists size and state
- VSCode-like behavior

---

## 🎮 Minimap Keybindings

| Key | Action |
|-----|--------|
| `<leader>mm` | Toggle minimap on/off |
| `<leader>mo` | Open minimap |
| `<leader>mc` | Close minimap |
| `<leader>mr` | Refresh minimap |

**Note:** Minimap **auto-opens** when you start Neovim!

---

## 🖥️ Terminal Keybindings (VSCode-like)

### Toggle Terminal
| Key | Action |
|-----|--------|
| `<C-\`>` | Toggle bottom terminal (Ctrl + backtick) |
| `<leader>tt` | Toggle bottom terminal (Space + tt) |
| `<leader>tf` | Toggle floating terminal |
| `<leader>tv` | Toggle vertical terminal |

### Inside Terminal
| Key | Action |
|-----|--------|
| `<Esc><Esc>` | Exit terminal mode (back to normal mode) |
| `<C-w>` | Window navigation from terminal |
| `<C-\`>` | Close terminal |

---

## 💡 Why `<C-\`>` Instead of `Cmd+/`?

**The Problem:**
- `Cmd+/` (Command + /) is intercepted by **Warp terminal** before Neovim sees it
- Terminal emulators capture Cmd keys for their own shortcuts

**The Solution:**
- `<C-\`>` (Ctrl + backtick) is the **VSCode default** for terminal toggle
- Works in any terminal emulator
- Not captured by Warp

**Alternative if Ctrl+` doesn't work:**
Use `<leader>tt` (Space + t + t) instead!

---

## 🚀 How to Use

### First Time Setup:

1. **Restart Neovim**:
   ```bash
   nvim
   ```

2. **Minimap will auto-open** on the right side

3. **Open terminal** with `Ctrl+\`` or `<leader>tt`

4. **In terminal**, type commands:
   ```bash
   ls
   git status
   npm run dev
   ```

5. **Exit terminal mode** with `Esc Esc`

6. **Close terminal** with `Ctrl+\`` again

---

## 📊 Minimap Features

### What Shows in Minimap:
- ✅ **Code structure** - Functions, classes, variables
- ✅ **Diagnostics** - Errors (red), warnings (yellow)
- ✅ **Git changes** - Modified lines
- ✅ **Search results** - Highlighted when searching
- ✅ **Current view** - Shows where you are in the file

### Minimap Position:
- Right side by default
- Width: 15 columns
- Fixed to window height

### Click on Minimap:
- Click anywhere to jump to that section

---

## 🎯 Terminal Options

### Bottom Terminal (Default):
```vim
<leader>tt
```
- Opens at bottom
- 15 rows height
- Like VSCode integrated terminal

### Floating Terminal:
```vim
<leader>tf
```
- Floats in center of screen
- Curved borders
- Great for quick commands

### Vertical Terminal:
```vim
<leader>tv
```
- Opens on right side
- 40% of window width
- Good for long-running processes

---

## 🔧 Customization

### Change Minimap Side:
Edit `/Users/jktan/.config/nvim/lua/plugins/minimap.lua`:
```lua
window = {
  side = "left", -- Change to 'left'
}
```

### Change Terminal Height:
Edit `/Users/jktan/.config/nvim/lua/plugins/toggleterm.lua`:
```lua
size = function(term)
  if term.direction == "horizontal" then
    return 20 -- Change from 15 to 20
  end
end
```

### Disable Auto-open Minimap:
Edit `/Users/jktan/.config/nvim/lua/plugins/minimap.lua`:
```lua
-- Comment out or remove this:
-- vim.defer_fn(function()
--   map.open()
-- end, 100)
```

---

## 🎨 Visual Integration

### Minimap Colors:
- Uses your Neovim colorscheme automatically
- Shows diagnostics in diagnostic colors
- Git changes in git colors

### Terminal Colors:
- Uses your shell theme
- Transparent background option available
- Matches Neovim aesthetics

---

## 📝 Tips

1. **Multiple Terminals**: Each `<leader>tt` creates a new terminal instance
2. **Navigate in Terminal**: Use `<C-w>` then normal Vim navigation
3. **Resize Terminal**: In normal mode, use `<C-w>+` or `<C-w>-`
4. **Minimap Focus**: Click on minimap or use `<leader>mo` then navigate with j/k
5. **Quick Exit**: `<Esc><Esc>` is faster than `<C-\><C-n>`

---

## 🐛 Troubleshooting

### Minimap not showing?
1. Check `:Lazy` - make sure mini.map is installed
2. Run `:lua require('mini.map').open()`
3. Try `<leader>mm` to toggle

### Terminal not opening?
1. Try `<leader>tt` instead of `Ctrl+\``
2. Check `:Lazy` - make sure toggleterm.nvim is installed
3. Run `:ToggleTerm`

### Ctrl+` not working in Warp?
- Use `<leader>tt` (Space + t + t) instead
- Or configure Warp to not capture Ctrl+`

---

## 🔗 Resources

- [mini.map Documentation](https://github.com/echasnovski/mini.map)
- [toggleterm.nvim Documentation](https://github.com/akinsho/toggleterm.nvim)
- [Neovim Minimap Comparison](https://dotfyle.com/neovim/plugins/trending)

---

**Enjoy your VSCode-like minimap and terminal in Neovim! 🚀**

Restart Neovim now to see the minimap auto-open!
