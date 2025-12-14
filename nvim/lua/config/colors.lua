-- ~/.config/nvim/lua/config/colors.lua
-- Load colors from the active colorscheme file

-- Function to load colors from the external file
local function load_colors()
  local colors = {}
  local active_file = vim.fn.expand("~/.config/nvim/colorscheme/active/active-colorscheme.sh")

  local file = io.open(active_file, "r")
  if not file then
    -- If no active colorscheme, return default colors
    vim.notify("No active colorscheme found. Run colorscheme-selector.sh to select one.", vim.log.levels.WARN)
    return colors
  end

  for line in file:lines() do
    -- Skip comments, empty lines, and non-color variables
    if not line:match("^%s*#") and not line:match("^%s*$") and not line:match("^wallpaper=") then
      local name, value = line:match("^(%S+)=%s*(.+)")
      if name and value then
        colors[name] = value:gsub('"', "")
      end
    end
  end

  file:close()
  return colors
end

-- Load colors when the module is required
local colors = load_colors()

-- Check if the 'vim' global exists (i.e., if running in Neovim)
if _G.vim then
  for name, hex in pairs(colors) do
    vim.api.nvim_set_hl(0, name, { fg = hex })
  end
end

-- Return the colors table for external usage
return colors
