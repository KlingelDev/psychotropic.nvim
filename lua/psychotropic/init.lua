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

-- Extra
local mineral = "#314940"
local bay = "#4d5d8d"
local sand = "#EFDB8A"
local ochre = "#eac290"
local alarm = "#f9bc05"
local alarmred = "#fe1808"
local colorcolumn = "#0F0F0F"

local M = {}

M.palette = {
  black = black,
  white = white,
  bg = bg,
  grey0 = grey0,
  grey1 = grey1,
  grey89 = grey89,
  grey70 = grey70,
  grey62 = grey62,
  grey58 = grey58,
  grey50 = grey50,
  grey39 = grey39,
  grey30 = grey30,
  grey27 = grey27,
  grey23 = grey23,
  grey18 = grey18,
  grey15 = grey15,
  grey11 = grey11,
  grey7 = grey7,
  khaki = khaki,
  yellow = yellow,
  orange = orange,
  coral = coral,
  orchid = orchid,
  lime = lime,
  green = green,
  emerald = emerald,
  turquoise = turquoise,
  blue = blue,
  sky = sky,
  lavender = lavender,
  purple = purple,
  violet = violet,
  cranberry = cranberry,
  crimson = crimson,
  red = red,
  mineral = mineral,
  bay = bay,
}

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
  highlight(0, "Include", { fg=white })
  highlight(0, "Define", { fg=yellow })
  highlight(0, "Macro", { fg=ochre })
  highlight(0, "PreCondit", { fg=red })

  highlight(0, "Type", { fg=turquoise })
  highlight(0, "StorageClass", { fg=lightblue })
  highlight(0, "Structure", { fg=sky, bold=1 })
  highlight(0, "Typedef", { fg=blue, bold=1 })

  highlight(0, "Underlined", { fg=white, underline=true })
  highlight(0, "Error", { bg=alarmred, fg=white, bold=1 })
  highlight(0, "Todo", { bg=alarm, fg=black, bold=1 })
end

M.custom_colors = function(colors)
  black = colors.black and colors.black or M.palette.black
  white = colors.white and colors.white or M.palette.white
  bg = colors.bg and colors.bg or M.palette.bg
  grey0 = colors.grey0 and colors.grey0 or M.palette.grey0
  grey1 = colors.grey1 and colors.grey1 or M.palette.grey1
  grey89 = colors.grey89 and colors.grey89 or M.palette.grey89
  grey70 = colors.grey70 and colors.grey70 or M.palette.grey70
  grey62 = colors.grey62 and colors.grey62 or M.palette.grey62
  grey58 = colors.grey58 and colors.grey58 or M.palette.grey58
  grey50 = colors.grey50 and colors.grey50 or M.palette.grey50
  grey39 = colors.grey39 and colors.grey39 or M.palette.grey39
  grey30 = colors.grey30 and colors.grey30 or M.palette.grey30
  grey27 = colors.grey27 and colors.grey27 or M.palette.grey27
  grey23 = colors.grey23 and colors.grey23 or M.palette.grey23
  grey18 = colors.grey18 and colors.grey18 or M.palette.grey18
  grey15 = colors.grey15 and colors.grey15 or M.palette.grey15
  grey11 = colors.grey11 and colors.grey11 or M.palette.grey11
  grey7 = colors.grey7 and colors.grey7 or M.palette.grey7
  khaki = colors.khaki and colors.khaki or M.palette.khaki
  yellow = colors.yellow and colors.yellow or M.palette.yellow
  orange = colors.orange and colors.orange or M.palette.orange
  coral = colors.coral and colors.coral or M.palette.coral
  orchid = colors.orchid and colors.orchid or M.palette.orchid
  lime = colors.lime and colors.lime or M.palette.lime
  green = colors.green and colors.green or M.palette.green
  emerald = colors.emerald and colors.emerald or M.palette.emerald
  turquoise = colors.turquoise and colors.turquoise or M.palette.turquoise
  blue = colors.blue and colors.blue or M.palette.blue
  sky = colors.sky and colors.sky or M.palette.sky
  lavender = colors.lavender and colors.lavender or M.palette.lavender
  purple = colors.purple and colors.purple or M.palette.purple
  violet = colors.violet and colors.violet or M.palette.violet
  cranberry = colors.cranberry and colors.cranberry or M.palette.cranberry
  crimson = colors.crimson and colors.crimson or M.palette.crimson
  red = colors.red and colors.red or M.palette.red
  mineral = colors.mineral and colors.mineral or M.palette.mineral
  bay = colors.bay and colors.bay or M.palette.bay
end
return M
