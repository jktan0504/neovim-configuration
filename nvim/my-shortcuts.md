# My Neovim Quick Reference

> Leader key: `Space`

---

## Theme Switching

| Key | Action |
|-----|--------|
| `<Space>T1` | Ultra Neon theme |
| `<Space>T2` | Cyber Ocean theme |
| `<Space>T3` | Synthwave theme |
| `<Space>T4` | Matrix theme |
| `<Space>Tn` | Cycle to next theme |

---

## Error / Diagnostic Messages

| Key | Action |
|-----|--------|
| `<Space>cy` | Copy error message to clipboard |
| `<Space>ce` | Show full error in floating window |
| `<Space>xx` | Open Trouble (all errors in panel) |
| `<C-w>d` | Show diagnostic float |
| `]d` | Jump to next error |
| `[d` | Jump to previous error |
| `]e` | Jump to next error only |
| `[e` | Jump to previous error only |

---

## Search Files

| Key | Action |
|-----|--------|
| `;f` | Find file by name |
| `<Space>ff` | Find file (alternative) |
| `<Space>fr` | Recent files |
| `<Space>e` | Open file explorer |

---

## Search Text

| Key | Action |
|-----|--------|
| `;r` | Search text in all files (grep) |
| `<Space>/` | Search text in directory |
| `<Space>sg` | Grep in root directory |
| `<Space>sw` | Search word under cursor |
| `/` | Search in current file |
| `n` / `N` | Next / previous search result |
| `*` | Search word under cursor (current file) |

---

## Replace Text

### In Current File
| Command | Action |
|---------|--------|
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirm |
| `:s/old/new/g` | Replace in current line |
| `ciw` then type | Change word under cursor |

### In Multiple Files
| Key / Command | Action |
|---------------|--------|
| `<Space>sr` | Search and replace (Spectre) |
| `:cdo s/old/new/g` | Replace in all quickfix results |

**Using Spectre (recommended):**
1. Press `<Space>sr` to open Spectre
2. Type search term
3. Type replacement
4. Press `<CR>` to replace one, or `R` to replace all

---

## Create File

| Method | How |
|--------|-----|
| Command | `:e path/to/newfile.php` then `:w` |
| Explorer | `<Space>e` then `a` to add file |
| New buffer | `:enew` then `:w filename` |

---

## Delete File

| Method | How |
|--------|-----|
| Explorer | `<Space>e`, navigate to file, press `d` |
| Command | `:!rm path/to/file` |

---

## Copy / Rename / Move File

| Action | How |
|--------|-----|
| Copy | Explorer `<Space>e` → `c` (copy) → navigate → `p` (paste) |
| Rename | Explorer `<Space>e` → `r` |
| Move | Explorer `<Space>e` → `x` (cut) → navigate → `p` (paste) |

---

## File Explorer (`<Space>e`)

| Key | Action |
|-----|--------|
| `a` | Add new file/folder |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `x` | Cut |
| `p` | Paste |
| `y` | Copy filename |
| `Y` | Copy full path |
| `H` | Toggle hidden files |

---

## Git

| Key | Action |
|-----|--------|
| `<Space>gg` | Open Lazygit |
| `<Space>gB` | Toggle git blame |
| `<Space>gp` | Preview git change |
| `]h` / `[h` | Next / previous git change |

---

## LSP (Code Intelligence)

| Key | Action |
|-----|--------|
| `gd` | Go to definition (jump to method/class) |
| `gr` | Find all references (where it's used) |
| `gD` | Go to declaration |
| `gy` | Go to type definition |
| `K` | Show hover documentation |
| `<Space>ca` | Code actions (fix, refactor) |
| `<Space>cr` | Rename symbol |
| `<Space>cf` | Format code |
| `<C-o>` | Jump back to previous location |
| `<C-i>` | Jump forward |

---

## Go to Line / Navigation

| Key | Action |
|-----|--------|
| `14G` | Go to line 14 |
| `14gg` | Go to line 14 (alternative) |
| `:14` | Go to line 14 (command) |
| `gg` | Go to first line |
| `G` | Go to last line |
| `{` | Previous paragraph/block |
| `}` | Next paragraph/block |
| `%` | Jump to matching bracket |
| `zz` | Center current line on screen |

---

## Terminal

| Key | Action |
|-----|--------|
| `Ctrl+/` | Toggle bottom terminal |
| `` Ctrl+` `` | Toggle bottom terminal |
| `<Space>tt` | Bottom terminal |
| `<Space>tf` | Floating terminal |
| `<Space>tv` | Vertical terminal |
| `<Esc><Esc>` | Exit terminal mode |

---

## Save & Quit

| Key | Action |
|-----|--------|
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:q!` | Quit without saving |
| `ZZ` | Save and quit (shortcut) |

---

## Quick Tips

- `:LspInfo` - Check if LSP is running
- `:Mason` - Manage language servers
- `:Lazy` - Manage plugins
- `:messages` - View all messages
- `u` - Undo
- `<C-r>` - Redo
