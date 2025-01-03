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
local lightgreen = "#8FCF6C"
local emerald = "#36c692"
local turquoise = "#7fd3a5"
local blue = "#2188EF"
local lightblue = "#4DB9F4"
local sky = "#7FB7EF"
local lavender = "#adadf3"
local purple = "#9215EB"
local pink = "#FF7D7D"
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
  highlight(0, "Include", { fg=sand })
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

  highlight(0, "cStatement", {})
  highlight(0, "cLabel", {})
  highlight(0, "cConditional", {})
  highlight(0, "cRepeat", {})
  highlight(0, "cTodo", {})
  highlight(0, "cBadContinuation", {})
  highlight(0, "cSpecial", { fg=orange })
  highlight(0, "cFormat", { fg=orange })
  highlight(0, "cString", {})
  highlight(0, "cCppString", {})
  highlight(0, "cSpaceError", {})
  highlight(0, "cCppSkip", {})
  highlight(0, "cCharacter", {})
  highlight(0, "cSpecialError", {})
  highlight(0, "cSpecialCharacter", {})
  highlight(0, "cBadBlock", {})
  highlight(0, "cCurlyError", {})
  highlight(0, "cErrInParen", {})
  highlight(0, "cCppParen", {})
  highlight(0, "cErrInBracket", {})
  highlight(0, "cCppBracket", {})
  highlight(0, "cBlock", {})
  highlight(0, "cParenError", {})
  highlight(0, "cIncluded", {})
  highlight(0, "cCommentSkip", {})
  highlight(0, "cCommentString", {})
  highlight(0, "cComment2String", {})
  highlight(0, "cCommentStartError", {})
  highlight(0, "cUserLabel", {})
  highlight(0, "cBitField", {})
  highlight(0, "cOctalZero", {})
  highlight(0, "cNumber", {})
  highlight(0, "cFloat", {})
  highlight(0, "cOctal", {})
  highlight(0, "cOctalError", {})
  highlight(0, "cNumbersCom", {})
  highlight(0, "cParen", {})
  highlight(0, "cBracket", {})
  highlight(0, "cNumbers", {})
  highlight(0, "cWrongComTail", {})
  highlight(0, "cCommentL", {})
  highlight(0, "cCommentStart", {})
  highlight(0, "cComment", {})
  highlight(0, "cCommentError", {})
  highlight(0, "cOperator", {})
  highlight(0, "cType", {})
  highlight(0, "cTypedef", {})
  highlight(0, "cStructure", {})
  highlight(0, "cStorageClass", {})
  highlight(0, "cConstant", {})
  highlight(0, "cPreCondit", {})
  highlight(0, "cPreConditMatch", {})
  highlight(0, "cCppInIf", {})
  highlight(0, "cCppInElse", {})
  highlight(0, "cCppInElse2", {})
  highlight(0, "cCppOutIf", {})
  highlight(0, "cCppOutIf2", {})
  highlight(0, "cCppOutElse", {})
  highlight(0, "cCppInSkip", {})
  highlight(0, "cCppOutSkip", {})
  highlight(0, "cCppOutWrapper", {})
  highlight(0, "cCppInWrapper", {})
  highlight(0, "cPreProc", {})
  highlight(0, "cInclude", { fg=lightorange })
  highlight(0, "cDefine", {})
  highlight(0, "cMulti", {})
  highlight(0, "cPragma", {})
  highlight(0, "cUserCont", {})
  highlight(0, "cError", {})
  highlight(0, "cCppOut", {})
  highlight(0, "cUserFunction", {})
  highlight(0, "cStructMember", {})

  -- GLSL

  -- Rust
  highlight(0, "rustConditional", { link="Conditional" })
  highlight(0, "rustRepeat", {})
  highlight(0, "rustKeyword", {})
  highlight(0, "rustTypedef", {})
  highlight(0, "rustIdentifier", {})
  highlight(0, "rustStructure", {})
  highlight(0, "rustUnion", { fg=turquoise })
  highlight(0, "rustUnionContextual", {})
  highlight(0, "rustOperator", { link="Operator" })
  highlight(0, "rustExistential", {})
  highlight(0, "rustExistentialContextual", {})
  highlight(0, "rustAssert", { fg=lightgreen })
  highlight(0, "rustPanic", { fg=crimson })
  highlight(0, "rustAsync", { bold=1})
  highlight(0, "rustExternCrate", {})
  highlight(0, "rustObsoleteExternMod", {})
  highlight(0, "rustFuncName", {})
  highlight(0, "rustPubScope", {})
  highlight(0, "rustSuper", {})
  highlight(0, "rustUnsafeKeyword", {})
  highlight(0, "rustModPath", {})
  highlight(0, "rustStorage", {})
  highlight(0, "rustDefault", {})
  highlight(0, "rustAwait", { fg=turquoise })
  highlight(0, "rustPubScopeCrate", {})
  highlight(0, "rustPubScopeDelim", {})
  highlight(0, "rustModPathSep", {})
  highlight(0, "rustSelf", { fg=turquoise})
  highlight(0, "rustExternCrateString", {})
  highlight(0, "rustString", { link="String"})
  highlight(0, "rustIdentifierPrime", {})
  highlight(0, "rustMacroRepeatDelimiters", {})
  highlight(0, "rustMacroRepeat", {})
  highlight(0, "rustMacroVariable", {})
  highlight(0, "rustRawIdent", {})
  highlight(0, "rustReservedKeyword", {})
  highlight(0, "rustType", { fg=lightblue })
  highlight(0, "rustTrait", {})
  highlight(0, "rustEnum", {})
  highlight(0, "rustEnumVariant", {})
  highlight(0, "rustBoolean", {})
  highlight(0, "rustFuncCall", {})
  highlight(0, "rustSigil", {})
  highlight(0, "rustArrowCharacter", {})
  highlight(0, "rustQuestionMark", {})
  highlight(0, "rustMacro", {})
  highlight(0, "rustEscapeError", {})
  highlight(0, "rustEscape", { fg=orange })
  highlight(0, "rustEscapeUnicode", {})
  highlight(0, "rustStringContinuation", {})
  highlight(0, "rustStringDelimiter", {})
  highlight(0, "rustAttributeParenthesizedParens", {})
  highlight(0, "rustAttributeParenthesizedCurly", {})
  highlight(0, "rustAttributeParenthesizedBrackets", {})
  highlight(0, "rustDerive", {})
  highlight(0, "rustAttribute", {})
  highlight(0, "rustAttributeBalancedParens", {})
  highlight(0, "rustAttributeBalancedCurly", {})
  highlight(0, "rustAttributeBalancedBrackets", {})
  highlight(0, "rustCommentLine", { link="Comment" })
  highlight(0, "rustCommentBlock", { link="Comment" })
  highlight(0, "rustCommentLineDocError", { link="Comment" })
  highlight(0, "rustCommentBlockDocError", { link="Comment" })
  highlight(0, "rustDeriveTrait", {})
  highlight(0, "rustDynKeyword", {})
  highlight(0, "rustDecNumber", { link="Number"})
  highlight(0, "rustHexNumber", { link="Number" })
  highlight(0, "rustOctNumber", { link="Number" })
  highlight(0, "rustBinNumber", { link="Number" })
  highlight(0, "rustFloat", { link="Number" })
  highlight(0, "rustLifetime", {})
  highlight(0, "rustLifetimeCandidate", {})
  highlight(0, "rustGenericLifetimeCandidate", {})
  highlight(0, "rustGenericRegion", {})
  highlight(0, "rustLabel", {})
  highlight(0, "rustCharacterInvalid", {})
  highlight(0, "rustCharacterInvalidUnicode", {})
  highlight(0, "rustCharacter", {})
  highlight(0, "rustShebang", { fg=pink})
  highlight(0, "rustTodo", { link="Todo" })
  highlight(0, "rustCommentLineDoc", { link="Comment" })
  highlight(0, "rustCommentBlockNest", { link="Comment" })
  highlight(0, "rustCommentBlockDoc", { link="Comment" })
  highlight(0, "rustCommentBlockDocNest", { link="Comment" })
  highlight(0, "rustCommentBlockDocRustCode", { link="Comment" })
  highlight(0, "rustCommentBlockDocNestError", { link="Comment" })
  highlight(0, "rustAsmDirSpec", {})
  highlight(0, "rustAsmSym", {})
  highlight(0, "rustAsmConst", {})
  highlight(0, "rustAsmOptionsGroup", {})
  highlight(0, "rustAsmMacro", {})
  highlight(0, "rustAsmReg", {})
  highlight(0, "rustAsmSymPath", {})
  highlight(0, "rustAsmConstBalancedParens", {})
  highlight(0, "rustAsmOptions", {})
  highlight(0, "rustAsmOptionsKey", {})
  highlight(0, "rustFoldBraces", {})
  highlight(0, "rustCommentLineDocLeader", { link="Comment" })
  highlight(0, "rustCommentBlockDocStar", { link="Comment" })
  highlight(0, "rustNumber", {})
  highlight(0, "rustConstant", {})
  highlight(0, "rustCapsIdent", {})
  highlight(0, "rustFunction", { link="Function" })
  highlight(0, "rustCommentDocCodeFence", { link="Comment" })
  highlight(0, "rustObsoleteStorage", {})
  highlight(0, "rustCommentLinesDocNonRustCode", { link="Comment" })
  highlight(0, "rustCommentLinesDocRustCode", { link="Comment" })

  -- Python

  -- Lualine

end

return M
