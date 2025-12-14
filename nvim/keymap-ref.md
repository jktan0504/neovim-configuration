# Neovim Keymap Reference - Full Stack Development

> Updated for 2025 - Laravel, PHP, Node.js, TypeScript, Next.js, Go, Python, Flutter, React Native, JavaScript
> Leader key: `Space`

---

## 🚀 LSP (Language Server Protocol) - Most Important!

### Code Navigation
| Key | Description | Mode |
|-----|-------------|------|
| `gd` | Go to definition | n |
| `gD` | Go to declaration | n |
| `gr` | Go to references (list all) | n |
| `grr` | Find references | n |
| `gI` | Go to implementation | n |
| `gy` | Go to type definition | n |
| `K` | Hover documentation (show info) | n |
| `gK` | Signature help | n |
| `<C-k>` | Signature help (insert mode) | i |
| `gO` | Document symbols (outline) | n |

### Code Actions & Refactoring
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>ca` | Code actions | n, v |
| `gra` | Code actions | n |
| `<leader>cr` | Rename symbol | n |
| `grn` | Rename symbol | n |
| `<leader>cf` | Format code | n, v |
| `<leader>cA` | Source action (organize imports) | n |

### Diagnostics (Errors & Warnings)
| Key | Description | Mode |
|-----|-------------|------|
| `]d` | Next diagnostic | n |
| `[d` | Previous diagnostic | n |
| `]e` | Next error | n |
| `[e` | Previous error | n |
| `]w` | Next warning | n |
| `[w` | Previous warning | n |
| `<leader>cd` | Line diagnostics | n |
| `<C-w>d` | Open diagnostic float | n |
| `<leader>xx` | Trouble diagnostics | n |

---

## 📁 File Navigation & Telescope

| Key | Description | Mode |
|-----|-------------|------|
| `;f` | Find files (respects .gitignore) | n |
| `;r` | Live grep search in directory | n |
| `sf` | File browser at current buffer | n |
| `\\` | List open buffers | n |
| `;;` | Resume previous telescope picker | n |
| `;t` | Search help tags | n |
| `;e` | List diagnostics | n |
| `;s` | List functions/variables (Treesitter) | n |
| `;c` | List LSP incoming calls | n |
| `<leader>ff` | Find files (LazyVim) | n |
| `<leader>fr` | Recent files | n |
| `<leader>fb` | Buffers | n |
| `<leader>/` | Grep in directory | n |
| `<leader>sg` | Grep (root dir) | n |
| `<leader>sw` | Word under cursor (root) | n |
| `<leader>sW` | Word under cursor (cwd) | n |
| `<leader>ss` | Goto symbol | n |
| `<leader>sS` | Goto symbol (workspace) | n |

---

## 🪟 Window Management

### Split Windows
| Key | Description | Mode |
|-----|-------------|------|
| `ss` | Split horizontally | n |
| `sv` | Split vertically | n |
| `<C-w>q` | Close window | n |
| `<C-w>o` | Close other windows | n |

### Navigate Windows
| Key | Description | Mode |
|-----|-------------|------|
| `sh` | Move to left window | n |
| `sj` | Move to bottom window | n |
| `sk` | Move to top window | n |
| `sl` | Move to right window | n |
| `<C-h>` | Move to left (LazyVim) | n |
| `<C-j>` | Move to bottom (LazyVim) | n |
| `<C-k>` | Move to top (LazyVim) | n |
| `<C-l>` | Move to right (LazyVim) | n |

### Resize Windows
| Key | Description | Mode |
|-----|-------------|------|
| `<C-w><left>` | Decrease width | n |
| `<C-w><right>` | Increase width | n |
| `<C-w><up>` | Increase height | n |
| `<C-w><down>` | Decrease height | n |
| `<C-Up>` | Increase height | n |
| `<C-Down>` | Decrease height | n |
| `<C-Left>` | Decrease width | n |
| `<C-Right>` | Increase width | n |

---

## 📑 Tab Management

| Key | Description | Mode |
|-----|-------------|------|
| `te` | New tab | n |
| `<Tab>` | Next tab | n |
| `<S-Tab>` | Previous tab | n |
| `<leader><tab>l` | Last tab | n |
| `<leader><tab>f` | First tab | n |
| `<leader><tab><tab>` | New tab | n |
| `<leader><tab>]` | Next tab | n |
| `<leader><tab>[` | Previous tab | n |
| `<leader><tab>d` | Close tab | n |

---

## 📂 File Explorer (Neo-tree)

| Key | Description | Mode |
|-----|-------------|------|
| `<leader>e` | Toggle file explorer | n |
| `<leader>E` | Toggle (float) | n |
| `<leader>fe` | Explorer (root dir) | n |
| `<leader>fE` | Explorer (cwd) | n |

### Inside Neo-tree
| Key | Description | Mode |
|-----|-------------|------|
| `a` | Add file/folder | n |
| `d` | Delete | n |
| `r` | Rename | n |
| `c` | Copy | n |
| `x` | Cut | n |
| `p` | Paste | n |
| `y` | Copy name | n |
| `Y` | Copy path | n |
| `<CR>` | Open file | n |
| `<Space>` | Toggle preview | n |
| `H` | Toggle hidden files | n |

---

## ✂️ Edit Operations

### Delete/Change without affecting registers
| Key | Description | Mode |
|-----|-------------|------|
| `x` | Delete char (black hole) | n |
| `<leader>d` | Delete (black hole) | n, v |
| `<leader>D` | Delete to EOL (black hole) | n, v |
| `<leader>c` | Change (black hole) | n, v |
| `<leader>C` | Change to EOL (black hole) | n, v |

### Paste from yank register
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>p` | Paste after | n, v |
| `<leader>P` | Paste before | n, v |

### Text Operations
| Key | Description | Mode |
|-----|-------------|------|
| `dw` | Delete word backwards | n |
| `<C-a>` | Select all | n |
| `<leader>o` | Insert line below | n |
| `<leader>O` | Insert line above | n |
| `ciw` | Change inner word | n |
| `ci"` | Change inside quotes | n |
| `ci{` | Change inside braces | n |
| `dap` | Delete around paragraph | n |
| `.` | Repeat last action | n |

---

## 🔢 Increment/Decrement

| Key | Description | Mode |
|-----|-------------|------|
| `+` | Increment number | n |
| `-` | Decrement number | n |
| `<C-a>` | Smart increment (dial.nvim) | n |
| `<C-x>` | Smart decrement (dial.nvim) | n |

---

## 🎯 Navigation

### Basic Movement
| Key | Description | Mode |
|-----|-------------|------|
| `gg` | Go to first line | n |
| `G` | Go to last line | n |
| `{number}G` | Go to line (e.g., 42G) | n |
| `:{number}` | Go to line (e.g., :42) | n |
| `0` | Start of line | n |
| `^` | First non-blank char | n |
| `$` | End of line | n |
| `w` | Next word | n |
| `b` | Previous word | n |
| `e` | End of word | n |
| `%` | Jump to matching bracket | n |
| `{` | Previous paragraph | n |
| `}` | Next paragraph | n |

### Jump List
| Key | Description | Mode |
|-----|-------------|------|
| `<C-o>` | Jump to older position | n |
| `<C-i>` or `<C-m>` | Jump to newer position | n |

### Flash.nvim (Enhanced Navigation)
| Key | Description | Mode |
|-----|-------------|------|
| `s` | Flash jump (type chars to jump) | n, x, o |
| `S` | Flash treesitter | n, x, o |
| `r` | Remote flash | o |
| `R` | Treesitter search | o, x |
| `<c-s>` | Toggle flash search | c |

---

## 🔍 Search & Replace

| Key | Description | Mode |
|-----|-------------|------|
| `/` | Search forward | n |
| `?` | Search backward | n |
| `n` | Next search result | n |
| `N` | Previous search result | n |
| `*` | Search word under cursor | n |
| `#` | Search word (backward) | n |
| `<leader>sr` | Search and replace | n |
| `<Esc>` | Clear search highlight | n |

---

## 🤖 GitHub Copilot

| Key | Description | Mode |
|-----|-------------|------|
| `<C-l>` | Accept suggestion | i |
| `<M-l>` | Accept word | i |
| `<M-S-l>` | Accept line | i |
| `<M-]>` | Next suggestion | i |
| `<M-[>` | Previous suggestion | i |
| `<C-]>` | Dismiss suggestion | i |

---

## 🎨 Git Integration

### Git Blame (like VS Code GitLens)
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>gB` | Toggle git blame on current line | n |
| `<leader>gp` | Preview git hunk | n |
| `<leader>gr` | Reset git hunk | n |
| `<leader>gR` | Reset git buffer | n |
| `<leader>gs` | Stage git hunk | n |
| `<leader>gS` | Stage git buffer | n |
| `<leader>gu` | Undo stage hunk | n |
| `<leader>gd` | Diff this | n |
| `]h` | Next git hunk | n |
| `[h` | Previous git hunk | n |

### Git General
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>gb` | Git blame (file) | n |
| `<leader>go` | Open in browser | n |
| `<leader>gg` | Lazygit | n |
| `<leader>gf` | Lazygit (file) | n |
| `<leader>gl` | Lazygit log | n |
| `<leader>gL` | Lazygit log (file) | n |

---

## 🔧 Laravel Specific (with laravel.nvim)

| Key | Description | Mode |
|-----|-------------|------|
| `<leader>la` | Laravel artisan | n |
| `<leader>lr` | Laravel routes | n |
| `<leader>lm` | Laravel models | n |
| `<leader>lc` | Laravel controllers | n |

---

## 🎬 Special Features

### Buffer Management
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>th` | Close hidden buffers | n |
| `<leader>tu` | Close nameless buffers | n |
| `<leader>bd` | Delete buffer | n |
| `<leader>bD` | Delete buffer (force) | n |
| `[b` | Previous buffer | n |
| `]b` | Next buffer | n |

### Zen Mode
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>z` | Toggle Zen Mode | n |

### Minimap (VSCode-like)
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>mm` | Toggle minimap | n |
| `<leader>mo` | Open minimap | n |
| `<leader>mc` | Close minimap | n |
| `<leader>mr` | Refresh minimap | n |

### Color Tools
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>r` | Replace hex with HSL | n |
| `<leader>i` | Toggle inlay hints | n |

### Theme Switching (Custom Neon Themes)
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>Tn` | Cycle to next theme | n |
| `<leader>T1` | Ultra Neon (Pink/Green/Yellow) | n |
| `<leader>T2` | Cyber Ocean (Blue/Teal/Aqua) | n |
| `<leader>T3` | Synthwave (80s Magenta/Cyan) | n |
| `<leader>T4` | Matrix (All Greens) | n |

### Markdown Preview (with Mermaid support)
| Key | Description | Mode |
|-----|-------------|------|
| `<leader>mp` | Toggle Markdown Preview | n |
| `<leader>ms` | Stop Markdown Preview | n |

### Terminal (VSCode-like)
| Key | Description | Mode |
|-----|-------------|------|
| `<C-\`>` | Toggle bottom terminal | n, t |
| `<leader>tt` | Toggle bottom terminal | n |
| `<leader>tf` | Toggle floating terminal | n |
| `<leader>tv` | Toggle vertical terminal | n |
| `<Esc><Esc>` | Exit terminal mode | t |
| `<C-w>` | Window navigation from terminal | t |
| `<leader>ft` | Terminal (root) | n |
| `<leader>fT` | Terminal (cwd) | n |

---

## 💾 Save & Quit

| Key | Description | Mode |
|-----|-------------|------|
| `<leader>w` | Save file | n |
| `:w` | Save file | n |
| `:q` | Quit | n |
| `:wq` or `ZZ` | Save and quit | n |
| `:q!` or `ZQ` | Quit without saving | n |
| `:wa` | Save all files | n |
| `:qa` | Quit all | n |

---

## 🎯 Quick Reference: Most Used

### Essential LSP
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover docs
- `<leader>ca` - Code actions
- `<leader>cr` - Rename
- `]d`/`[d` - Next/prev diagnostic

### Essential Files
- `;f` - Find files
- `;r` - Search text
- `<leader>e` - File explorer
- `\\` - Buffers

### Essential Edit
- `<leader>w` - Save
- `<leader>d` - Delete (safe)
- `<leader>p` - Paste
- `u` - Undo
- `<C-r>` - Redo

### Essential Terminal
- `<C-\`>` - Toggle terminal (like VSCode)
- `<leader>tt` - Bottom terminal
- `<Esc><Esc>` - Exit terminal mode

### Essential Minimap
- `<leader>mm` - Toggle minimap
- Auto-opens on startup

### Essential Navigation
- `gg`/`G` - Top/bottom
- `42G` - Line 42
- `<C-o>`/`<C-i>` - Back/forward
- `s` + chars - Flash jump

---

## 🛠️ Language-Specific LSP Servers

### Install with Mason
`:Mason` then search for:

**PHP/Laravel:**
- `intelephense` (recommended)
- `phpactor`
- `psalm`

**JavaScript/TypeScript/Node.js/React/Next.js:**
- `typescript-language-server` (ts_ls)
- `eslint`
- `prettier`
- `tailwindcss-language-server`

**Go:**
- `gopls`
- `golangci-lint`

**Python:**
- `pyright`
- `ruff`
- `black`

**Flutter/Dart:**
- `dartls`

**React Native:**
- `typescript-language-server`
- `react-native-language-server`

**MySQL:**
- `sqlls`
- `sqlfmt`

**NoSQL/MongoDB:**
- `ansible-language-server` (for YAML configs)

---

## 📝 Tips

1. **LSP must be running** for LSP keymaps to work - check `:LspInfo`
2. **Install language servers** with `:Mason`
3. **Flash jump** (`s`) is fastest for navigation
4. **Use `.` to repeat** last action
5. **Telescope** (`;f`, `;r`) respects `.gitignore`
6. Check health: `:checkhealth`
7. Lazy plugins: `:Lazy`
8. Mason servers: `:Mason`

---

## 🔗 Resources

- [Neovim LSP Guide](https://vonheikemen.github.io/devlog/tools/neovim-lsp-client-guide/)
- [Neovim for PHP/Laravel](https://seankegel.com/neovim-for-php-and-laravel)
- [LazyVim LSP Docs](http://www.lazyvim.org/plugins/lsp)
- [Neovim 2025 Config](https://rdrn.me/neovim-2025/)
- [Web Dev with Neovim](https://www.devas.life/effective-neovim-setup-for-web-development-towards-2024/)

---

**Happy coding! 🚀**
