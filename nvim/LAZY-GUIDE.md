# Lazy.nvim Plugin Manager Guide

## 🚀 How to Use Lazy

### Opening Lazy
In Neovim, type:
```vim
:Lazy
```

---

## ⌨️ Lazy Keybindings (Inside :Lazy window)

### Main Actions
| Key | Action | Description |
|-----|--------|-------------|
| `I` | **Install** | Install missing plugins (capital I, not Shift+I) |
| `U` | **Update** | Update all plugins |
| `S` | **Sync** | Sync (clean + install + update) |
| `C` | **Clean** | Remove unused plugins |
| `X` | **Clear** | Clear finished tasks |
| `L` | **Log** | Show recent updates |
| `R` | **Restore** | Restore to lockfile state |
| `P` | **Profile** | Show profile info |

### Navigation
| Key | Action |
|-----|--------|
| `<CR>` or `Enter` | Open plugin details |
| `<Tab>` | Next tab |
| `<S-Tab>` | Previous tab |
| `q` | Close Lazy window |
| `j/k` | Move up/down in list |
| `/` | Search plugins |

### Plugin Details (when viewing a plugin)
| Key | Action |
|-----|--------|
| `gx` | Open GitHub page in browser |
| `<CR>` | Show plugin details/readme |
| `<BS>` | Go back |

---

## 🎯 Common Tasks

### Install All Missing Plugins
1. Type `:Lazy`
2. Press **`I`** (capital I - just press `i` while in normal mode, NOT Shift+I)
3. Wait for installation to complete
4. Press `q` to close

### Update All Plugins
1. Type `:Lazy`
2. Press **`U`** (capital U)
3. Wait for updates
4. Press `q` to close

### Sync Everything (Recommended)
1. Type `:Lazy`
2. Press **`S`** (capital S)
3. This will:
   - Clean unused plugins
   - Install missing plugins
   - Update existing plugins
4. Press `q` to close

### Check Plugin Status
1. Type `:Lazy`
2. Look at the list:
   - ✓ = Installed
   - ⚠ = Has updates
   - ✗ = Not installed
3. Press `q` to close

---

## 🎨 Lazy UI Colors (Fixed!)

Now the Lazy window has:
- **Visible background** (darker gray, not transparent)
- **Purple headers** for sections
- **Green** for installed/done
- **Cyan** for values
- **Yellow** for special items
- **Purple active buttons**

You should easily see the difference now!

---

## 🔧 Troubleshooting

### Can't see Lazy window clearly?
- **Fixed!** The background is now darker (#141b22) so it's visible
- Restart Neovim to apply the new colors

### "I" key not working?
- Make sure you're pressing **lowercase `i`** in normal mode (not insert mode)
- Try pressing `Esc` first to ensure you're in normal mode, then `i`
- It's capital I in the UI, but you just press `i`

### Plugins not installing?
1. Check internet connection
2. Try `:Lazy sync` instead
3. Run `:checkhealth lazy` to diagnose
4. Try `:Lazy clear` then `:Lazy install`

### Still having issues?
1. Close Lazy with `q`
2. Restart Neovim completely
3. Run `:Lazy sync`

---

## 📋 Quick Workflow

### Daily Update Workflow:
```vim
:Lazy       " Open Lazy
S           " Sync everything
q           " Close when done
```

### Install New Plugin Workflow:
1. Add plugin to your config (e.g., `~/.config/nvim/lua/plugins/myplugin.lua`)
2. Save the file
3. Run `:Lazy` (it will auto-detect new plugin)
4. Press `I` to install
5. Press `q` to close
6. Restart Neovim

### Check for Updates:
```vim
:Lazy       " Open Lazy
             " Look for ⚠ symbols (means updates available)
U           " Update all
q           " Close
```

---

## 🎯 Status Symbols in Lazy

| Symbol | Meaning |
|--------|---------|
| ✓ | Plugin installed and up to date |
| ⚠ | Update available |
| ✗ | Not installed / Error |
| ⏳ | Installing / Updating |
| 󰄲 | Loaded |
| 󰒲 | Not loaded (lazy-loaded) |

---

## 💡 Pro Tips

1. **Use `S` (Sync)** instead of individual commands - it does everything
2. **Press `/`** to search for specific plugins in the list
3. **Use Mason** for language servers (`:Mason`), Lazy is for Neovim plugins
4. **Lazy auto-installs** new plugins when you add them to config
5. **Check logs** with `L` if something fails

---

## 🔑 Remember

- **Capital letters** in Lazy = just press the lowercase key in normal mode
  - `I` = Press `i`
  - `U` = Press `u`
  - `S` = Press `s`
- **Not Shift+Key**, just the key itself!
- Make sure you're in **normal mode** (press `Esc` if unsure)

---

## 📖 Related Commands

| Command | What It Does |
|---------|-------------|
| `:Lazy` | Open Lazy UI |
| `:Lazy sync` | Sync from command line |
| `:Lazy install` | Install from command line |
| `:Lazy update` | Update from command line |
| `:Lazy clean` | Clean from command line |
| `:LazyHealth` | Check Lazy health |
| `:Mason` | Open Mason (for LSP servers) |

---

**Now try it!**
1. Restart Neovim
2. Type `:Lazy`
3. Press `i` to install missing plugins
4. Watch the neon-colored, visible UI! 🎨✨
