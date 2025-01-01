local g = vim.g
local highlight = vim.api.nvim_set_hl

local black = "#131313"
local white = "#F6FAFA"
local bg = black

local grey0 = "#245668"
local grey1 = "#373c4d"
local grey89 = "#e4e4e4"
local grey70 = "#b2b2b2"
local grey62 = "#9e9e9e"
local grey58 = "#949494"
local grey50 = "#808080"
local grey39 = "#626262"
local grey30 = "#4e4e4e"
local grey27 = "#444444"
local grey23 = "#3a3a3a"
local grey18 = "#2e2e2e"
local grey15 = "#262626"
local grey11 = "#1c1c1c"
local grey7 = "#121212"

-- Core theme
local khaki = "#f9cb52"
local yellow = "#e4ba4e"
local orange = "#de935f"
local lightorange = "#E2C7B6"
local coral = "#f09479"
local orchid = "#e196a2"
local lime = "#99da3d"
local green = "#6fcf25"
local emerald = "#36c692"
local turquoise = "#7fd3a5"
local blue = "#2188EF"
local lightblue = "#4DB9F4"
local sky = "#7FB7EF"
local lavender = "#adadf3"
local purple = "#9215EB"
local violet = "#E061F9"
local cranberry = "#e65e72"
local crimson = "#ff5189"
local red = "#ff5454"
local magenta = "#FF03F2"
local magenta2 = "#B31DAB"

-- Extra
local sand = "#EFDB8A"
local ochre = "#eac290"
local alarm = "#f9bc05"
local alarmred = "#fe1808"
local colorcolumn = "#0F0F0F"

local M = {}

M.style = function()
  -- Basics
  highlight(0, "Normal", { bg = bg, fg = white })
  highlight(0, "ModeMsg", { fg = sand })
  highlight(0, "Comment", { fg = grey62, italic = true })

  -- Basic syntax highlighting
  highlight(0, "Constant", { fg=coral })
  highlight(0, "String", { fg=khaki })
  highlight(0, "Character", { fg=lightorange })
  highlight(0, "Number", { fg=coral })
  highlight(0, "Boolean", { fg=blue, bold=1 })
  highlight(0, "Float", { fg=sky })
  highlight(0, "Identifier", { fg=lightblue })
  highlight(0, "Function", { fg=sand })
  highlight(0, "Statement", { fg=lime, bold=1 })
  highlight(0, "Conditional", { fg=green, bold=1 })
  highlight(0, "Repeat", { fg=green, bold=1 })
  highlight(0, "Label", { fg=sand })
  highlight(0, "Opterator", { fg=white })
  highlight(0, "Keyword", { fg=lime, bold=1 })
  highlight(0, "Exception", { fg=lime, bold=1 })

  highlight(0, "PreProc", { fg=khaki })
  highlight(0, "Include", { fg=crimson })
  highlight(0, "Define", { fg=yellow })
  highlight(0, "Macro", { fg=ochre })
  highlight(0, "PreCondit", { fg=orange })

  highlight(0, "Type", { fg=turquoise })
  highlight(0, "StorageClass", { fg=lightblue })
  highlight(0, "Structure", { fg=sky, bold=1 })
  highlight(0, "Typedef", { fg=blue, bold=1 })

  highlight(0, "Underlined", { fg=white, underline=true })
  highlight(0, "Error", { bg=alarmred, fg=white, bold=1 })
  highlight(0, "Todo", { bg=alarm, fg=black, bold=1 })

  -- UI
  highlight(0, "Normal", { fg=white, bg=black })
  highlight(0, "ColorColumn", { bg=colorcolumn, fg=white, bold=1 })
  highlight(0, "ErrorMsg", { fg=red })
  highlight(0, "VertSplit", { bg=grey18, fg=black })
  highlight(0, "LineNr", { fg=grey27 })
  highlight(0, "Whitespace", { fg=magenta })
  highlight(0, "CurSearch", { fg=white, bg=magenta })
  highlight(0, "EndOfBuffer", { fg=magenta2 })
  highlight(0, "WinSeparator", { fg=grey15, bg=grey15 })

  -- C
  highlight(0, "cInclude", { fg=lightorange })
  highlight(0, "cSpecial", { fg=orange })
  highlight(0, "cFormat", { fg=orange })

  -- GLSL

  -- Rust

  -- Python

  -- Lualine

end

return M
