# Neovim Keymaps Cheatsheet

> Leader key: `Space` (the spacebar)

## How to Use Leader Key

When you see `<leader>cd`, press keys **in sequence** (not together):
- `Space` → `c` → `d`

Examples:
- `<leader>tt` = `Space` → `t` → `t`
- `<leader>cd` = `Space` → `c` → `d`
- `<leader>Tn` = `Space` → `Shift+t` → `n`

**Tip:** Press `Space` and wait — a popup (which-key) will show all available commands.

---

## File Explorer / File Finder

| Keymap | Action |
|--------|--------|
| `;f` | Find files (respects .gitignore, shows hidden) |
| `sf` | Open file browser at current file's directory |
| `<leader>fP` | Find plugin files |
| `\\` | List open buffers |

### File Browser Controls (when open)

| Keymap | Action |
|--------|--------|
| `N` | Create new file |
| `h` | Go to parent directory |
| `/` | Search/filter files |
| `<C-g>` | **Print/show file path** |
| `yy` | **Copy file path to clipboard** |
| `Y` | **Copy file path to clipboard** |
| `gy` | **Copy file path to clipboard** |
| `<C-u>` | Scroll up 10 items |
| `<C-d>` | Scroll down 10 items |
| `<PageUp>` | Preview scroll up |
| `<PageDown>` | Preview scroll down |

---

## Text Search / Grep

| Keymap | Action |
|--------|--------|
| `;r` | Live grep (search text in all files) |
| `;s` | Search symbols (functions, variables via Treesitter) |
| `;e` | Search diagnostics/errors |
| `;c` | Search LSP incoming calls |
| `;t` | Search help tags |
| `;;` | Resume last Telescope picker |

---

## LSP / Go to Definition

| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `K` | Hover documentation |
| `<leader>i` | Toggle inlay hints |

---

## Diagnostics / Errors

| Keymap | Action |
|--------|--------|
| `<leader>cd` | Show full error message (floating window) |
| `<leader>ce` | Copy error message to clipboard |
| `;e` | Search all diagnostics (Telescope) |
| `]d` | Go to next diagnostic |
| `[d` | Go to previous diagnostic |
| `]e` | Go to next error |
| `[e` | Go to previous error |
| `]w` | Go to next warning |
| `[w` | Go to previous warning |

---

## Search & Replace in Current File

| Command | Action |
|---------|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` / `N` | Next / Previous match |
| `*` | Search word under cursor |
| `:s/old/new/` | Replace first on current line |
| `:s/old/new/g` | Replace all on current line |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all in file (with confirm) |
| `:IncRename` | Incremental rename (LSP symbol rename) |

### Flash.nvim (Enhanced Search)

| Keymap | Action |
|--------|--------|
| `s` | Flash search forward |
| `S` | Flash search backward (Treesitter) |

---

## Search & Replace Across Project

### Method 1: Telescope + Quickfix

```vim
;r                          " Live grep to find text
<Tab>                       " Select matches you want
<C-q>                       " Send selected to quickfix list
:cdo s/old/new/g | update   " Replace in all quickfix files
```

### Method 2: Using Spectre (if installed)

```vim
<leader>sr                  " Open Spectre (search/replace panel)
```

### Method 3: Native Vim with args

```vim
:args **/*.lua              " Load all lua files
:argdo %s/old/new/gc | update   " Replace in all loaded files
```

---

## Theme Switching

| Keymap | Action |
|--------|--------|
| `<leader>Tn` | Cycle to next neon theme |
| `<leader>T1` | Ultra Neon theme |
| `<leader>T2` | Cyber Ocean theme |
| `<leader>T3` | Synthwave theme |
| `<leader>T4` | Neon Blast theme (EXTREME contrast) |
| `<leader>T5` | Matrix theme |

---

## Terminal

| Keymap | Action |
|--------|--------|
| `Ctrl+/` | Toggle bottom terminal |
| `<leader>tt` | Bottom terminal |
| `<leader>tf` | Floating terminal |
| `<leader>tv` | Vertical terminal |
| `Esc Esc` | Exit terminal mode |
| `Ctrl+w` | Window navigation from terminal |

---

## Git

| Keymap | Action |
|--------|--------|
| `<leader>gb` | Git blame |
| `<leader>gg` | Lazygit |

---

## Select, Copy & Paste

### Visual Mode (Select)

| Keymap | Action |
|--------|--------|
| `v` | Start character selection |
| `V` | Start line selection |
| `Ctrl+v` | Start block/column selection |
| `viw` | Select word |
| `vi"` | Select inside quotes |
| `vi(` | Select inside parentheses |
| `vip` | Select paragraph |
| `ggVG` | Select entire file |

### Copy (Yank) & Paste

| Keymap | Action |
|--------|--------|
| `y` | Copy selected text |
| `yy` | Copy entire line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `"+y` | Copy to system clipboard |
| `"+p` | Paste from system clipboard |

---

## Window Navigation (Neovim)

| Keymap | Action |
|--------|--------|
| `Ctrl+h` | Move to left window |
| `Ctrl+l` | Move to right window |
| `Ctrl+j` | Move to window below |
| `Ctrl+k` | Move to window above |
| `Ctrl+w w` | Cycle through windows |
| `<leader>e` | Toggle file explorer |

---

## Warp Terminal

### Switch Tabs

| Keymap | Action |
|--------|--------|
| `Cmd+Shift+[` | Previous tab |
| `Cmd+Shift+]` | Next tab |
| `Cmd+1/2/3...` | Go to specific tab |

### Switch Panels (same tab)

| Keymap | Action |
|--------|--------|
| `Cmd+[` | Previous pane |
| `Cmd+]` | Next pane |
| `Cmd+Option+Arrow` | Move to pane in direction |

---

## General

| Keymap | Action |
|--------|--------|
| `<leader>` | Show which-key menu (wait for popup) |
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>e` | File explorer |
| `<C-h/j/k/l>` | Navigate between splits |
