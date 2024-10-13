local c = require("toytiza.colors")
local theme = {}

-- NOTE: Additional options can be used
--       https://github.com/shaunsingh/nord.nvim/blob/master/lua/nord/theme.lua

theme.highlights = {
    Comment = { fg = c.background_3, style = "italic" }, -- any comment
    Conceal = { fg = c.black_dark }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    EndOfBuffer = { fg = c.black_dark },
    SpecialKey = { fg = c.black_dark }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    NonText = { fg = c.black_dark }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

    -- NOTE: Comments become difficult to read, maybe darker colors would be ok or brighter dark
    ColorColumn = { bg = c.background_1 }, -- used for the columns set with 'colorcolumn'
    CursorColumn = { bg = c.background_1 },
    CursorLine = { bg = c.background_1 },
    Cursor = { fg = c.foreground, bg = c.none, style = "reverse" }, -- the character under the cursor
    lCursor = { fg = c.foreground, bg = c.none, style = "reverse" }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.foreground, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    CursorLineNr = { fg = c.foreground }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNr = { fg = c.background_3 },
    VertSplit = { fg = c.black_dark, style = "bold" }, -- the column separating vertically split windows
    WinSeparator = { fg = c.black_dark, style = "bold" }, -- the column separating vertically split windows

    Directory = { fg = c.blue_normal }, -- directory names (and other special names in listings)
    DiffAdd = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|
    DiffText = { fg = c.purple_normal }, -- diff mode: Changed text within a changed line |diff.txt|
    ErrorMsg = { fg = c.red_normal },

    Folded = { fg = c.orange_normal, bg = c.orange_dark, style = "italic" },
    FoldColumn = { fg = c.background_3, bg = c.none },
    SignColumn = { fg = c.orange_dark, bg = c.none },
    SignColumnSB = { fg = c.orange_dark, bg = c.none }, -- column where |signs| are displayed

    Substitute = { fg = c.black_normal, bg = c.red_normal },
    MatchParen = { fg = c.green_bright, style = "bold,underline" },
    QuickFixLine = { bg = c.background_2, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.purple_bright, bg = c.purple_dark }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = c.yellow_bright, bg = c.yellow_dark }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },

    ModeMsg = { fg = c.white_bright, style = "bold" },
    MsgArea = { fg = c.white_bright }, -- Area for messages and cmdline
    MoreMsg = { fg = c.blue_normal }, -- |more-prompt|

    Normal = { fg = c.foreground, bg = c.background }, -- normal text
    NormalNC = { fg = c.foreground, bg = c.background }, -- normal text in non-current windows
    NormalSB = { fg = c.white_bright, bg = c.background }, -- normal text in sidebar
    NormalFloat = { fg = c.foreground, bg = c.background_1 }, -- Normal text in floating windows.
    FloatBorder = { fg = c.foreground, bg = c.background_1 },
    FloatTitle = { fg = c.foreground, bg = c.background_1 },
    Pmenu = { fg = c.white_bright, bg = c.background_1 }, -- Popup menu: normal item.
    PmenuSel = { fg = c.black_dark, bg = c.background_4 }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.white_dark, bg = c.background_1 }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.foreground, bg = c.background_2 }, -- Popup menu: Thumb of the scrollbar.
    WildMenu = { link = "PmenuSel" }, -- current match in 'wildmenu' completion

    Question = { fg = c.yellow_normal }, -- |hit-enter| prompt and yes/no questions

    SpellBad = { sp = c.red_normal, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.orange_normal, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.orange_normal, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.orange_normal, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    StatusLine = { fg = c.white_bright, bg = c.background_1 }, -- status line of current window
    StatusLineNC = { fg = c.white_normal, bg = c.background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineTerm = { link = "StatusLine" },
    StatusLineTermNC = { link = "StatusLineNC" },

    WinBar = { link = "StatusLine" }, -- window bar
    WinBarNC = { link = "StatusLineNC" }, -- window bar in inactive windows

    Tabline = { fg = c.white_dark, bg = c.background }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.background }, -- tab pages line, where there are no labels
    TablineSel = { fg = c.foreground, bg = c.background }, -- tab pages line, active tab page label

    Title = { fg = c.green_normal, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.background_2 }, -- Visual mode selection
    VisualNOS = { bg = c.background_2 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.orange_normal },
    Whitespace = { fg = c.black_normal }, -- "nbsp", "space", "tab" and "trail" in 'listchars'

    NormalMode = { fg = c.purple_normal, bg = c.none, style = "reverse" },
    InsertMode = { fg = c.blue_normal, bg = c.none, style = "reverse" },
    ReplacelMode = { fg = c.red_normal, bg = c.none, style = "reverse" },
    VisualMode = { fg = c.green_normal, bg = c.none, style = "reverse" },
    CommandMode = { fg = c.yellow_normal, bg = c.none, style = "reverse" },
    Warnings = { fg = c.orange_normal },

    -- qfLineNr = { fg = c.whi_4, bg = c.none, style = "reverse" },
    -- qfLineNr = { fg = c.gray_2 },
    -- qfFileName = { fg = c.blue_3 },

    -- NOTE: I do not know what these ones are for
    ToolbarLine = { fg = c.white_normal, bg = c.black_normal },
    ToolbarButton = { fg = c.white_normal, bg = c.none, style = "bold" },

    Underlined = { style = "underline" }, -- text that stands out, HTML links
    Bold = { style = "bold" }, -- (preferred) any bold text
    Italic = { style = "italic" }, -- (preferred) any italic text
    Todo = { style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    Ignore = { fg = c.black_dark }, -- left blank, hidden

    Constant = { fg = c.foreground }, -- any constant
    Identifier = { fg = c.foreground, style = "italic" }, -- any variable name. For lua, this is the color for [ ].identifier

    Operator = { fg = c.white_normal }, -- sizeof", "+", "*", etc.
    Delimiter = { fg = c.white_normal }, -- character that needs attention like , or .

    -- NOTE: Maybe bold is not necessary
    Type = { fg = c.purple_normal, style = "bold" }, -- int, long, char, etc.
    -- StorageClass = { fg = c.purple_5 }, -- static, register, volatile, etc.
    -- Structure = { fg = c.orange_3 }, -- struct, union, enum, etc.
    -- Typedef = { fg = c.purple_3 }, -- A typedef

    Boolean = { fg = c.red_normal, style = "italic" }, -- a boolean constant: TRUE, false
    Special = { fg = c.red_normal, style = "italic" }, -- any special symbol
    SpecialChar = { fg = c.red_normal, style = "italic" }, -- special character in a constant
    Error = { fg = c.none, bg = c.red_normal, style = "bold,underline" }, -- any erroneous construct with bold

    Exception = { fg = c.orange_normal }, -- try, catch, throw
    Debug = { fg = c.orange_normal }, -- debugging statements
    Tag = { fg = c.orange_normal }, -- you can use CTRL-] on this

    String = { fg = c.yellow_normal, style = "italic" }, -- any string
    Character = { fg = c.yellow_normal, style = "italic" }, -- any character constant: 'c', '\n'
    Number = { fg = c.yellow_normal }, -- a number constant: 5
    Float = { fg = c.yellow_normal }, -- a floating point constant: 2.3e10

    Statement = { fg = c.green_normal, style = "italic" }, -- any statement
    Label = { fg = c.green_normal, style = "italic" }, -- case, default, etc.
    Keyword = { fg = c.green_bright, style = "bold" }, -- italic for, do, while, etc.
    Repeat = { fg = c.green_bright, style = "bold" }, -- italic any other keyword
    Conditional = { fg = c.green_bright, style = "bold" }, -- italic if, then, else, endif, switch, etc.
    Function = { fg = c.green_normal }, -- italic function names. For lua, this is [ ].[identifier].function()

    Macro = { fg = c.blue_normal, style = "italic" }, -- same as Define
    PreProc = { fg = c.blue_normal}, -- generic Preprocessor
    -- Include = { fg = c.purple_3 }, -- preprocessor #include
    -- Define = { fg = c.purple_3 }, -- preprocessor #define
    -- PreCondit = { fg = c.purple_3 }, -- preprocessor #if, #else, #endif, etc.

    -- SpecialComment = { fg = c.gray_1 }, -- special things inside a comment

    htmlH1 = { fg = c.red_normal, style = "bold" },
    htmlH2 = { fg = c.orange_normal, style = "bold" },
    htmlH3 = { fg = c.yellow_normal, style = "bold" },
    htmlH4 = { fg = c.green_normal, style = "bold" },
    htmlH5 = { fg = c.blue_normal, style = "bold" },
    htmlH6 = { fg = c.purple_normal, style = "bold" },
    htmlLink = { fg = c.blue_normal, style = "underline" },

    markdownH1Delimiter = { fg = c.red_normal },
    markdownH2Delimiter = { fg = c.orange_normal },
    markdownH3Delimiter = { fg = c.yellow_normal },
    markdownH4Delimiter = { fg = c.green_normal },
    markdownH5Delimiter = { fg = c.blue_normal },
    markdownH6Delimiter = { fg = c.purple_normal },
    markdownH1 = { fg = c.red_normal, style = "bold" },
    markdownH2 = { fg = c.orange_normal, style = "bold" },
    markdownH3 = { fg = c.yellow_normal, style = "bold" },
    markdownH4 = { fg = c.green_normal, style = "bold" },
    markdownH5 = { fg = c.blue_normal, style = "bold" },
    markdownH6 = { fg = c.purple_normal, style = "bold" },

    mkdCodeDelimiter = { fg = c.none, bg = c.background },
    mkdCodeStart = { fg = c.blue_normal, style = "bold" },
    mkdCodeEnd = { fg = c.blue_normal, style = "bold" },

    markdownHeadingDelimiter = { fg = c.blue_normal, style = "bold" },
    markdownCode = { bg = c.background },
    markdownCodeBlock = { bg = c.background },
    markdownLinkText = { fg = c.blue_normal, style = "underline" },

    debugPC = { bg = c.background }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = c.orange_normal, bg = c.orange_dark }, -- used for breakpoint colors in terminal-debug
    -- dosIniLabel = { link = "@property" },

    ["helpCommand"] = { fg = c.blue_normal, bg = c.background },

    -- These groups are for the Neovim tree-sitter highlights.
    ["@annotation"] = { link = "PreProc" },
    -- ["@attribute"] = { link = "PreProc" },
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
    ["@keyword.conditional.ternary"] = { fg = c.orange_normal },
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
    ["@markup.raw.markdown_inline"] = { fg = c.purple_normal },
    ["@markup.raw.block"] = {  },
    ["@markup.raw.delimiter"] = { fg = c.white_dark },
    ["@markup.math"] = { link = "Special" },
    ["@markup.strong"] = { style = "bold" },
    ["@markup.italic"] = { style = "italic" },
    ["@markup.emphasis"] = { style = "italic" },
    ["@markup.strikethrough"] = { style = "strikethrough" },
    ["@markup.underline"] = { style = "underline" },
    ["@markup.heading"] = { link = "Title" },
    ["@markup.link.label"] = { fg = c.blue_bright, style = "bold" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup.link.url"] = { fg = c.blue_normal, style = "underline" },
    ["@markup.link.markdown_inline"] = { fg = c.blue_normal },

    ["@markup.heading.1"] = { link = "markdownH1" },
    ["@markup.heading.2"] = { link = "markdownH2" },
    ["@markup.heading.3"] = { link = "markdownH3" },
    ["@markup.heading.4"] = { link = "markdownH4" },
    ["@markup.heading.5"] = { link = "markdownH5" },
    ["@markup.heading.6"] = { link = "markdownH6" },

    ["@operator"] = { link = "Operator" }, -- For any operator: `+`, but also `->` and `*` in C.
    -- ["@comment.documentation"] = { fg = c.purple_normal },
    ["@comment.note"] = { fg = c.green_normal },
    ["@comment.error"] = { fg = c.red_normal },
    ["@comment.hint"] = { fg = c.blue_normal },
    ["@comment.info"] = { fg = c.purple_normal },
    ["@comment.warning"] = { fg = c.orange_normal },
    ["@comment.todo"] = { fg = c.green_bright },

    -- Variables
    ["@variable"] = { fg = c.foreground },
    ["@variable.global"] = { fg = c.foreground, style = "italic" },
    ["@variable.builtin"] = { fg = c.foreground, style = "italic" },
    ["@variable.member"] = { fg = c.foreground, style = "italic" }, -- For fields. NOTE: play around with this.
    ["@property"] = { fg = c.foreground },

    -- For css
    ["@property.css"] = { fg = c.foreground },

    -- For queries
    ["@variable.query"] = { fg = c.orange_normal }, -- For fields. NOTE: play around with this.
    ["@type.query"] = { fg = c.orange_normal }, -- For fields. NOTE: play around with this.

    -- Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.green_normal, style = "bold" },
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

    --- Punctuation
    ["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters ie: `.`
    ["@punctuation.bracket"] = { fg = c.foreground }, -- For brackets and parens.
    ["@punctuation.special"] = { fg = c.foreground }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@markup.list"] = { fg = c.purple_normal }, -- For special punctutation that does not fall in the catagories before.
    ["@markup.list.markdown"] = { fg = c.purple_normal, bold = true },
    ["@markup.list.unchecked"] = { fg = c.orange_normal }, -- For brackets and parens.
    ["@markup.list.checked"] = { fg = c.green_normal }, -- For brackets and parens.

    --- Literals
    ["@string.documentation"] = { fg = c.orange_normal },
    ["@string.regex"] = { fg = c.orange_normal, style = "italic" },
    ["@string.regexp"] = { fg = c.orange_normal, style = "italic" }, -- For regexes.
    ["@string.escape"] = { fg = c.purple_normal, style = "italic" }, -- For escape characters within a string.
    ["@string.special.symbol"] = { link = "SpecialChar" }, -- For escape characters within a string.

    --- Used on functions
    ["@constructor"] = { fg = c.foreground }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@variable.parameter"] = { fg = c.foreground }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = c.foreground, style = "italic" }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- Text
    ["@text"] = { fg = c.foreground }, -- For strings considered text in a markup language.
    ["@text.emphasis"] = { fg = c.foreground, style = "italic" },
    ["@text.underline"] = { fg = c.foreground, bg = c.none, style = "underline" },
    ["@text.reference"] = { fg = c.white_normal },
    ["@text.literal"] = { fg = c.white_dark },

    -- Function names
    ["@method"] = { fg = c.blue_bright, style = "bold" },
    ["@funtion.macro"] = { link = "Macro" },

    -- Language keywords
    ["@keyword"] = { link = "Keyword" },
    -- ["@keyword.function"] = { fg = c.green_3, style = "italic" },
    ["@repeat"] = { link = "Repeat" },

    ["@text.uri"] = { fg = c.blue_normal, style = "underline" },
    ["@text.strike"] = { fg = c.foreground, style = "strikethrough" },
    ["@text.math"] = { fg = c.purple_normal },
    ["@float"] = { link = "Float" },
    ["@exception"] = { link = "Exception" },
    ["@label"] = { link = "Label" },
    ["@error"] = { fg = c.red_normal, style = 'underline' },
    ["@include"] = { fg = c.blue_normal },
    ["@parameter"] = { fg = c.foreground },
    ["@symbol"] = { fg = c.orange_normal },
    ["@text.title"] = { fg = c.white_normal, bg = c.none, style = "bold" },
    ["@text.strong"] = { fg = c.foreground, bg = c.none, style = "bold" },

    -- Conditionals
    ["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.

    -- Namespaces and property accessors
    ["@namespace"] = { fg = c.blue_normal }, -- For identifiers referring to modules and namespaces.
    ["@field"] = { fg = c.purple_normal, style = "bold" },

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },
    ["@module"] = { link = "Include" },

    -- tsx
    ["@tag.tsx"] = { fg = c.red_normal },
    ["@constructor.tsx"] = { fg = c.blue_normal },
    ["@tag.delimiter.tsx"] = { fg = c.white_normal },

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
    ["@lsp.type.interface"] = { fg = c.green_normal },
    -- ["@lsp.type.keyword"] = { fg = c.green_1, bg = c.green_b, style = "italic" },
    ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },

    -- ["@lsp.type.property"] = { fg = c.purple_5 },
    ["@lsp.type.property"] = { link = "@variable.member" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { stye = "undercurl", sp = c.orange_normal },
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
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue_normal },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = c.blue_normal },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    ["@lsp.typemod.variable.static"] = { link = "@constant" },
    -- -- NOTE: maybe add these with distinct highlights?
    -- -- ["@lsp.typemod.variable.globalScope"] (global variables)

    -- yaml stuff
    yamlBlockMappingKey = { fg = c.green_normal },
    yamlBool = { link = "Boolean" },
    yamlDocumentStart = { link = "Keyword" },
    yamlTSField = { fg = c.blue_normal },
    yamlTSString = { fg = c.foreground },
    yamlTSPunctSpecial = { link = "Keyword" },
    yamlKey = { fg = c.green_normal }, -- stephpy/vim-yaml
    ["@property.yaml"] = { fg = c.foreground },
    -- ["@string.yaml"] = { fg = c.yellow_3 },

    -- bash
    ["@keyword.directive.bash"] = { fg = c.blue_normal }, -- By default is linked to PreProc

    -- Python
    ["@variable.parameter.python"] = { link = "@variable.parameter" },
    ["@lsp.type.namespace.python"] = { link = "@variable" },
    ["@attribute.python"] = { fg = c.purple_normal },
    
    -- TOML
    ["@type.toml"] = { fg = c.purple_normal },

    -- LSP stuff
    LspReferenceText = { bg = c.yellow_dark }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.yellow_dark }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.yellow_dark }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = c.blue_dark, style = "bold" },
    LspCodeLens = { fg = c.white_dark },
    LspInlayHint = { bg = c.purple_dark, fg = c.purple_normal },
    LspInfoBorder = { fg = c.foreground, bg = c.background_1 },
    ALEErrorSign = { fg = c.red_normal },
    ALEWarningSign = { fg = c.orange_normal },
    DapStoppedLine = { bg = c.orange_dark }, -- Used for "Warning" diagnostic virtual text

    -- Diagnostics
    DiagnosticError = { fg = c.red_normal }, -- used for "Error" diagnostic virtual text
    DiagnosticWarn = { fg = c.orange_normal }, -- used for "Warning" diagnostic signs in sign column
    DiagnosticInfo = { fg = c.purple_normal }, -- used for "Information" diagnostic virtual text
    DiagnosticHint = { fg = c.blue_normal }, -- used for "Hint" diagnostic virtual text
    DiagnosticUnnecessary = { fg = c.white_dark, bg = c.none }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError = { bg = c.red_dark, fg = c.red_normal }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = c.orange_dark, fg = c.orange_normal }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = c.purple_dark, fg = c.purple_normal }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = c.blue_dark, fg = c.blue_normal }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError = { sp = c.red_normal, style = "undercurl" }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { sp = c.orange_normal, style = "undercurl" }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { sp = c.purple_normal, style = "undercurl" }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { sp = c.blue_normal, style = "undercurl" }, -- Used to underline "Hint" diagnostics

    -- Plugins stuff

    -- LspTrouble
    LspTroubleText = { fg = c.white_dark },
    LspTroubleCount = { fg = c.blue_normal, bg = c.blue_dark },
    LspTroubleNormal = { fg = c.white_normal, bg = c.black_dark },
    GitSignsChangeNr = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    GitSignsDeleteNr = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|
    GitSignsCurrentLineBlame = { fg = c.white_normal, style = "bold" },

    -- LspSaga
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.background },
    LspFloatWinBorder = { fg = c.foreground },
    LspSagaBorderTitle = { fg = c.green_bright },
    LspSagaHoverBorder = { fg = c.blue_normal },
    LspSagaRenameBorder = { fg = c.green_normal },
    LspSagaDefPreviewBorder = { fg = c.green_normal },
    LspSagaCodeActionBorder = { fg = c.blue_normal },
    LspSagaFinderSelection = { fg = c.gray_normal },
    LspSagaCodeActionTitle = { fg = c.blue_normal },
    LspSagaCodeActionContent = { fg = c.purple_normal },
    LspSagaSignatureHelpBorder = { fg = c.red_normal },
    ReferencesCount = { fg = c.purple_normal },
    DefinitionCount = { fg = c.purple_normal },
    DefinitionIcon = { fg = c.blue_normal },
    ReferencesIcon = { fg = c.blue_normal },
    TargetWord = { fg = c.green_bright },

    LspDiagnosticsError = { fg = c.red_normal },
    LspDiagnosticsWarning = { fg = c.orange_normal },
    LspDiagnosticsInformation = { fg = c.purple_normal },
    LspDiagnosticsHint = { fg = c.blue_normal },

    -- headline
    Headline1 = { fg = c.red_normal, bg = c.red_dark, style = "bold" },
    Headline2 = { fg = c.orange_normal, bg = c.orange_dark, style = "bold" },
    Headline3 = { fg = c.yellow_normal, bg = c.yellow_dark, style = "bold" },
    Headline4 = { fg = c.green_normal, bg = c.green_dark, style = "bold" },
    Headline5 = { fg = c.blue_normal, bg = c.blue_dark, style = "bold" },
    Headline6 = { fg = c.purple_normal, bg = c.purple_dark, style = "bold" },
    Quote = { fg = c.black_dark },
    CodeBlock = { bg = c.background },
    -- CodeBlock = { fg = c.gray_3 },
    Dash = { c.blue_normal, style = "bold" },

    -- nvim-dap
    DapBreakpoint = { fg = c.green_normal },
    DapStopped = { fg = c.purple_normal },
    -- nvim-dap-ui
    DapUIVariable = { fg = c.white_bright },
    DapUIScope = { fg = c.blue_normal },
    DapUIType = { fg = c.blue_normal },
    DapUIValue = { fg = c.white_bright },
    DapUIModifiedValue = { fg = c.blue_normal },
    DapUIDecoration = { fg = c.blue_normal },
    DapUIThread = { fg = c.blue_normal },
    DapUIStoppedThread = { fg = c.blue_normal },
    DapUIFrameName = { fg = c.white_bright },
    DapUISource = { fg = c.blue_bright },
    DapUILineNumber = { fg = c.blue_normal },
    DapUIFloatBorder = { fg = c.blue_normal },
    DapUIWatchesEmpty = { fg = c.red_normal },
    DapUIWatchesValue = { fg = c.blue_normal },
    DapUIWatchesError = { fg = c.red_normal },
    DapUIBreakpointsPath = { fg = c.blue_normal },
    DapUIBreakpointsInfo = { fg = c.blue_normal },
    DapUIBreakpointsCurrentLine = { fg = c.blue_normal },
    DapUIBreakpointsLine = { fg = c.blue_normal },

    -- Barbar
    BufferCurrentERROR = { bg = c.background, fg = c.red_normal },
    BufferCurrentHINT = { bg = c.background, fg = c.blue_normal },
    BufferCurrentINFO = { bg = c.background, fg = c.purple_normal },
    BufferCurrentWARN = { bg = c.background, fg = c.orange_normal },
    BufferCurrentIndex = { bg = c.background, fg = c.purple_normal },
    BufferCurrentMod = { bg = c.background, fg = c.orange_normal },
    BufferCurrentSign = { bg = c.background, fg = c.background_2 },
    BufferCurrentTarget = { bg = c.background, fg = c.red_normal },
    BufferAlternate = { bg = c.yellow_dark, fg = c.yellow_normal },
    BufferAlternateERROR = { bg = c.red_dark, fg = c.red_normal },
    BufferAlternateHINT = { bg = c.blue_dark, fg = c.blue_normal },
    BufferAlternateIndex = { bg = c.purple_dark, fg = c.purple_normal },
    BufferAlternateINFO = { bg = c.purple_dark, fg = c.purple_normal },
    BufferAlternateMod = { bg = c.orange_dark, fg = c.orange_normal },
    BufferAlternateSign = { bg = c.blue_dark, fg = c.blue_normal },
    BufferAlternateTarget = { bg = c.red_dark, fg = c.red_normal },
    BufferAlternateWARN = { bg = c.orange_dark, fg = c.orange_normal },
    BufferVisible = { bg = c.background_1, fg = c.foreground },
    BufferVisibleERROR = { bg = c.background_1, fg = c.red_normal },
    BufferVisibleHINT = { bg = c.background_1, fg = c.purple_normal },
    BufferVisibleINFO = { bg = c.background_1, fg = c.blue_normal },
    BufferVisibleWARN = { bg = c.background_1, fg = c.orange_normal },
    BufferVisibleIndex = { bg = c.background_1, fg = c.blue_normal },
    BufferVisibleMod = { bg = c.background_1, fg = c.orange_normal },
    BufferVisibleSign = { bg = c.background_1, fg = c.blue_normal },
    BufferVisibleTarget = { bg = c.background_1, fg = c.red_normal },
    BufferInactive = { bg = c.background_1, fg = c.white_normal },
    BufferInactiveERROR = { bg = c.background_1, fg = c.red_normal },
    BufferInactiveHINT = { bg = c.background_1, fg = c.purple_normal },
    BufferInactiveINFO = { bg = c.background_1, fg = c.blue_normal },
    BufferInactiveWARN = { bg = c.background_1, fg = c.orange_normal },
    BufferInactiveIndex = { bg = c.background_1, fg = c.white_normal },
    BufferInactiveMod = { bg = c.background_1, fg = c.orange_normal },
    BufferInactiveSign = { bg = c.background_1, fg = c.background },
    BufferInactiveTarget = { bg = c.background_1, fg = c.red_normal },
    BufferOffset = { bg = c.background, fg = c.background_4 },
    BufferTabpageFill = { bg = c.black_normal, fg = c.white_normal },
    BufferTabpages = { bg = c.background_1, fg = c.none },

    -- NeoVim
    healthError = { fg = c.red_normal },
    healthSuccess = { fg = c.green_normal },
    healthWarning = { fg = c.orange_normal },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.orange_normal },

    -- WhichKey
    WhichKey = { fg = c.blue_normal, style = "bold" },
    WhichKeyGroup = { fg = c.white_normal },
    WhichKeyDesc = { fg = c.green_bright, style = "italic" },
    WhichKeySeperator = { fg = c.blue_normal },
    WhichKeyFloating = { bg = c.background },
    WhichKeyFloat = { bg = c.background },
    WhichKeyValue = { fg = c.green_normal },

    -- Alpha
    AlphaShortcut = { fg = c.green_normal },
    AlphaHeader = { fg = c.blue_normal },
    AlphaHeaderLabel = { fg = c.green_normal },
    AlphaFooter = { fg = c.blue_normal },
    AlphaButtons = { fg = c.purple_normal },

    -- Dashboard
    DashboardShortCut = { fg = c.green_normal },
    DashboardHeader = { fg = c.blue_normal },
    DashboardCenter = { fg = c.red_normal },
    DashboardFooter = { fg = c.purple_normal },
    DashboardKey = { fg = c.orange_normal },
    DashboardDesc = { fg = c.green_normal },
    DashboardIcon = { fg = c.green_normal, style = "bold" },

    -- glyph palette
    GlyphPalette1 = { fg = c.red_normal },
    GlyphPalette2 = { fg = c.green_normal },
    GlyphPalette3 = { fg = c.yellow_normal },
    GlyphPalette4 = { fg = c.blue_normal },
    GlyphPalette6 = { fg = c.purple_normal },
    GlyphPalette7 = { fg = c.orange_normal },
    GlyphPalette9 = { fg = c.white_normal },

    -- Fern
    FernBranchText = { fg = c.green_normal },

    NeoTreeNormal = { fg = c.white_normal, bg = c.background },
    NeoTreeNormalNC = { fg = c.white_normal, bg = c.background },
    NeoTreeDimText = { fg = c.blue_normal },

    -- NvimTree
    NvimTreeNormal = { fg = c.white_normal, bg = c.background },
    NvimTreeWinSeparator = { fg = c.foreground, bg = c.background },
    NvimTreeNormalNC = { fg = c.white_normal, bg = c.background },
    NvimTreeRootFolder = { fg = c.blue_normal, style = "bold" },
    NvimTreeGitDirty = { fg = c.orange_normal },
    NvimTreeGitNew = { fg = c.green_normal },
    NvimTreeGitDeleted = { fg = c.red_normal },
    NvimTreeOpenedFile = { bg = c.background_1 },
    NvimTreeSpecialFile = { fg = c.purple_normal, style = "underline" },
    NvimTreeIndentMarker = { fg = c.blue_normal },
    NvimTreeImageFile = { fg = c.white_normal },
    NvimTreeSymlink = { fg = c.blue_normal },
    NvimTreeFolderIcon = { bg = c.none, fg = c.blue_normal },

    -- Sneak
    Sneak = { fg = c.black_normal, bg = c.red_bright },
    SneakScope = { bg = c.background_1 },

    -- Hop
    HopNextKey = { fg = c.red_normal, style = "bold" },
    HopNextKey1 = { fg = c.orange_normal, style = "bold" },
    HopNextKey2 = { fg = c.yellow_normal },
    HopUnmatched = { fg = c.green_normal },

    TSNodeKey = { fg = c.red_bright, style = "bold" },
    TSNodeUnmatched = { fg = c.white_dark },

    -- leap.nvim
    LeapMatch = { bg = c.red_normal, fg = c.foreground, style = "bold" },
    LeapLabelPrimary = { fg = c.red_normal, style = "bold" },
    LeapLabelSecondary = { fg = c.green_normal, style = "bold" },
    LeapBackdrop = { fg = c.white_dark },

    FlashBackdrop = { fg = c.background_3 },
    FlashLabel = { bg = c.red_bright, style = "bold", fg = c.foreground },

    LightspeedGreyWash = { fg = c.background_3 },
    LightspeedLabel = { fg = c.red_bright, style = "bold,underline" },
    LightspeedLabelDistant = { fg = c.green_bright, style = "bold,underline" },
    LightspeedLabelDistantOverlapped = { fg = c.green_normal, style = "underline" },
    LightspeedLabelOverlapped = { fg = c.red_normal, style = "underline" },
    LightspeedMaskedChar = { fg = c.orange_normal },
    LightspeedOneCharMatch = { bg = c.red_normal, fg = c.foreground, style = "bold" },
    LightspeedPendingOpArea = { bg = c.red_normal, fg = c.foreground },
    LightspeedShortcut = { bg = c.red_normal, fg = c.foreground, style = "bold,underline" },
    LightspeedUnlabeledMatch = { fg = c.blue_normal, style = "bold" },

    -- Cmp
    CmpItemKind = { fg = c.purple_normal },
    CmpDocumentation = { fg = c.foreground, bg = c.background_1 },
    CmpDocumentationBorder = { fg = c.white_normal, bg = c.background_1 },
    CmpGhostText = { fg = c.background },
    CmpItemAbbr = { fg = c.white_normal },
    CmpItemAbbrDeprecated = { fg = c.red_normal, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.blue_normal, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.blue_normal, bg = c.none },
    CmpItemMenu = { fg = c.white_dark, bg = c.none },
    CmpItemKindDefault = { fg = c.black_bright, bg = c.none },
    CmpItemKindCodeium = { fg = c.green_normal, bg = c.none },
    CmpItemKindCopilot = { fg = c.green_normal, bg = c.none },
    CmpItemKindTabNine = { fg = c.green_normal, bg = c.none },

    -- navic
    NavicSeparator = { fg = c.foreground, bg = c.none },
    NavicText = { fg = c.foreground, bg = c.none },

    -- rainbow-delimiters.nvim
    RainbowDelimiterRed = { fg = c.red_normal },
    RainbowDelimiterYellow = { fg = c.yellow_normal },
    RainbowDelimiterBlue = { fg = c.blue_normal },
    RainbowDelimiterOrange = { fg = c.orange_normal },
    RainbowDelimiterGreen = { fg = c.green_normal },
    RainbowDelimiterCyan = { fg = c.purple_normal },
    RainbowDelimiterViolet = { fg = c.white_normal },

    -- ts-rainbow
    rainbowcol1 = { fg = c.red_normal },
    rainbowcol2 = { fg = c.orange_normal },
    rainbowcol3 = { fg = c.yellow_normal },
    rainbowcol4 = { fg = c.green_normal },
    rainbowcol5 = { fg = c.blue_normal },
    rainbowcol6 = { fg = c.purple_normal },
    rainbowcol7 = { fg = c.white_normal },

    -- ts-rainbow2 (maintained fork)
    TSRainbowRed = { fg = c.red_normal },
    TSRainbowOrange = { fg = c.orange_normal },
    TSRainbowYellow = { fg = c.yellow_normal },
    TSRainbowGreen = { fg = c.green_normal },
    TSRainbowBlue = { fg = c.blue_normal },
    TSRainbowViolet = { fg = c.purple_normal },
    TSRainbowCyan = { fg = c.white_normal },

    -- LspTrouble
    TroubleText = { fg = c.background_1 },
    TroubleCount = { fg = c.red_normal, bg = c.red_dark },
    TroubleNormal = { fg = c.foreground, bg = c.background_1 },

    -- Illuminate
    illuminatedWord = { bg = c.background_1 },
    illuminatedCurWord = { bg = c.background_1 },
    IlluminatedWordText = { bg = c.background_1 },
    IlluminatedWordRead = { bg = c.background_1 },
    IlluminatedWordWrite = { bg = c.background_1 },

    -- Diff
    diffAdded = { fg = c.green_normal },
    diffRemoved = { fg = c.red_normal },
    diffChanged = { fg = c.purple_normal },
    diffOldFile = { fg = c.orange_normal },
    diffNewFile = { fg = c.yellow_normal },
    diffFile = { fg = c.blue_normal },
    diffLine = { fg = c.gray_normal },
    diffIndexLine = { fg = c.blue_normal },

    -- Neogit
    NeogitBranch = { fg = c.blue_normal },
    NeogitRemote = { fg = c.purple_normal },
    NeogitHunkHeader = { fg = c.blue_normal },
    NeogitHunkHeaderHighlight = { fg = c.blue_normal, bg = c.background_1 },
    NeogitDiffContextHighlight = { bg = c.background_2 },
    NeogitDiffDeleteHighlight = { fg = c.red_normal, style = "reverse" },
    NeogitDiffAddHighlight = { fg = c.green_normal, style = "reverse" },

    -- Neotest
    NeotestPassed = { fg = c.green_normal },
    NeotestRunning = { fg = c.yellow_normal },
    NeotestFailed = { fg = c.red_normal },
    NeotestSkipped = { fg = c.blue_normal },
    NeotestTest = { fg = c.background_1 },
    NeotestNamespace = { fg = c.green_normal },
    NeotestFocused = { fg = c.yellow_normal },
    NeotestFile = { fg = c.green_bright },
    NeotestDir = { fg = c.blue_normal },
    NeotestBorder = { fg = c.blue_normal },
    NeotestIndent = { fg = c.background_1 },
    NeotestExpandMarker = { fg = c.background_1 },
    NeotestAdapterName = { fg = c.purple_normal, bold = true },
    NeotestWinSelect = { fg = c.blue_normal },
    NeotestMarked = { fg = c.blue_normal },
    NeotestTarget = { fg = c.blue_normal },

    -- GitGutter
    GitGutterAdd = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr = { fg = c.green_normal },
    GitGutterChangeLineNr = { fg = c.orange_normal },
    GitGutterDeleteLineNr = { fg = c.red_normal },

    -- GitSigns
    GitSignsAdd = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.foreground },
    TelescopeNormal = { fg = c.foreground },
    TelescopePromptBorder = { fg = c.white_normal },
    TelescopeResultsBorder = { fg = c.foreground },
    TelescopePreviewBorder = { fg = c.white_normal },
    TelescopeSelectionCaret = { fg = c.blue_normal },
    TelescopeSelection = { fg = c.foreground, bg = c.background_2 },
    TelescopeMatching = { link = 'Search' },

    -- copilot
    CopilotLabel = { fg = c.black_dark, bg = c.none },

    -- Statusline
    StatusLineDull = { fg = c.background_4, bg = c.background_1 },
    StatusLineAccent = { fg = c.background, bg = c.yellow_normal },

    -- mini.nvim
    MiniCompletionActiveParameter = { style = "underline" },
    MiniCursorword = { bg = c.background_4 },
    MiniCursorwordCurrent = { bg = c.background_4 },

    MiniDiffSignAdd = { fg = c.green_normal }, -- diff mode: Added line |diff.txt|
    MiniDiffSignChange = { fg = c.orange_normal }, -- diff mode: Changed line |diff.txt|
    MiniDiffSignDelete = { fg = c.red_normal }, -- diff mode: Deleted line |diff.txt|

    MiniIndentscopeSymbol = { fg = c.background_3 },
    MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

    MiniJump = { fg = c.orange_normal, bg = c.orange_dark },
    MiniJump2dSpot = { fg = c.orange_normal, style = "bold,nocombine" },

    MiniStarterCurrent = { style = "nocombine" },
    MiniStarterFooter = { fg = c.green_normal, style = "italic" },
    MiniStarterHeader = { fg = c.blue_normal },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { fg = c.foreground },
    MiniStarterItemPrefix = { fg = c.purple_normal },
    MiniStarterSection = { fg = c.white_normal },
    MiniStarterQuery = { fg = c.blue_normal },

    MiniStatuslineDevinfo = { fg = c.white_bright, bg = c.background_1 },
    MiniStatuslineFileinfo = { fg = c.white_bright, bg = c.background_1 },
    MiniStatuslineFilename = { fg = c.white_bright, bg = c.background },
    MiniStatuslineInactive = { fg = c.white_bright, bg = c.background, style = "bold" },
    MiniStatuslineModeCommand = { fg = c.orange_normal, bg = c.background, style = "bold" },
    MiniStatuslineModeNormal = { fg = c.foreground, bg = c.background, style = "bold" },
    MiniStatuslineModeInsert = { fg = c.green_normal, bg = c.background, style = "bold" },
    MiniStatuslineModeOther = { fg = c.yellow_normal, bg = c.background, style = "bold" },
    MiniStatuslineModeReplace = { fg = c.red_normal, bg = c.background, style = "bold" },
    MiniStatuslineModeVisual = { fg = c.blue_normal, bg = c.background, style = "bold" },

    MiniSurround = { link = "IncSearch" },

    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineCurrent = { fg = c.white_bright, bg = c.background_1 },
    MiniTablineVisible = { fg = c.white_normal, bg = c.background },
    MiniTablineHidden = { fg = c.white_dark, bg = c.background },
    MiniTablineModifiedCurrent = { bg = c.background_1, fg = c.red_normal },
    MiniTablineModifiedHidden = { bg = c.background, fg = c.red_normal },
    MiniTablineModifiedVisible = { bg = c.background_1, fg = c.red_normal },
    MiniTablineTabpagesection = { fg = c.green_normal, bg = c.background_3, style = "reverse,bold" },

    MiniTestEmphasis = { style = "bold" },
    MiniTestFail = { fg = c.red_normal, style = "bold" },
    MiniTestPass = { fg = c.green_normal, style = "bold" },

    MiniTrailspace = { bg = c.red_normal },

    -- Indent Blankline
    IndentBlanklineChar = { fg = c.background_3, style = "nocombine" },
    IndentBlanklineContextChar = { fg = c.background_3, style = "nocombine" },
    IblIndent = { fg = c.background_2, style = "nocombine" },
    IblScope = { fg = c.purple_normal, style = "nocombine" },

    -- Scrollbar
    ScrollbarHandle = { fg = c.none, bg = c.background_2 },
    ScrollbarSearchHandle = { fg = c.green_normal, bg = c.background_4 },
    ScrollbarSearch = { fg = c.green_normal, bg = c.none },
    ScrollbarErrorHandle = { fg = c.red_normal, bg = c.background_4 },
    ScrollbarError = { fg = c.red_normal, bg = c.none },
    ScrollbarWarnHandle = { fg = c.orange_normal, bg = c.background_4 },
    ScrollbarWarn = { fg = c.orange_normal, bg = c.none },
    ScrollbarInfoHandle = { fg = c.blue_normal, bg = c.background_4 },
    ScrollbarInfo = { fg = c.blue_normal, bg = c.none },
    ScrollbarHintHandle = { fg = c.purple_normal, bg = c.background_4 },
    ScrollbarHint = { fg = c.purple_normal, bg = c.none },
    ScrollbarMiscHandle = { fg = c.yellow_normal, bg = c.background_4 },
    ScrollbarMisc = { fg = c.yellow_normal, bg = c.none },

    -- Yanky
    YankyPut = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },

    -- Lazy
    LazyProgressDone = { style = "bold", fg = c.green_normal },
    LazyProgressTodo = { style = "bold", fg = c.orange_normal },

    -- Notify
    NotifyBackground = { fg = c.white_bright, bg = c.background_1 },
    --- Border
    NotifyERRORBorder = { fg = c.red_normal, bg = c.background_1 },
    NotifyWARNBorder = { fg = c.orange_normal, bg = c.background_1 },
    NotifyINFOBorder = { fg = c.blue_normal, bg = c.background_1 },
    NotifyDEBUGBorder = { fg = c.yellow_normal, bg = c.background_1 },
    NotifyTRACEBorder = { fg = c.purple_normal, bg = c.background_1 },
    --- Icons
    NotifyERRORIcon = { fg = c.red_normal, bg = c.background_1 },
    NotifyWARNIcon = { fg = c.orange_normal, bg = c.background_1 },
    NotifyINFOIcon = { fg = c.blue_normal, bg = c.background_1 },
    NotifyDEBUGIcon = { fg = c.yellow_normal, bg = c.background_1 },
    NotifyTRACEIcon = { fg = c.purple_normal, bg = c.background_1 },
    --- Title
    NotifyERRORTitle = { fg = c.red_normal, bg = c.background_1 },
    NotifyWARNTitle = { fg = c.orange_normal, bg = c.background_1 },
    NotifyINFOTitle = { fg = c.blue_normal, bg = c.background_1 },
    NotifyDEBUGTitle = { fg = c.yellow_normal, bg = c.background_1 },
    NotifyTRACETitle = { fg = c.purple_normal, bg = c.background_1 },
    --- Body
    NotifyERRORBody = { fg = c.foreground, bg = c.red_dark },
    NotifyWARNBody = { fg = c.foreground, bg = c.orange_dark },
    NotifyINFOBody = { fg = c.foreground, bg = c.blue_dark },
    NotifyDEBUGBody = { fg = c.foreground, bg = c.yellow_dark },
    NotifyTRACEBody = { fg = c.foreground, bg = c.purple_dark },

    -- Aerial
    AerialLine = { bg = c.background_2 },
    AerialLineNC = { bg = c.background_2 },
    AerialArrayIcon = { fg = c.yellow_normal },
    AerialBooleanIcon = { fg = c.blue_bright, style = "bold" },
    AerialClassIcon = { fg = c.blue_bright },
    AerialConstantIcon = { fg = c.yellow_normal },
    AerialConstructorIcon = { fg = c.blue_bright },
    AerialEnumIcon = { fg = c.blue_bright },
    AerialEnumMemberIcon = { fg = c.white_dark },
    AerialEventIcon = { fg = c.blue_bright },
    AerialFieldIcon = { fg = c.white_dark, style = "italic" },
    AerialFileIcon = { fg = c.green_normal },
    AerialFunctionIcon = { fg = c.blue_normal, style = "italic" },
    AerialInterfaceIcon = { fg = c.blue_bright },
    AerialKeyIcon = { fg = c.blue_bright },
    AerialMethodIcon = { fg = c.green_bright, style = "italic" },
    AerialModuleIcon = { fg = c.white_dark, style = "italic" },
    AerialNamespaceIcon = { fg = c.white_dark, style = "italic" },
    AerialNullIcon = { fg = c.blue_bright },
    AerialNumberIcon = { fg = c.purple_normal },
    AerialObjectIcon = { fg = c.blue_bright },
    AerialOperatorIcon = { fg = c.blue_bright },
    AerialPackageIcon = { fg = c.white_dark, style = "italic" },
    AerialPropertyIcon = { fg = c.white_dark, style = "italic" },
    AerialStringIcon = { fg = c.green_normal, style = "italic" },
    AerialStructIcon = { fg = c.blue_bright },
    AerialTypeParameterIcon = { fg = c.blue_normal },
    AerialVariableIcon = { fg = c.white_dark, style = "bold" },
    AerialArray = { fg = c.yellow_normal },
    AerialBoolean = { fg = c.blue_bright, style = "bold" },
    AerialClass = { fg = c.blue_bright },
    AerialConstant = { fg = c.yellow_normal },
    AerialConstructor = { fg = c.blue_bright },
    AerialEnum = { fg = c.blue_bright },
    AerialEnumMember = { fg = c.white_dark },
    AerialEvent = { fg = c.blue_normal },
    AerialField = { fg = c.white_dark, style = "italic" },
    AerialFile = { fg = c.green_normal },
    AerialFunction = { fg = c.blue_bright, style = "italic" },
    AerialInterface = { fg = c.blue_bright },
    AerialKey = { fg = c.blue_bright },
    AerialMethod = { fg = c.green_bright, style = "italic" },
    AerialModule = { fg = c.white_dark, style = "italic" },
    AerialNamespace = { fg = c.white_dark, style = "italic" },
    AerialNull = { fg = c.blue_bright },
    AerialNumber = { fg = c.purple_normal },
    AerialObject = { fg = c.blue_bright },
    AerialOperator = { fg = c.blue_bright },
    AerialPackage = { fg = c.white_dark, style = "italic" },
    AerialProperty = { fg = c.white_dark, style = "italic" },
    AerialString = { fg = c.green_normal, style = "italic" },
    AerialStruct = { fg = c.blue_bright },
    AerialTypeParameter = { fg = c.blue_normal },
    AerialVariable = { fg = c.white_dark, style = "bold" },

    -- Noice
    NoiceCompletionItemKindDefault = { fg = c.white_dark, bg = c.none },
    TreesitterContext = { bg = c.green_dark },
    Hlargs = { fg = c.yellow_normal },
}

theme.loadTerminal = function()
    vim.g.terminal_color_0 = c.black_normal
    vim.g.terminal_color_1 = c.red_normal
    vim.g.terminal_color_2 = c.green_normal
    vim.g.terminal_color_3 = c.yellow_normal
    vim.g.terminal_color_4 = c.blue_normal
    vim.g.terminal_color_5 = c.purple_normal
    vim.g.terminal_color_6 = c.orange_normal
    vim.g.terminal_color_7 = c.white_normal
    vim.g.terminal_color_8 = c.black_bright
    vim.g.terminal_color_9 = c.red_bright
    vim.g.terminal_color_10 = c.green_bright
    vim.g.terminal_color_11 = c.yellow_bright
    vim.g.terminal_color_12 = c.blue_bright
    vim.g.terminal_color_13 = c.purple_bright
    vim.g.terminal_color_14 = c.orange_bright
    vim.g.terminal_color_15 = c.white_bright
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
