local Theme = {}

---@class ThemeGroups
---@field common? { [string]: vim.api.keyset.highlight }
---@field syntax? { [string]: vim.api.keyset.highlight }
---@field dap? { [string]: vim.api.keyset.highlight }
---@field diagnostic? { [string]: vim.api.keyset.highlight }
---@field dressing? { [string]: vim.api.keyset.highlight }
---@field harpoon? { [string]: vim.api.keyset.highlight }
---@field lazy? { [string]: vim.api.keyset.highlight }
---@field mason? { [string]: vim.api.keyset.highlight }
---@field misc? { [string]: vim.api.keyset.highlight }
---@field nvimtree? { [string]: vim.api.keyset.highlight }
---@field rainbow_delimiters? { [string]: vim.api.keyset.highlight }
---@field statusline? { [string]: vim.api.keyset.highlight }
---@field tabline? { [string]: vim.api.keyset.highlight }
---@field telescope? { [string]: vim.api.keyset.highlight }
---@field trouble? { [string]: vim.api.keyset.highlight }
---@field treesitter? { [string]: vim.api.keyset.highlight }
---@field whichkey? { [string]: vim.api.keyset.highlight }
---@field lsp? { [string]: vim.api.keyset.highlight }
---@field [string]? { [string]: vim.api.keyset.highlight }

---@type ThemeGroups
local groups = {}

---@param opts ThemeGroups
function Theme.setup(opts)
  groups = opts
  Theme.colorscheme()
end

function Theme.colorscheme()
  vim.g.colors_name = 'onedark'
  print(groups.common)

  vim.iter(groups):each(function(_, group)
    vim.iter(group):each(function(name, color)
      vim.api.nvim_set_hl(0, name, color)
    end)
  end)
end

return Theme
