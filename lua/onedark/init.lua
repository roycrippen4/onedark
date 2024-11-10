local colors = require('onedark.colors')

local Theme = {}

---@class ThemeGroups
---@field common { [string]: vim.api.keyset.highlight }
---@field syntax { [string]: vim.api.keyset.highlight }
---@field dap { [string]: vim.api.keyset.highlight }
---@field diagnostic { [string]: vim.api.keyset.highlight }
---@field dressing { [string]: vim.api.keyset.highlight }
---@field harpoon { [string]: vim.api.keyset.highlight }
---@field lazy { [string]: vim.api.keyset.highlight }
---@field mason { [string]: vim.api.keyset.highlight }
---@field misc { [string]: vim.api.keyset.highlight }
---@field nvimtree { [string]: vim.api.keyset.highlight }
---@field rainbow_delimiters { [string]: vim.api.keyset.highlight }
---@field statusline { [string]: vim.api.keyset.highlight }
---@field tabline { [string]: vim.api.keyset.highlight }
---@field telescope { [string]: vim.api.keyset.highlight }
---@field trouble { [string]: vim.api.keyset.highlight }
---@field treesitter { [string]: vim.api.keyset.highlight }
---@field whichkey { [string]: vim.api.keyset.highlight }
---@field lsp { [string]: vim.api.keyset.highlight }
---@field [string] { [string]: vim.api.keyset.highlight }
local groups = {}

groups.common = {
  Added = { fg = colors.green },
  Changed = { fg = colors.blue_light },
  Directory = { fg = colors.blue },
  FloatBorder = { fg = colors.blue_light, bg = colors.one_bg },
  FoldColumn = { fg = colors.blue_light, bg = colors.one_bg },
  MsgArea = { bg = colors.black3 },
  NormalFloat = { bg = colors.one_bg },
  Normal = { bg = colors.one_bg },
  Removed = { fg = colors.red },
  Search = { fg = '#AAAAAA', bg = '#475a97' },
  Terminal = { bg = colors.black_darker },
  ToolbarLine = { fg = colors.white },
  Cursor = { reverse = true },
  vCursor = { reverse = true },
  iCursor = { reverse = true },
  lCursor = { reverse = true },
  CursorIM = { reverse = true },
  CursorColumn = { bg = colors.bg1 },
  CursorLine = { bg = colors.bg1 },
  ColorColumn = { bg = colors.bg1 },
  CursorLineNr = { fg = colors.white },
  LineNr = { fg = colors.grey },
  Conceal = { fg = colors.grey, bg = colors.bg1 },
  DiffAdd = { fg = colors.none, bg = colors.diff_add },
  DiffChange = { fg = colors.none, bg = colors.diff_change },
  DiffDelete = { fg = colors.none, bg = colors.diff_delete },
  DiffText = { fg = colors.none, bg = colors.diff_text },
  DiffAdded = { fg = colors.green },
  DiffChanged = { fg = colors.blue },
  DiffRemoved = { fg = colors.red },
  DiffDeleted = { fg = colors.red },
  DiffFile = { fg = colors.cyan },
  DiffIndexLine = { fg = colors.grey },
  ErrorMsg = { fg = colors.red, bold = true },
  WarningMsg = { fg = colors.yellow, bold = true },
  MoreMsg = { fg = colors.blue, bold = true },
  CurSearch = { fg = colors.one_bg, bg = colors.orange },
  IncSearch = { fg = colors.one_bg, bg = colors.orange },
  Substitute = { fg = colors.one_bg, bg = colors.green },
  MatchParen = { fg = colors.none, bg = colors.grey },
  NonText = { fg = colors.grey },
  Whitespace = { fg = colors.grey },
  SpecialKey = { fg = colors.grey },
  Pmenu = { fg = colors.white, bg = colors.bg1 },
  PmenuSbar = { fg = colors.none, bg = colors.bg1 },
  PmenuSel = { fg = colors.one_bg, bg = colors.bg_blue },
  WildMenu = { fg = colors.one_bg, bg = colors.blue },
  PmenuThumb = { fg = colors.none, bg = colors.grey },
  Question = { fg = colors.yellow },
  SpellBad = { fg = colors.none, undercurl = true, sp = colors.red },
  SpellCap = { fg = colors.none, undercurl = true, sp = colors.yellow },
  SpellLocal = { fg = colors.none, undercurl = true, sp = colors.blue },
  SpellRare = { fg = colors.none, undercurl = true, sp = colors.purple },
  StatusLine = { fg = colors.white, bg = colors.bg2 },
  StatusLineTerm = { fg = colors.white, bg = colors.bg2 },
  StatusLineNC = { fg = colors.grey, bg = colors.bg1 },
  StatusLineTermNC = { fg = colors.grey, bg = colors.bg1 },
  TabLine = { fg = colors.white, bg = colors.bg1 },
  TabLineFill = { fg = colors.grey, bg = colors.bg1 },
  TabLineSel = { fg = colors.one_bg, bg = colors.white },
  WinSeparator = { fg = colors.bg3 },
  Visual = { bg = colors.bg3 },
  VisualNOS = { fg = colors.none, bg = colors.bg2, underline = true },
  QuickFixLine = { fg = colors.blue, underline = true },
  Debug = { fg = colors.yellow },
  debugPC = { fg = colors.one_bg, bg = colors.green },
  debugBreakpoint = { fg = colors.one_bg, bg = colors.red },
  ToolbarButton = { fg = colors.one_bg, bg = colors.bg_blue },
}

groups.blink = {
  BlinkCmpKindClass = { link = '@type.builtin' },
  BlinkCmpKindEnum = { link = '@lsp.type.enum' },
  BlinkCmpKindEnumMember = { link = '@lsp.type.enumMember' },
  BlinkCmpKindEvent = { link = '@lsp.type.event' },
  BlinkCmpKindField = { link = '@field' },
  BlinkCmpKindFunction = { link = '@function.call' },
  BlinkCmpKindInterface = { link = '@lsp.type.struct' },
  BlinkCmpKindKeyword = { link = '@keyword' },
  BlinkCmpKindSnippet = { fg = colors.red },
  BlinkCmpKindStruct = { link = '@lsp.type.struct' },
  BlinkCmpKindText = { link = '@text.literal' },
  BlinkCmpLabel = { fg = colors.white },
  BlinkCmpMenu = { link = 'NormalFloat' },
  BlinkCmpMenuBorder = { link = 'FloatBorder' },
  BlinkCmpMenuSelection = { link = 'CursorLine' },
  BlinkCmpSource = { fg = colors.grey_light },
}
groups.syntax = {
  Delimiter = { fg = colors.grey_light },
  Character = { fg = colors.orange },
  Number = { fg = colors.orange },
  Float = { fg = colors.orange },
  Boolean = { fg = colors.orange },
  Type = { fg = colors.yellow },
  Structure = { fg = colors.yellow },
  StorageClass = { fg = colors.yellow },
  Typedef = { fg = colors.yellow },
  Identifier = { fg = colors.red },
  Constant = { fg = colors.cyan },
  PreProc = { fg = colors.purple },
  PreCondit = { fg = colors.purple },
  Include = { fg = colors.purple },
  Keyword = { fg = colors.purple },
  Define = { fg = colors.purple },
  Exception = { fg = colors.purple },
  Conditional = { fg = colors.purple },
  Repeat = { fg = colors.purple },
  Statement = { fg = colors.purple },
  Macro = { fg = colors.red },
  Error = { fg = colors.purple },
  Label = { fg = colors.purple },
  Special = { fg = colors.red },
  SpecialChar = { fg = colors.red },
  Function = { fg = colors.blue },
  Operator = { fg = colors.purple },
  Title = { fg = colors.cyan },
  Tag = { fg = colors.green },
  Comment = { fg = colors.grey, italic = true },
  SpecialComment = { link = 'Comment' },
  Todo = { fg = colors.red, italic = true },
}

groups.dap = {
  DapBreakpoint = { fg = colors.red },
  DapBreakpointCondition = { fg = colors.orange_dark },
  DapBreakpointRejected = { fg = colors.red_dark },
  DapLogPoint = { fg = colors.yellow_dark },
  DapStopped = { fg = colors.green_dark },
}

groups.diagnostic = {
  DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
  DiagnosticUnderlineHint = { sp = colors.blue_light, undercurl = true },
  DiagnosticUnderlineInfo = { sp = colors.green, undercurl = true },
  DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
}

groups.dressing = {
  DressingBorder = { fg = colors.red, bg = nil },
  DressingNormal = { bg = colors.one_bg },
  DressingTitle = { fg = colors.black, bg = colors.red, italic = true, bold = true },
}

groups.harpoon = {
  HarpoonBorder = { fg = colors.blue, bg = colors.one_bg },
  HarpoonOpenMark = { fg = colors.pink },
  HarpoonTitle = { fg = colors.one_bg, bg = colors.blue, italic = true },
  HarpoonWindow = { bg = colors.one_bg },
}

groups.lazy = {
  LazyNormal = { bg = colors.black },
  LazyProp = { fg = colors.sun, bg = colors.black },
}

groups.mason = {
  MasonNormal = { bg = colors.black },
}

groups.misc = {
  HelpNormal = { bg = colors.black3 },
  SearchVirtualText = { fg = '#53bf00', italic = true },
}

groups.nvimtree = {
  NvimTreeBookmark = { fg = colors.red },
  NvimTreeBookmarkHL = { fg = colors.red },
  NvimTreeCopiedHL = { sp = colors.yellow, underline = true },
  NvimTreeCutHL = { sp = colors.red, underline = true },
  NvimTreeExecFile = { fg = colors.green },
  NvimTreeFolderName = { fg = colors.blue },
  NvimTreeGitDeleted = { fg = colors.red },
  NvimTreeGitDeletedIcon = { fg = colors.red },
  NvimTreeGitDirty = { fg = colors.orange },
  NvimTreeGitDirtyIcon = { fg = colors.orange },
  NvimTreeGitFileDirtyHL = { fg = colors.orange },
  NvimTreeGitFolderNewHL = { fg = colors.green },
  NvimTreeGitNew = { fg = colors.green },
  NvimTreeGitNewIcon = { fg = colors.green },
  NvimTreeImageFile = { fg = colors.purple },
  NvimTreeIndentMarker = { fg = colors.grey },
  NvimTreeNormal = { fg = colors.white, bg = colors.black3 },
  NvimTreeOpenedFile = { fg = colors.yellow },
  NvimTreeRootFolder = { fg = colors.orange, bold = true },
  NvimTreeSpecialFile = { fg = colors.yellow, underline = true },
  NvimTreeSymlink = { fg = colors.cyan },
  NvimTreeSymlinkFolderName = { fg = colors.blue },
}

groups.rainbow_delimiters = {
  RainbowDelimiterBlue = { fg = colors.blue },
  RainbowDelimiterCyan = { fg = colors.cyan },
  RainbowDelimiterGreen = { fg = colors.green },
  RainbowDelimiterOrange = { fg = colors.orange },
  RainbowDelimiterRed = { fg = colors.red },
  RainbowDelimiterViolet = { fg = colors.purple },
  RainbowDelimiterYellow = { fg = colors.yellow },
}

groups.statusline = {
  St_CommandMode = { fg = colors.red_dark, bg = colors.black3 },
  St_CommandModeSep = { fg = colors.red_dark, bg = colors.black3 },
  St_ConfirmMode = { fg = colors.red_dark, bg = colors.black3 },
  St_ConfirmModeSep = { fg = colors.red_dark, bg = colors.black3 },
  St_CwdSep = { fg = colors.red_dark, bg = colors.black3 },
  St_EmptySpace = { fg = '#00C5FF', bg = colors.black3 },
  St_EmptySpace2 = { fg = colors.black_darker, bg = colors.black_darker },
  St_FileInfo = { fg = colors.white, bg = colors.black3 },
  St_FileSep = { fg = colors.grey_light, bg = colors.black3, bold = true },
  St_GitAdd = { fg = colors.green, bg = colors.black3 },
  St_GitBranch = { fg = colors.green_dark, bg = colors.black3, italic = true },
  St_GitChange = { fg = colors.yellow, bg = colors.black3 },
  St_GitRemove = { fg = colors.red, bg = colors.black3 },
  St_InsertMode = { fg = colors.yellow_dark, bg = colors.black3 },
  St_InsertModeSep = { fg = colors.yellow_dark, bg = colors.black3 },
  St_Lazy = { fg = colors.blue_darker, bg = colors.black3, bold = true },
  St_Lazygit = { fg = colors.green_dark, bg = colors.black3, italic = true },
  St_LspHints = { bg = colors.black3 },
  St_LspInfo = { fg = colors.blue, bg = colors.black3 },
  St_LspStatus = { fg = '#53bf00', bg = colors.black3 },
  St_LspWarning = { fg = '#E7C787', bg = colors.black3 },
  St_Lsp_Error = { fg = colors.red_dark, bg = colors.black3 },
  St_Macro = { fg = colors.red_dark, bg = colors.black3 },
  St_MacroA = { fg = colors.red_dark, bg = colors.black3 },
  St_MacroB = { fg = colors.yellow, bg = colors.black3 },
  St_MacroSep = { fg = colors.red_dark, bg = colors.black3 },
  St_MacroSepA = { fg = colors.red_dark, bg = colors.black3 },
  St_MacroSepB = { fg = colors.yellow, bg = colors.black3 },
  St_Mason = { fg = colors.yellow, bg = colors.black3 },
  St_NormalMode = { fg = colors.blue_light, bg = colors.black3 },
  St_NormalModeSep = { fg = colors.blue_light, bg = colors.black3 },
  St_NvimTree = { fg = colors.blue_light, bg = colors.black3, italic = true },
  St_PosSep = { fg = '#d6a000', bg = colors.black3, bold = false },
  St_PosText = { fg = '#d6a000', bg = colors.black3, bold = false },
  St_ReplaceMode = { fg = colors.orange_dark, bg = colors.black3 },
  St_ReplaceModeSep = { fg = colors.orange_dark, bg = colors.black3 },
  St_SelectMode = { fg = colors.pink, bg = colors.black3 },
  St_SelectModeSep = { fg = colors.pink, bg = colors.black3 },
  St_Spin = { fg = colors.pink, bg = colors.black3 },
  St_TerminalMode = { fg = colors.green_dark, bg = colors.black3 },
  St_Time = { fg = '#cc5e00', bg = colors.black3 },
  St_Trouble = { fg = colors.red_dark, bg = colors.black3, italic = true, bold = true },
  St_VisualMode = { fg = colors.pink, bg = colors.black3 },
  St_VisualModeSep = { fg = colors.pink, bg = colors.black3 },
}

groups.tabline = {
  TbLineBufOff = { fg = colors.grey, bg = colors.black3 },
  TbLineBufOffClose = { fg = colors.grey, bg = colors.black3 },
  TbLineBufOffModified = { fg = colors.red, bg = colors.black3 },
  TbLineBufOn = { fg = colors.yellow },
  TbLineBufOnClose = { fg = colors.red },
  TbLineBufOnModified = { fg = colors.green, bg = colors.one_bg },
  TbLineMarkedBufOff = { fg = colors.grey, bg = colors.black3 },
  TbLineMarkedBufOn = { fg = colors.blue_dark, bg = colors.one_bg },
  TblineFill = { bg = colors.black3 },
}

groups.telescope = {
  TelescopeBorder = { fg = colors.black_darker, bg = colors.black_darker },
  TelescopeMatching = { fg = colors.blue, bg = colors.one_bg },
  TelescopeNormal = { bg = colors.black_darker },
  TelescopePreviewBorder = { fg = colors.black_darker, bg = colors.black_darker },
  TelescopePreviewTitle = { fg = colors.black, bg = colors.green },
  TelescopePromptBorder = { fg = colors.black2, bg = colors.black2 },
  TelescopePromptNormal = { fg = colors.white, bg = colors.black2 },
  TelescopePromptPrefix = { fg = colors.red, bg = colors.black2 },
  TelescopePromptTitle = { fg = colors.black, bg = colors.red },
  TelescopeResultsBorder = { fg = colors.black_darker, bg = colors.black_darker },
  TelescopeResultsDiffAdd = { fg = colors.green },
  TelescopeResultsDiffChange = { fg = colors.yellow },
  TelescopeResultsDiffDelete = { fg = colors.red },
  TelescopeResultsTitle = { fg = colors.black_darker, bg = colors.black_darker },
  TelescopeSelection = { bg = colors.black2, fg = colors.white },
}

groups.trouble = {
  TroubleNormal = { bg = colors.black_darker },
  TroubleNormalNC = { bg = colors.black_darker },
}

groups.treesitter = {
  ['@boolean.zig'] = { link = '@boolean' },
  ['@fix_error_union_type.zig'] = { link = '@function' },
  ['@test.zig'] = { fg = colors.sun },
  ['@type.argument.rust'] = { italic = true },
  ['@type.type_argument'] = { italic = true },
  ['@variable.std.zig'] = { link = '@lsp.type.namespace.zig' },
  ['@annotation'] = { fg = colors.fg },
  ['@attribute'] = { fg = colors.cyan },
  ['@attribute.typescript'] = { fg = colors.blue },
  ['@boolean'] = { fg = colors.orange },
  ['@character'] = { fg = colors.orange },
  ['@comment'] = { fg = colors.grey, italic = true },
  ['@comment.documentation'] = { fg = colors.grey, italic = false },
  ['@comment.documentation.lua'] = { fg = colors.grey, italic = false },
  ['@comment.todo'] = { fg = colors.red },
  ['@comment.todo.unchecked'] = { fg = colors.red },
  ['@comment.todo.checked'] = { fg = colors.green },
  ['@constant'] = { fg = colors.orange },
  ['@constant.builtin'] = { fg = colors.orange },
  ['@constant.macro'] = { fg = colors.orange },
  ['@constructor'] = { fg = colors.yellow, bold = true },
  ['@diff.add'] = groups.common.DiffAdded,
  ['@diff.delete'] = groups.common.DiffDeleted,
  ['@diff.plus'] = groups.common.DiffAdded,
  ['@diff.minus'] = groups.common.DiffDeleted,
  ['@diff.delta'] = groups.common.DiffChanged,
  ['@error'] = colors.fg,
  ['@function'] = { fg = colors.blue },
  ['@function.builtin'] = { fg = colors.cyan },
  ['@function.macro'] = { fg = colors.cyan },
  ['@function.method'] = { fg = colors.blue },
  ['@keyword'] = { fg = colors.purple },
  ['@keyword.conditional'] = { fg = colors.purple },
  ['@keyword.directive'] = { fg = colors.purple },
  ['@keyword.exception'] = { fg = colors.purple },
  ['@keyword.function'] = { fg = colors.purple },
  ['@keyword.import'] = { fg = colors.purple },
  ['@keyword.operator'] = { fg = colors.purple },
  ['@keyword.repeat'] = { fg = colors.purple },
  ['@label'] = { fg = colors.red },
  ['@markup.emphasis'] = { fg = colors.fg, italic = true },
  ['@markup.environment'] = colors.fg,
  ['@markup.environment.name'] = colors.fg,
  ['@markup.heading'] = { fg = colors.orange, bold = true },
  ['@markup.link'] = { fg = colors.blue },
  ['@markup.link.url'] = { fg = colors.cyan, underline = true },
  ['@markup.list'] = { fg = colors.red },
  ['@markup.math'] = { fg = colors.fg },
  ['@markup.raw'] = { fg = colors.green },
  ['@markup.strike'] = { fg = colors.fg, strikethrough = true },
  ['@markup.strong'] = { fg = colors.fg, bold = true },
  ['@markup.underline'] = { fg = colors.fg, underline = true },
  ['@module'] = { fg = colors.yellow },
  ['@none'] = { fg = colors.fg },
  ['@number'] = { fg = colors.orange },
  ['@number.float'] = { fg = colors.orange },
  ['@operator'] = { fg = colors.fg },
  ['@parameter.reference'] = { fg = colors.fg },
  ['@property'] = { fg = colors.cyan },
  ['@punctuation.delimiter'] = { fg = colors.lightgrey },
  ['@punctuation.bracket'] = { fg = colors.lightgrey },
  ['@string'] = { fg = colors.green },
  ['@string.regexp'] = { fg = colors.orange },
  ['@string.escape'] = { fg = colors.red },
  ['@string.special.symbol'] = { fg = colors.cyan },
  ['@tag'] = { fg = colors.purple },
  ['@tag.attribute'] = { fg = colors.yellow },
  ['@tag.delimiter'] = { fg = colors.purple },
  ['@text'] = { fg = colors.white },
  ['@note'] = { fg = colors.white },
  ['@warning'] = { fg = colors.white },
  ['@danger'] = { fg = colors.white },
  ['@type'] = { fg = colors.yellow },
  ['@type.builtin'] = { fg = colors.orange },
  ['@variable'] = { fg = colors.white },
  ['@variable.builtin'] = { fg = colors.red },
  ['@variable.member'] = { fg = colors.cyan },
  ['@variable.parameter'] = { fg = colors.red },
  ['@markup.heading.1.markdown'] = { fg = colors.red, bold = true },
  ['@markup.heading.2.markdown'] = { fg = colors.purple, bold = true },
  ['@markup.heading.3.markdown'] = { fg = colors.orange, bold = true },
  ['@markup.heading.4.markdown'] = { fg = colors.red, bold = true },
  ['@markup.heading.5.markdown'] = { fg = colors.purple, bold = true },
  ['@markup.heading.6.markdown'] = { fg = colors.orange, bold = true },
  ['@markup.heading.1.marker.markdown'] = { fg = colors.red, bold = true },
  ['@markup.heading.2.marker.markdown'] = { fg = colors.purple, bold = true },
  ['@markup.heading.3.marker.markdown'] = { fg = colors.orange, bold = true },
  ['@markup.heading.4.marker.markdown'] = { fg = colors.red, bold = true },
  ['@markup.heading.5.marker.markdown'] = { fg = colors.purple, bold = true },
  ['@markup.heading.6.marker.markdown'] = { fg = colors.orange, bold = true },
}

groups.whichkey = {
  WhichKey = { fg = colors.red },
  WhichKeyDesc = { fg = colors.blue },
  WhichKeyGroup = { fg = colors.orange },
  WhichKeyNormal = { bg = colors.black3 },
  WhichKeySeparator = { fg = colors.green },
}

groups.lsp = {
  LspSignatureActiveParameter = { underline = true, sp = colors.blue },
  ['@lsp.type.class.svelte'] = {},
  ['@lsp.type.type.lua'] = {},
  ['@lsp.type.comment'] = groups.treesitter['@comment'],
  ['@lsp.type.enum'] = groups.treesitter['@type'],
  ['@lsp.type.enumMember'] = groups.treesitter['@constant.builtin'],
  ['@lsp.type.interface'] = groups.treesitter['@type'],
  ['@lsp.type.typeParameter'] = groups.treesitter['@type'],
  ['@lsp.type.keyword'] = groups.treesitter['@keyword'],
  ['@lsp.type.namespace'] = groups.treesitter['@module'],
  ['@lsp.type.parameter'] = groups.treesitter['@variable.parameter'],
  ['@lsp.type.property'] = groups.treesitter['@property'],
  ['@lsp.type.variable'] = groups.treesitter['@variable'],
  ['@lsp.type.macro'] = groups.treesitter['@function.macro'],
  ['@lsp.type.macro.lua'] = groups.treesitter['@lsp.type.class'],
  ['@lsp.type.method'] = groups.treesitter['@function.method'],
  ['@lsp.type.number'] = groups.treesitter['@number'],
  ['@lsp.type.generic'] = groups.treesitter['@text'],
  ['@lsp.type.builtinType'] = groups.treesitter['@type.builtin'],
  ['@lsp.typemod.method.defaultLibrary'] = groups.treesitter['@function'],
  ['@lsp.typemod.function.defaultLibrary'] = groups.treesitter['@function'],
  ['@lsp.typemod.operator.injected'] = groups.treesitter['@operator'],
  ['@lsp.typemod.string.injected'] = groups.treesitter['@string'],
  ['@lsp.typemod.variable.defaultLibrary'] = groups.treesitter['@variable.builtin'],
  ['@lsp.typemod.variable.injected'] = groups.treesitter['@variable'],
  ['@lsp.typemod.variable.static'] = groups.treesitter['@constant'],
}

---@param opts table
function Theme.setup(opts)
  vim.tbl_deep_extend('force', groups, opts)
end

function Theme.colorscheme()
  vim.g.colors_name = 'onedark'

  vim.iter(groups):each(function(_, group)
    vim.iter(group):each(function(name, color)
      vim.api.nvim_set_hl(0, name, color)
    end)
  end)
end

return Theme
