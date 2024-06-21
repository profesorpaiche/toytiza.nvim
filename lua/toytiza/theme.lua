-- local chalkboard = require("chalkboard.colors")
local c = require("toytiza.colors")

local theme = {}

-- NOTE: Additional options can be used
--       https://github.com/shaunsingh/nord.nvim/blob/master/lua/nord/theme.lua

theme.highlights = {
    Foo = { bg = c.red_4, fg = c.foreground },
    Comment = { fg = c.gray_1, style = "italic" }, -- any comment
    ColorColumn = { bg = c.black_2 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.gray_3 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.white_4, bg = c.none, style = "reverse" }, -- the character under the cursor
    lCursor = { fg = c.white_4, bg = c.none, style = "reverse" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.white_4, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    CursorColumn = { bg = c.black_1 },
    CursorLine = { bg = c.black_1 },
    Directory = { fg = c.blue_3 }, -- directory names (and other special names in listings)
    DiffAdd = { bg = c.green_b }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.orange_b }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.red_b }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.purple_b }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.black_2 },
    ErrorMsg = { fg = c.red_3 },
    VertSplit = { fg = c.gray_1 }, -- the column separating vertically split windows
    WinSeparator = { fg = c.gray_1, style = "bold" }, -- the column separating vertically split windows
    Folded = { fg = c.orange_5, bg = c.orange_b, style = "italic" },
    -- FoldColumn = { fg = c.orange_3 },
    FoldColumn = { fg = c.gray_1, bg = c.none },
    SignColumn = { fg = c.orange_b, bg = c.none },
    SignColumnSB = { fg = c.orange_b, bg = c.none }, -- column where |signs| are displayed
    Substitute = { fg = c.black_1, bg = c.red_3 },
    LineNr = { fg = c.black_4 },
    CursorLineNr = { fg = c.white_1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.green_5, style = "bold,underline" },
    ModeMsg = { fg = c.white_1, style = "bold" },
    MsgArea = { fg = c.white_1 }, -- Area for messages and cmdline

    MoreMsg = { fg = c.blue_3 }, -- |more-prompt|
    NonText = { fg = c.bla_4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.foreground, bg = c.blackboard }, -- normal text
    NormalNC = { fg = c.foreground, bg = c.blackboard }, -- normal text in non-current windows
    NormalSB = { fg = c.black_4, bg = c.blackboard }, -- normal text in sidebar
    NormalFloat = { fg = c.foreground, bg = c.black_1 }, -- Normal text in floating windows.
    FloatBorder = { fg = c.white_3, bg = c.balckboard },
    FloatTitle = { fg = c.foreground, bg = c.blackboard },
    Pmenu = { fg = c.gray_5, bg = c.black_2 }, -- Popup menu: normal item.
    PmenuSel = { fg = c.foreground, bg = c.purple_b }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.gray_5, bg = c.gray_3 }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.foreground, bg = c.purple_b }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.yellow_3 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.black_1, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.blackboard, bg = c.purple_1 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = c.blackboard, bg = c.yellow_5 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = c.black_4 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.red_1, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.orange_1, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.purple_1, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.blue_1, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.white_1, bg = c.black_3 }, -- status line of current window
    StatusLineNC = { fg = c.purple_1, bg = c.gray_1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Tabline = { fg = c.orange_1, bg = c.black_3 }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.black_1 }, -- tab pages line, where there are no labels
    TablineSel = { fg = c.black_2, bg = c.white_1 }, -- tab pages line, active tab page label
    Title = { fg = c.green_3, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.black_2 }, -- Visual mode selection
    VisualNOS = { bg = c.black_2 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.orange_3 },
    Whitespace = { fg = c.green_b }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = c.purple_5, bg = c.black_2 }, -- current match in 'wildmenu' completion
    WinBar = { link = "StatusLine" }, -- window bar
    WinBarNC = { link = "StatusLineNC" }, -- window bar in inactive windows

    -- qfLineNr = { fg = c.whi_4, bg = c.none, style = "reverse" },
    qfLineNr = { fg = c.grey_2 },
    qfFileName = { fg = c.blue_3 },

    StatusLineTerm = { fg = c.white_3, bg = c.gray_5 },
    StatusLineTermNC = { fg = c.white_3, bg = c.gray_1 },
    ToolbarLine = { fg = c.white_3, bg = c.black_2 },
    ToolbarButton = { fg = c.white_3, bg = c.none, style = "bold" },
    NormalMode = { fg = c.purple_3, bg = c.none, style = "reverse" },
    InsertMode = { fg = c.blue_3, bg = c.none, style = "reverse" },
    ReplacelMode = { fg = c.red_3, bg = c.none, style = "reverse" },
    VisualMode = { fg = c.green_3, bg = c.none, style = "reverse" },
    CommandMode = { fg = c.yellow_3, bg = c.none, style = "reverse" },
    Warnings = { fg = c.orange_3 },

    -- Needs improvement
    Operator = { fg = c.red_5 }, -- sizeof", "+", "*", etc.
    Constant = { fg = c.green_3 }, -- any constant
    String = { fg = c.yellow_3, style = "italic" }, -- any string
    Character = { fg = c.yellow_3, style = "italic" }, -- any character constant: 'c', '\n'
    Number = { fg = c.purple_3 }, -- a number constant: 5
    Boolean = { fg = c.orange_3, style = "italic" }, -- a boolean constant: TRUE, false
    Float = { fg = c.purple_3 }, -- a floating point constant: 2.3e10

    Statement = { fg = c.green_5, style = "italic" }, -- any statement
    Label = { fg = c.blue_3 }, -- case, default, etc.
    Keyword = { fg = c.green_1, style = "italic" }, -- italic for, do, while, etc.
    Repeat = { fg = c.green_3 }, -- italic any other keyword

    PreProc = { fg = c.blue_1, style = "italic" }, -- generic Preprocessor
    -- Include = { fg = c.purple_3 }, -- preprocessor #include
    -- Define = { fg = c.purple_3 }, -- preprocessor #define
    -- Macro = { fg = c.purple_3 }, -- same as Define
    -- PreCondit = { fg = c.purple_3 }, -- preprocessor #if, #else, #endif, etc.

    Type = { fg = c.purple_3 }, -- int, long, char, etc.
    -- StorageClass = { fg = c.purple_5 }, -- static, register, volatile, etc.
    -- Structure = { fg = c.orange_3 }, -- struct, union, enum, etc.
    -- Typedef = { fg = c.purple_3 }, -- A typedef

    Special = { fg = c.yellow_1, style = "italic" }, -- any special symbol
    SpecialChar = { fg = c.yellow_3, style = "italic" }, -- special character in a constant
    -- Tag = { fg = c.yellow_3 }, -- you can use CTRL-] on this
    Delimiter = { fg = c.red_5 }, -- character that needs attention like , or .
    -- SpecialComment = { fg = c.gray_1 }, -- special things inside a comment
    Debug = { fg = c.orange_1 }, -- debugging statements

    Underlined = { style = "underline" }, -- text that stands out, HTML links
    Bold = { fg = c.foreground, style = "bold" }, -- (preferred) any bold text
    Italic = { fg = c.foreground, style = "italic" }, -- (preferred) any italic text
    Ignore = { fg = c.black_1 }, -- left blank, hidden

    -- Conditional = { fg = c.red_3, style = "italic" }, -- italic if, then, else, endif, switch, etc.
    Error = { fg = c.none, bg = c.red_3, style = "bold,underline" }, -- any erroneous construct with bold
    Todo = { style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    Identifier = { fg = c.foreground }, -- any variable name. For lua, this is the color for [ ].identifier
    Function = { fg = c.blue_3 }, -- italic function names. For lua, this is [ ].[identifier].function()
    Exception = { fg = c.orange_3 }, -- try, catch, throw

    htmlH1 = { fg = c.red_3, style = "bold" },
    htmlH2 = { fg = c.orange_3, style = "bold" },
    htmlH3 = { fg = c.yellow_3, style = "bold" },
    htmlH4 = { fg = c.green_3, style = "bold" },
    htmlH5 = { fg = c.blue_3, style = "bold" },
    htmlH6 = { fg = c.purple_3, style = "bold" },
    htmlLink = { fg = c.blue_3, style = "underline" },

    markdownH1Delimiter = { fg = c.red_3 },
    markdownH2Delimiter = { fg = c.orange_3 },
    markdownH3Delimiter = { fg = c.yellow_3 },
    markdownH4Delimiter = { fg = c.green_3 },
    markdownH5Delimiter = { fg = c.blue_3 },
    markdownH6Delimiter = { fg = c.purple_3 },
    markdownH1 = { fg = c.red_3, style = "bold" },
    markdownH2 = { fg = c.orange_3, style = "bold" },
    markdownH3 = { fg = c.yellow_3, style = "bold" },
    markdownH4 = { fg = c.green_3, style = "bold" },
    markdownH5 = { fg = c.blue_3, style = "bold" },
    markdownH6 = { fg = c.purple_3, style = "bold" },

    mkdCodeDelimiter = { fg = c.foreground, bg = c.black_1 },
    mkdCodeStart = { fg = c.green_5, style = "bold" },
    mkdCodeEnd = { fg = c.green_5, style = "bold" },

    markdownHeadingDelimiter = { fg = c.yellow_3, style = "bold" },
    markdownCode = { fg = c.green_5 },
    markdownCodeBlock = { fg = c.green_5 },
    markdownLinkText = { fg = c.blue_3, style = "underline" },

    debugPC = { bg = c.blackboard }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = c.blue_3, bg = c.blue_b }, -- used for breakpoint colors in terminal-debug
    dosIniLabel = { link = "@property" },

    ["helpCommand"] = { fg = c.blue_3, bg = c.blackboard },

    -- These groups are for the Neovim tree-sitter highlights.
    ["@annotation"] = { link = "PreProc" },
    ["@attribute"] = { link = "PreProc" },
    ["@boolean"] = { link = "Boolean" },
    ["@string"] = { link = "String" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@comment"] = { link = "Comment" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Define" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.coroutine"] = { link = "@keyword" },
    ["@keyword.operator"] = { link = "@operator" },
    ["@keyword.return"] = { link = "@keyword" },
    ["@none"] = {},
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@tag"] = { link = "Label" },
    ["@tag.attribute"] = { link = "@property" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@markup"] = { link = "@none" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.raw.markdown_inline"] = { bg = c.blackboard, fg = c.blue_3 },
    ["@markup.math"] = { link = "Special" },
    ["@markup.strong"] = { style = "bold" },
    ["@markup.emphasis"] = { style = "italic" },
    ["@markup.strikethrough"] = { style = "strikethrough" },
    ["@markup.underline"] = { style = "underline" },
    ["@markup.heading"] = { link = "Title" },
    -- ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.link.label"] = { link = "Special" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup.link.url"] = { link = "Underlined" },

    ["@operator"] = { link = "Operator" }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@comment.documentation"] = { fg = c.purple_1 },
    ["@comment.note"] = { fg = c.green_3 },
    ["@comment.error"] = { fg = c.red_3 },
    ["@comment.hint"] = { fg = c.blue_3 },
    ["@comment.info"] = { fg = c.purple_3 },
    ["@comment.warning"] = { fg = c.orange_3 },
    ["@comment.todo"] = { fg = c.blue_5 },

    -- Variables
    ["@variable"] = { fg = c.foreground },
    ["@variable.global"] = { fg = c.purple_5 },
    ["@variable.builtin"] = { fg = c.yellow_5 },
    ["@variable.member"] = { fg = c.white_4 }, -- For fields. NOTE: play around with this.
    -- ["@property"] = { fg = c.red_5 }, -- NOTE: Maybe the bright color could be good
    ["@property"] = { fg = c.puple_5 },

    -- Functions
    ["@function"] = { link = "Function" },
    -- ["@function.builtin"] = { link = "Special" },
    ["@function.builtin"] = { fg = c.blue_3, style = "italic" },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "@function.method" },
    ["@namespace.builtin"] = { link = "@variable.builtin" },

    -- Types
    ["@type"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "@keyword" },
    ["@type.builtin"] = { link = "Type" },
    -- ["@type.builtin"] = { fg = c.purple_1 },

    --- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters ie: `.`
    ["@punctuation.bracket"] = { fg = c.purple_3 }, -- For brackets and parens.
    ["@punctuation.special"] = { fg = c.purple_3 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@markup.list"] = { fg = c.purple_5 }, -- For special punctutation that does not fall in the catagories before.
    ["@markup.list.markdown"] = { fg = c.purple_3, bold = true },
    ["@markup.list.unchecked"] = { fg = c.blue_1 }, -- For brackets and parens.
    ["@markup.list.checked"] = { fg = c.green_5 }, -- For brackets and parens.

    --- Literals
    ["@string.documentation"] = { fg = c.yellow_1 },
    ["@string.regex"] = { fg = c.yellow_1, style = "italic" },
    ["@string.regexp"] = { fg = c.yellow_1, style = "italic" }, -- For regexes.
    ["@string.escape"] = { fg = c.purple_1, style = "italic" }, -- For escape characters within a string.

    --- Used on functions
    ["@constructor"] = { fg = c.red_4 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@variable.parameter"] = { fg = c.orange_5 }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = c.orange_5, style = "italic" }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- Text
    ["@text"] = { fg = c.foreground }, -- For strings considered text in a markup language.
    ["@text.emphasis"] = { fg = c.foreground, style = "italic" },
    ["@text.underline"] = { fg = c.foreground, bg = c.none, style = "underline" },
    ["@text.reference"] = { fg = c.white_3 },
    ["@text.literal"] = { fg = c.white_1 },

    -- Function names
    ["@method"] = { fg = c.blue_1, style = "bold" },
    ["@funtion.macro"] = { fg = c.green_1, style = 'bold' },

    -- Language keywords
    ["@keyword"] = { fg = c.green_3, style = "italic" },
    ["@keyword.function"] = { fg = c.green_3, style = "italic" },
    ["@repeat"] = { fg = c.green_3, style = "italic" },

    ["@text.uri"] = { fg = c.blue_3, style = "underline" },
    ["@text.strike"] = { fg = c.foreground, style = "strikethrough" },
    ["@text.math"] = { fg = c.purple_1 },
    ["@float"] = { fg = c.purple_3 },
    ["@exception"] = { fg = c.orange_3 },
    ["@label"] = { fg = c.orange_3 },
    ["@error"] = { fg = c.red_3, style = 'underline' },
    ["@include"] = { fg = c.red_3 },
    ["@parameter"] = { fg = c.blue_1 },
    ["@symbol"] = { fg = c.green_1 },
    ["@text.title"] = { fg = c.white_3, bg = c.none, style = "bold" },
    ["@text.strong"] = { fg = c.foreground, bg = c.none, style = "bold" },

    -- Conditionals
    ["@conditional"] = { fg = c.red_3, style = "italic" }, -- For keywords related to conditionnals.
    -- Namespaces and property accessors
    ["@namespace"] = { fg = c.blue_1 }, -- For identifiers referring to modules and namespaces.
    ["@field"] = { fg = c.purple_1 },

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },
    ["@module"] = { link = "Include" },

    -- tsx
    ["@tag.tsx"] = { fg = c.red_3 },
    ["@constructor.tsx"] = { fg = c.blue_5 },
    ["@tag.delimiter.tsx"] = { fg = c.blue_1 },

    -- LSP Semantic Token Groups
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.deriveHelper"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
    ["@lsp.type.generic"] = { link = "@variable" },
    ["@lsp.type.interface"] = { fg = c.blue_1 },

    -- ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.keyword"] = { fg = c.green_1, bg = c.green_b, style = "italic" },
    ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },

    -- "@lsp.type.property"] = { fg = c.foreground },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { stye = "undercurl", sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.green_1 },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = c.green_1 },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },
    -- -- NOTE: maybe add these with distinct highlights?
    -- -- ["@lsp.typemod.variable.globalScope"] (global variables)

    -- yaml stuff
    yamlBlockMappingKey = { fg = c.green_5 },
    yamlBool = { link = "Boolean" },
    yamlDocumentStart = { link = "Keyword" },
    yamlTSField = { fg = c.green_5 },
    yamlTSString = { fg = c.white_1 },
    yamlTSPunctSpecial = { link = "Keyword" },
    yamlKey = { fg = c.green_5 }, -- stephpy/vim-yaml
    ["@string.yaml"] = { fg = c.yellow_3 },
    ["@property.yaml"] = { fg = c.purple_3 },

    -- bash
    ["@keyword.directive.bash"] = { fg = c.green_1 }, -- By default is linked to PreProc

    -- Python
    ["@variable.parameter.python"] = { link = "@variable.parameter" },
    ["@lsp.type.namespace.python"] = { link = "@variable" },

    -- LSP stuff
    LspReferenceText = { bg = c.yellow_b }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.yellow_b }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.yellow_b }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = c.blue_b, style = "bold" },
    LspCodeLens = { fg = c.gray_2 },
    LspInlayHint = { bg = c.purple_b, fg = c.gray_3 },
    LspInfoBorder = { fg = c.white_3, bg = c.blackboard },
    ALEErrorSign = { fg = c.red_3 },
    ALEWarningSign = { fg = c.orange_3 },
    DapStoppedLine = { bg = c.orange_b }, -- Used for "Warning" diagnostic virtual text

    -- Diagnostics
    DiagnosticError = { fg = c.red_3 }, -- used for "Error" diagnostic virtual text
    DiagnosticWarn = { fg = c.orange_3 }, -- used for "Warning" diagnostic signs in sign column
    DiagnosticInfo = { fg = c.purple_3 }, -- used for "Information" diagnostic virtual text
    DiagnosticHint = { fg = c.blue_3 }, -- used for "Hint" diagnostic virtual text
    DiagnosticUnnecessary = { fg = c.gray_1, bg = c.blackboard }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError = { bg = c.red_b, fg = c.red_3 }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = c.orange_b, fg = c.orange_3 }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = c.purple_b, fg = c.purple_3 }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = c.blue_b, fg = c.blue_3 }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError = { sp = c.red_3, style = "undercurl" }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { sp = c.orange_3, style = "undercurl" }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { sp = c.purple_3, style = "undercurl" }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { sp = c.blue_3, style = "undercurl" }, -- Used to underline "Hint" diagnostics

    -- Plugins stuff

    -- LspTrouble
    LspTroubleText = { fg = c.white_1 },
    LspTroubleCount = { fg = c.blue_5, bg = c.blue_3 },
    LspTroubleNormal = { fg = c.white_1, bg = c.black_2 },
    GitSignsChangeNr = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
    GitSignsDeleteNr = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
    GitSignsCurrentLineBlame = { fg = c.white_1, style = "bold" },

    -- LspSaga
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.black_1 },
    LspFloatWinBorder = { fg = c.white_4 },
    LspSagaBorderTitle = { fg = c.green_5 },
    LspSagaHoverBorder = { fg = c.blue_3 },
    LspSagaRenameBorder = { fg = c.green_3 },
    LspSagaDefPreviewBorder = { fg = c.green_3 },
    LspSagaCodeActionBorder = { fg = c.blue_3 },
    LspSagaFinderSelection = { fg = c.gray_3 },
    LspSagaCodeActionTitle = { fg = c.blue_1 },
    LspSagaCodeActionContent = { fg = c.purple_3 },
    LspSagaSignatureHelpBorder = { fg = c.red_3 },
    ReferencesCount = { fg = c.purple_3 },
    DefinitionCount = { fg = c.purple_3 },
    DefinitionIcon = { fg = c.blue_3 },
    ReferencesIcon = { fg = c.blue_3 },
    TargetWord = { fg = c.green_5 },

    LspDiagnosticsError = { fg = c.red_3 },
    LspDiagnosticsWarning = { fg = c.orange_3 },
    LspDiagnosticsInformation = { fg = c.purple_3 },
    LspDiagnosticsHint = { fg = c.blue_3 },

    -- headline
    Headline1 = { fg = c.red_5, bg = c.red_b, style = "bold" },
    Headline2 = { fg = c.orange_5, bg = c.orange_b, style = "bold" },
    Headline3 = { fg = c.yellow_5, bg = c.yellow_b, style = "bold" },
    Headline4 = { fg = c.green_5, bg = c.green_b, style = "bold" },
    Headline5 = { fg = c.blue_5, bg = c.blue_b, style = "bold" },
    Headline6 = { fg = c.purple_5, bg = c.purple_b, style = "bold" },
    Quote = { fg = c.black_1 },
    CodeBlock = { bg = c.blackboard },
    Dash = { c.blue_3, style = "bold" },

    -- nvim-dap
    DapBreakpoint = { fg = c.green_3 },
    DapStopped = { fg = c.purple_3 },
    -- nvim-dap-ui
    DapUIVariable = { fg = c.white_1 },
    DapUIScope = { fg = c.blue_1 },
    DapUIType = { fg = c.blue_5 },
    DapUIValue = { fg = c.white_1 },
    DapUIModifiedValue = { fg = c.blue_1 },
    DapUIDecoration = { fg = c.blue_1 },
    DapUIThread = { fg = c.blue_1 },
    DapUIStoppedThread = { fg = c.blue_1 },
    DapUIFrameName = { fg = c.white_1 },
    DapUISource = { fg = c.blue_5 },
    DapUILineNumber = { fg = c.blue_1 },
    DapUIFloatBorder = { fg = c.blue_1 },
    DapUIWatchesEmpty = { fg = c.red_3 },
    DapUIWatchesValue = { fg = c.blue_1 },
    DapUIWatchesError = { fg = c.red_3 },
    DapUIBreakpointsPath = { fg = c.blue_1 },
    DapUIBreakpointsInfo = { fg = c.blue_1 },
    DapUIBreakpointsCurrentLine = { fg = c.blue_1 },
    DapUIBreakpointsLine = { fg = c.blue_1 },

    -- Barbar
    BufferCurrentERROR = { bg = c.blackboard, fg = c.red_3 },
    BufferCurrentHINT = { bg = c.blackboard, fg = c.blue_3 },
    BufferCurrentINFO = { bg = c.blackboard, fg = c.purple_3 },
    BufferCurrentWARN = { bg = c.blackboard, fg = c.orange_3 },
    BufferCurrentIndex = { bg = c.blackboard, fg = c.purple_3 },
    BufferCurrentMod = { bg = c.blackboard, fg = c.orange_3 },
    BufferCurrentSign = { bg = c.blackboard, fg = c.black_1 },
    BufferCurrentTarget = { bg = c.blackboard, fg = c.red_1 },
    BufferAlternate = { bg = c.yellow_b, fg = c.yellow_1 },
    BufferAlternateERROR = { bg = c.red_b, fg = c.error_1 },
    BufferAlternateHINT = { bg = c.blue_b, fg = c.blue_1 },
    BufferAlternateIndex = { bg = c.purple_b, fg = c.purple_1 },
    BufferAlternateINFO = { bg = c.purple_b, fg = c.purple_1 },
    BufferAlternateMod = { bg = c.orange_b, fg = c.orange_1 },
    BufferAlternateSign = { bg = c.blue_b, fg = c.blue_1 },
    BufferAlternateTarget = { bg = c.red_b, fg = c.red_1 },
    BufferAlternateWARN = { bg = c.orange_b, fg = c.orange_1 },
    BufferVisible = { bg = c.black_2, fg = c.foreground },
    BufferVisibleERROR = { bg = c.black_2, fg = c.red_3 },
    BufferVisibleHINT = { bg = c.black_2, fg = c.purple_3 },
    BufferVisibleINFO = { bg = c.black_2, fg = c.blue_3 },
    BufferVisibleWARN = { bg = c.black_2, fg = c.orange_3 },
    BufferVisibleIndex = { bg = c.black_2, fg = c.blue_3 },
    BufferVisibleMod = { bg = c.black_2, fg = c.orange_3 },
    BufferVisibleSign = { bg = c.black_2, fg = c.blue_3 },
    BufferVisibleTarget = { bg = c.black_2, fg = c.red_3 },
    BufferInactive = { bg = c.black_2, fg = c.gray_1 },
    BufferInactiveERROR = { bg = c.black_2, fg = c.red_1 },
    BufferInactiveHINT = { bg = c.black_2, fg = c.purple_1 },
    BufferInactiveINFO = { bg = c.black_2, fg = c.blue_1 },
    BufferInactiveWARN = { bg = c.black_2, fg = c.orange_1 },
    BufferInactiveIndex = { bg = c.black_2, fg = c.gray_1 },
    BufferInactiveMod = { bg = c.black_2, fg = c.orange_1 },
    BufferInactiveSign = { bg = c.black_2, fg = c.blackboard },
    BufferInactiveTarget = { bg = c.black_2, fg = c.red_1 },
    BufferOffset = { bg = c.black_2, fg = c.gray_1 },
    BufferTabpageFill = { bg = c.black_1, fg = c.gray_1 },
    BufferTabpages = { bg = c.black_2, fg = c.none },

    -- NeoVim
    healthError = { fg = c.red_3 },
    healthSuccess = { fg = c.green_3 },
    healthWarning = { fg = c.orange_3 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.orange_3 },

    -- WhichKey
    WhichKey = { fg = c.blue_3, style = "bold" },
    WhichKeyGroup = { fg = c.white_3 },
    WhichKeyDesc = { fg = c.green_5, style = "italic" },
    WhichKeySeperator = { fg = c.blue_5 },
    WhichKeyFloating = { bg = c.black_1 },
    WhichKeyFloat = { bg = c.black_1 },
    WhichKeyValue = { fg = c.green_5 },

    -- Alpha
    AlphaShortcut = { fg = c.green_3 },
    AlphaHeader = { fg = c.blue_3 },
    AlphaHeaderLabel = { fg = c.green_3 },
    AlphaFooter = { fg = c.blue_1 },
    AlphaButtons = { fg = c.purple_3 },

    -- Dashboard
    DashboardShortCut = { fg = c.green_5 },
    DashboardHeader = { fg = c.blue_3 },
    DashboardCenter = { fg = c.red_3 },
    DashboardFooter = { fg = c.purple_3 },
    DashboardKey = { fg = c.orange_3 },
    DashboardDesc = { fg = c.green_5 },
    DashboardIcon = { fg = c.green_5, style = "bold" },

    -- glyph palette
    GlyphPalette1 = { fg = c.red_3 },
    GlyphPalette2 = { fg = c.green_3 },
    GlyphPalette3 = { fg = c.yellow_3 },
    GlyphPalette4 = { fg = c.blue_3 },
    GlyphPalette6 = { fg = c.purple_3 },
    GlyphPalette7 = { fg = c.orange_3 },
    GlyphPalette9 = { fg = c.white_3 },

    -- Fern
    FernBranchText = { fg = c.green_3 },

    NeoTreeNormal = { fg = c.white_2, bg = c.black_1 },
    NeoTreeNormalNC = { fg = c.white_2, bg = c.black_1 },
    NeoTreeDimText = { fg = c.blue_1 },

    -- NvimTree
    NvimTreeNormal = { fg = c.white_3, bg = c.black_1 },
    NvimTreeWinSeparator = { fg = c.foreground, bg = c.blackboard },
    NvimTreeNormalNC = { fg = c.white_3, bg = c.black_1 },
    NvimTreeRootFolder = { fg = c.blue_3, style = "bold" },
    NvimTreeGitDirty = { fg = c.orange_3 },
    NvimTreeGitNew = { fg = c.green_3 },
    NvimTreeGitDeleted = { fg = c.red_3 },
    NvimTreeOpenedFile = { bg = c.black_2 },
    NvimTreeSpecialFile = { fg = c.purple_3, style = "underline" },
    NvimTreeIndentMarker = { fg = c.blue_b },
    NvimTreeImageFile = { fg = c.white_3 },
    NvimTreeSymlink = { fg = c.blue_3 },
    NvimTreeFolderIcon = { bg = c.none, fg = c.blue_3 },

    -- Sneak
    Sneak = { fg = c.black_2, bg = c.red_5 },
    SneakScope = { bg = c.black_1 },

    -- Hop
    HopNextKey = { fg = c.red_1, style = "bold" },
    HopNextKey1 = { fg = c.orange_1, style = "bold" },
    HopNextKey2 = { fg = c.yellow_1 },
    HopUnmatched = { fg = c.green_1 },

    TSNodeKey = { fg = c.red_5, style = "bold" },
    TSNodeUnmatched = { fg = c.gray_1 },

    -- leap.nvim
    LeapMatch = { bg = c.red_1, fg = c.foreground, style = "bold" },
    LeapLabelPrimary = { fg = c.red_1, style = "bold" },
    LeapLabelSecondary = { fg = c.green_3, style = "bold" },
    LeapBackdrop = { fg = c.gray_1 },

    FlashBackdrop = { fg = c.black_4 },
    FlashLabel = { bg = c.red_5, style = "bold", fg = c.foreground },

    LightspeedGreyWash = { fg = c.black_4 },
    LightspeedLabel = { fg = c.red_5, style = "bold,underline" },
    LightspeedLabelDistant = { fg = c.green_5, style = "bold,underline" },
    LightspeedLabelDistantOverlapped = { fg = c.green_4, style = "underline" },
    LightspeedLabelOverlapped = { fg = c.red_4, style = "underline" },
    LightspeedMaskedChar = { fg = c.orange_3 },
    LightspeedOneCharMatch = { bg = c.red_4, fg = c.foreground, style = "bold" },
    LightspeedPendingOpArea = { bg = c.red_4, fg = c.foreground },
    LightspeedShortcut = { bg = c.red_4, fg = c.foreground, style = "bold,underline" },
    LightspeedUnlabeledMatch = { fg = c.blue_4, style = "bold" },

    -- Cmp
    CmpItemKind = { fg = c.purple_3 },
    CmpDocumentation = { fg = c.foreground, bg = c.black_1 },
    CmpDocumentationBorder = { fg = c.white_3, bg = c.black_1 },
    CmpGhostText = { fg = c.blackboard },
    CmpItemAbbr = { fg = c.white_1 },
    CmpItemAbbrDeprecated = { fg = c.red_1, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.blue_3, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.blue_3, bg = c.none },
    CmpItemMenu = { fg = c.gray_4, bg = c.none },
    CmpItemKindDefault = { fg = c.gray_1, bg = c.none },
    CmpItemKindCodeium = { fg = c.green_5, bg = c.none },
    CmpItemKindCopilot = { fg = c.green_5, bg = c.none },
    CmpItemKindTabNine = { fg = c.green_5, bg = c.none },

    -- navic
    NavicSeparator = { fg = c.foreground, bg = c.none },
    NavicText = { fg = c.foreground, bg = c.none },

    -- rainbow-delimiters.nvim
    RainbowDelimiterRed = { fg = c.red_3 },
    RainbowDelimiterYellow = { fg = c.yellow_3 },
    RainbowDelimiterBlue = { fg = c.blue_3 },
    RainbowDelimiterOrange = { fg = c.orange_3 },
    RainbowDelimiterGreen = { fg = c.green_3 },
    RainbowDelimiterCyan = { fg = c.purple_3 },
    RainbowDelimiterViolet = { fg = c.white_3 },

    -- ts-rainbow
    rainbowcol1 = { fg = c.red_3 },
    rainbowcol2 = { fg = c.orange_3 },
    rainbowcol3 = { fg = c.yellow_3 },
    rainbowcol4 = { fg = c.green_3 },
    rainbowcol5 = { fg = c.blue_3 },
    rainbowcol6 = { fg = c.purple_3 },
    rainbowcol7 = { fg = c.white_3 },

    -- ts-rainbow2 (maintained fork)
    TSRainbowRed = { fg = c.red_3 },
    TSRainbowOrange = { fg = c.orange_3 },
    TSRainbowYellow = { fg = c.yellow_3 },
    TSRainbowGreen = { fg = c.green_3 },
    TSRainbowBlue = { fg = c.blue_3 },
    TSRainbowViolet = { fg = c.purple_3 },
    TSRainbowCyan = { fg = c.white_3 },

    -- LspTrouble
    TroubleText = { fg = c.black_1 },
    TroubleCount = { fg = c.red_1, bg = c.red_b },
    TroubleNormal = { fg = c.foreground, bg = c.black_1 },

    -- Illuminate
    illuminatedWord = { bg = c.black_1 },
    illuminatedCurWord = { bg = c.black_1 },
    IlluminatedWordText = { bg = c.black_1 },
    IlluminatedWordRead = { bg = c.black_1 },
    IlluminatedWordWrite = { bg = c.black_1 },

    -- Diff
    diffAdded = { fg = c.green_3 },
    diffRemoved = { fg = c.red_3 },
    diffChanged = { fg = c.purple_3 },
    diffOldFile = { fg = c.orange_3 },
    diffNewFile = { fg = c.yellow_2 },
    diffFile = { fg = c.blue_3 },
    diffLine = { fg = c.gray_3 },
    diffIndexLine = { fg = c.blue_5 },

    -- Neogit
    NeogitBranch = { fg = c.blue_3 },
    NeogitRemote = { fg = c.purple_3 },
    NeogitHunkHeader = { fg = c.blue_3 },
    NeogitHunkHeaderHighlight = { fg = c.blue_1, bg = c.black_1 },
    NeogitDiffContextHighlight = { bg = c.black_2 },
    NeogitDiffDeleteHighlight = { fg = c.red_3, style = "reverse" },
    NeogitDiffAddHighlight = { fg = c.green_3, style = "reverse" },

    -- Neotest
    NeotestPassed = { fg = c.green_3 },
    NeotestRunning = { fg = c.yellow_3 },
    NeotestFailed = { fg = c.red_3 },
    NeotestSkipped = { fg = c.blue_3 },
    NeotestTest = { fg = c.black_1 },
    NeotestNamespace = { fg = c.green_1 },
    NeotestFocused = { fg = c.yellow_3 },
    NeotestFile = { fg = c.green_5 },
    NeotestDir = { fg = c.blue_3 },
    NeotestBorder = { fg = c.blue_3 },
    NeotestIndent = { fg = c.black_1 },
    NeotestExpandMarker = { fg = c.black_1 },
    NeotestAdapterName = { fg = c.purple_3, bold = true },
    NeotestWinSelect = { fg = c.blue_3 },
    NeotestMarked = { fg = c.blue_3 },
    NeotestTarget = { fg = c.blue_3 },

    -- GitGutter
    GitGutterAdd = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr = { fg = c.green_3 },
    GitGutterChangeLineNr = { fg = c.orange_3 },
    GitGutterDeleteLineNr = { fg = c.red_3 },

    -- GitSigns
    GitSignsAdd = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.white_3 },
    TelescopeNormal = { fg = c.foreground },
    TelescopePromptBorder = { fg = c.white_1 },
    TelescopeResultsBorder = { fg = c.white_1 },
    TelescopePreviewBorder = { fg = c.white_1 },
    TelescopeSelectionCaret = { fg = c.blue_3 },
    TelescopeSelection = { fg = c.white_3, bg = c.black_2 },
    TelescopeMatching = { link = 'Search' },

    -- copilot
    CopilotLabel = { fg = c.black_4, bg = c.none },

    -- Statusline
    StatusLineDull = { fg = c.black_4, bg = c.black_1 },
    StatusLineAccent = { fg = c.blackboard, bg = c.yellow_3 },

    -- mini.nvim
    MiniCompletionActiveParameter = { style = "underline" },
    MiniCursorword = { bg = c.black_4 },
    MiniCursorwordCurrent = { bg = c.black_4 },

    MiniDiffSignAdd = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
    MiniDiffSignChange = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
    MiniDiffSignDelete = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|

    MiniIndentscopeSymbol = { fg = c.purple_3 },
    MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

    MiniJump = { fg = c.bg, bg = c.orange_5 },
    MiniJump2dSpot = { fg = c.orange_3, style = "bold,nocombine" },

    MiniStarterCurrent = { style = "nocombine" },
    MiniStarterFooter = { fg = c.green_3, style = "italic" },
    MiniStarterHeader = { fg = c.blue_5 },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { fg = c.white_4 },
    MiniStarterItemPrefix = { fg = c.purple_3 },
    MiniStarterSection = { fg = c.white_4 },
    MiniStarterQuery = { fg = c.blue_3 },

    MiniStatuslineDevinfo = { fg = c.white_1, bg = c.black_3 },
    MiniStatuslineFileinfo = { fg = c.white_1, bg = c.black_3 },
    MiniStatuslineFilename = { fg = c.white_1, bg = c.black_1 },
    MiniStatuslineInactive = { fg = c.white_1, bg = c.blackboard, style = "bold" },
    MiniStatuslineModeCommand = { fg = c.blackboard, bg = c.orange_3, style = "bold" },
    MiniStatuslineModeNormal = { fg = c.black_1, bg = c.purple_3, style = "bold" },
    MiniStatuslineModeInsert = { fg = c.black_1, bg = c.blue_3, style = "bold" },
    MiniStatuslineModeOther = { fg = c.black_1, bg = c.yellow_3, style = "bold" },
    MiniStatuslineModeReplace = { fg = c.black_1, bg = c.red_3, style = "bold" },
    MiniStatuslineModeVisual = { fg = c.black_1, bg = c.green_3, style = "bold" },

    MiniSurround = { link = "IncSearch" },

    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineCurrent = { fg = c.white_3, bg = c.black_2 },
    MiniTablineVisible = { fg = c.white_1, bg = c.blackboard },
    MiniTablineHidden = { fg = c.gray_1, bg = c.blackboard },
    MiniTablineModifiedCurrent = { bg = c.black_2, fg = c.red_3 },
    MiniTablineModifiedHidden = { bg = c.blackboard, fg = c.red_1 },
    MiniTablineModifiedVisible = { bg = c.black_1, fg = c.red_3 },
    MiniTablineTabpagesection = { fg = c.blue_3, bg = c.white_3, style = "reverse,bold" },

    MiniTestEmphasis = { style = "bold" },
    MiniTestFail = { fg = c.red_3, style = "bold" },
    MiniTestPass = { fg = c.green_3, style = "bold" },

    MiniTrailspace = { bg = c.red_b },

    -- Indent Blankline
    IndentBlanklineChar = { fg = c.purple_1, style = "nocombine" },
    IndentBlanklineContextChar = { fg = c.purple_3, style = "nocombine" },
    IblIndent = { fg = c.fg_gutter, style = "nocombine" },
    IblScope = { fg = c.purple, style = "nocombine" },

    -- Scrollbar
    ScrollbarHandle = { fg = c.none, bg = c.black_4 },
    ScrollbarSearchHandle = { fg = c.orange_3, bg = c.black_4 },
    ScrollbarSearch = { fg = c.orange_3, bg = c.none },
    ScrollbarErrorHandle = { fg = c.red_3, bg = c.black_4 },
    ScrollbarError = { fg = c.red_3, bg = c.none },
    ScrollbarWarnHandle = { fg = c.orange_3, bg = c.black_4 },
    ScrollbarWarn = { fg = c.orange_3, bg = c.none },
    ScrollbarInfoHandle = { fg = c.blue_3, bg = c.black_4 },
    ScrollbarInfo = { fg = c.blue_3, bg = c.none },
    ScrollbarHintHandle = { fg = c.purple_3, bg = c.black_4 },
    ScrollbarHint = { fg = c.purple_3, bg = c.none },
    ScrollbarMiscHandle = { fg = c.yellow_3, bg = c.black_4 },
    ScrollbarMisc = { fg = c.yellow_3, bg = c.none },

    -- Yanky
    YankyPut = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },

    -- Lazy
    LazyProgressDone = { style = "bold", fg = c.green_3 },
    LazyProgressTodo = { style = "bold", fg = c.orange_3 },

    -- Notify
    NotifyBackground = { fg = c.white_3, bg = c.black_1 },
    --- Border
    NotifyERRORBorder = { fg = c.red_1, bg = c.black_1 },
    NotifyWARNBorder = { fg = c.orange_1, bg = c.black_1 },
    NotifyINFOBorder = { fg = c.blue_1, bg = c.black_1 },
    NotifyDEBUGBorder = { fg = c.yellow_1, bg = c.black_1 },
    NotifyTRACEBorder = { fg = c.purple_1, bg = c.black_1 },
    --- Icons
    NotifyERRORIcon = { fg = c.red_3, bg = c.black_1 },
    NotifyWARNIcon = { fg = c.orange_3, bg = c.black_1 },
    NotifyINFOIcon = { fg = c.blue_3, bg = c.black_1 },
    NotifyDEBUGIcon = { fg = c.yellow_3, bg = c.black_1 },
    NotifyTRACEIcon = { fg = c.purple_3, bg = c.black_1 },
    --- Title
    NotifyERRORTitle = { fg = c.red_3, bg = c.black_1 },
    NotifyWARNTitle = { fg = c.orange_3, bg = c.black_1 },
    NotifyINFOTitle = { fg = c.blue_3, bg = c.black_1 },
    NotifyDEBUGTitle = { fg = c.yellow_3, bg = c.black_1 },
    NotifyTRACETitle = { fg = c.purple_3, bg = c.black_1 },
    --- Body
    NotifyERRORBody = { fg = c.foreground, bg = c.red_b },
    NotifyWARNBody = { fg = c.foreground, bg = c.orange_b },
    NotifyINFOBody = { fg = c.foreground, bg = c.blue_b },
    NotifyDEBUGBody = { fg = c.foreground, bg = c.yellow_b },
    NotifyTRACEBody = { fg = c.foreground, bg = c.purple_b },

    -- Aerial
    AerialLine = { bg = c.black_2 },
    AerialLineNC = { bg = c.black_2 },
    AerialArrayIcon = { fg = c.yellow_3 },
    AerialBooleanIcon = { fg = c.blue_5, style = "bold" },
    AerialClassIcon = { fg = c.blue_5 },
    AerialConstantIcon = { fg = c.yellow_3 },
    AerialConstructorIcon = { fg = c.blue_5 },
    AerialEnumIcon = { fg = c.blue_5 },
    AerialEnumMemberIcon = { fg = c.white_1 },
    AerialEventIcon = { fg = c.blu_5 },
    AerialFieldIcon = { fg = c.white_1, style = "italic" },
    AerialFileIcon = { fg = c.green_3 },
    AerialFunctionIcon = { fg = c.blue_1, style = "italic" },
    AerialInterfaceIcon = { fg = c.blue_5 },
    AerialKeyIcon = { fg = c.blue_5 },
    AerialMethodIcon = { fg = c.green_5, style = "italic" },
    AerialModuleIcon = { fg = c.white_1, style = "italic" },
    AerialNamespaceIcon = { fg = c.white_1, style = "italic" },
    AerialNullIcon = { fg = c.blue_5 },
    AerialNumberIcon = { fg = c.purple_3 },
    AerialObjectIcon = { fg = c.blue_5 },
    AerialOperatorIcon = { fg = c.blue_5 },
    AerialPackageIcon = { fg = c.white_1, style = "italic" },
    AerialPropertyIcon = { fg = c.white_1, style = "italic" },
    AerialStringIcon = { fg = c.green_3, style = "italic" },
    AerialStructIcon = { fg = c.blue_5 },
    AerialTypeParameterIcon = { fg = c.blue_3 },
    AerialVariableIcon = { fg = c.white_1, style = "bold" },
    AerialArray = { fg = c.yellow_3 },
    AerialBoolean = { fg = c.blue_5, style = "bold" },
    AerialClass = { fg = c.blue_5 },
    AerialConstant = { fg = c.yellow_3 },
    AerialConstructor = { fg = c.blue_5 },
    AerialEnum = { fg = c.blue_5 },
    AerialEnumMember = { fg = c.white_1 },
    AerialEvent = { fg = c.blue_5 },
    AerialField = { fg = c.white_1, style = "italic" },
    AerialFile = { fg = c.green_3 },
    AerialFunction = { fg = c.blue_5, style = "italic" },
    AerialInterface = { fg = c.blue_5 },
    AerialKey = { fg = c.blue_5 },
    AerialMethod = { fg = c.green_5, style = "italic" },
    AerialModule = { fg = c.white_1, style = "italic" },
    AerialNamespace = { fg = c.white_1, style = "italic" },
    AerialNull = { fg = c.blue_5 },
    AerialNumber = { fg = c.purple_3 },
    AerialObject = { fg = c.blue_5 },
    AerialOperator = { fg = c.blue_5 },
    AerialPackage = { fg = c.white_1, style = "italic" },
    AerialProperty = { fg = c.white_1, style = "italic" },
    AerialString = { fg = c.green_3, style = "italic" },
    AerialStruct = { fg = c.blue_5 },
    AerialTypeParameter = { fg = c.blue_3 },
    AerialVariable = { fg = c.white_1, style = "bold" },

    -- Noice
    NoiceCompletionItemKindDefault = { fg = c.gray_3, bg = c.none },
    TreesitterContext = { bg = c.green_b },
    Hlargs = { fg = c.yellow_3 },
}

theme.loadTerminal = function()
    vim.g.terminal_color_0 = c.black_2
    vim.g.terminal_color_1 = c.red_3
    vim.g.terminal_color_2 = c.green_3
    vim.g.terminal_color_3 = c.yellow_3
    vim.g.terminal_color_4 = c.blue_3
    vim.g.terminal_color_5 = c.purple_3
    vim.g.terminal_color_6 = c.orange_3
    vim.g.terminal_color_7 = c.grey_4
    vim.g.terminal_color_8 = c.grey_1
    vim.g.terminal_color_9 = c.red_5
    vim.g.terminal_color_10 = c.green_5
    vim.g.terminal_color_11 = c.yellow_5
    vim.g.terminal_color_12 = c.blue_5
    vim.g.terminal_color_13 = c.purple_5
    vim.g.terminal_color_14 = c.orange_5
    vim.g.terminal_color_15 = c.white_3
end

-- lsp symbol kind and completion kind highlights
local kinds = {
    Array = "@punctuation.bracket",
    Boolean = "@boolean",
    Class = "@type",
    Color = "Special",
    Constant = "@constant",
    Constructor = "@constructor",
    Enum = "@lsp.type.enum",
    EnumMember = "@lsp.type.enumMember",
    Event = "Special",
    Field = "@variable.member",
    File = "Normal",
    Folder = "Directory",
    Function = "@function",
    Interface = "@lsp.type.interface",
    Key = "@variable.member",
    Keyword = "@lsp.type.keyword",
    Method = "@function.method",
    Module = "@module",
    Namespace = "@module",
    Null = "@constant.builtin",
    Number = "@number",
    Object = "@constant",
    Operator = "@operator",
    Package = "@module",
    Property = "@property",
    Reference = "@markup.link",
    Snippet = "Conceal",
    String = "@string",
    Struct = "@lsp.type.struct",
    Unit = "@lsp.type.struct",
    Text = "@markup",
    TypeParameter = "@lsp.type.typeParameter",
    Variable = "@variable",
    Value = "@string",
}

local kind_groups = { "NavicIcons%s", "Aerial%sIcon", "CmpItemKind%s", "NoiceCompletionItemKind%s" }
for kind, link in pairs(kinds) do
    local base = "LspKind" .. kind
    theme.highlights[base] = { link = link }
    for _, plugin in pairs(kind_groups) do
        theme.highlights[plugin:format(kind)] = { link = base }
    end
end

if not vim.diagnostic then
    local severity_map = {
        Error = "Error",
        Warn = "Warning",
        Info = "Information",
        Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
        for snew, sold in pairs(severity_map) do
            theme.highlights["LspDiagnostics" .. type .. sold] = {
                link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
            }
        end
    end
end

return theme
