local chalkboard = require("chalkboard.colors")
local c = require("chalkboard.named_colors")

local theme = {}

theme.loadEditor = function()
    -- Editor highlight groups
    local editor = {
        NormalFloat = { fg = c.foreground, bg = c.blackboard }, -- normal text and background color
        FloatBorder = { fg = c.foreground, bg = c.balckboard }, -- normal text and background color
        ColorColumn = { fg = c.none, bg = c.black_2 }, -- used for the columns set with 'colorcolumn'
        Conceal = { fg = c.black_3 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = c.white_4, bg = c.none, style = "reverse" }, -- the character under the cursor
        CursorIM = { fg = c.white_3, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
        Directory = { fg = c.blue_3, bg = c.none }, -- directory names (and other special names in listings)
        EndOfBuffer = { fg = c.black_2 },
        ErrorMsg = { fg = c.red_3 },
        Folded = { fg = c.orange_5, bg = c.none, style = "italic" },
        FoldColumn = { fg = c.orange_3 },
        IncSearch = { fg = c.blackboard, bg = c.yellow_5 }, -- While I am typing
        Search = { fg = c.purple_5, bg = c.black_4 },
        MatchParen = { fg = c.none, bg = c.none, style = "bold,underline" },
        LineNr = { fg = c.black_4 },
        CursorLineNr = { fg = c.white_1 },
        ModeMsg = { fg = c.white_4 },
        MoreMsg = { fg = c.white_4 },
        NonText = { fg = c.bla_2 },
        Pmenu = { fg = c.white_2, bg = c.black_2 },
        PmenuSel = { fg = c.white_4, bg = c.black_4 },
        PmenuSbar = { fg = c.white_4, bg = c.gray_3 },
        PmenuThumb = { fg = c.white_4, bg = c.black_2 },
        Question = { fg = c.orange_3 },
        QuickFixLine = { fg = c.white_1, bg = c.none, style = "reverse" },
        qfLineNr = { fg = c.whi_4, bg = c.none, style = "reverse" },
        Substitute = { fg = c.blackboard, bg = c.red_3 },
        SpecialKey = { fg = c.blue_3 },
        SpellBad = { style = "underline" },
        SpellCap = { fg = c.purple_5, bg = c.none, style = "underline" },
        SpellLocal = { fg = c.red_5, bg = c.none, style = "underline" },
        SpellRare = { fg = c.orange_5, bg = c.none, style = "underline" },
        StatusLine = { fg = c.white_3, bg = c.black_3 },
        StatusLineNC = { fg = c.white_3, bg = c.gray_1 },
        StatusLineTerm = { fg = c.white_3, bg = c.gray_5 },
        StatusLineTermNC = { fg = c.white_3, bg = c.gray_1 },
        TabLineFill = { fg = c.white_1, bg = c.none },
        TablineSel = { fg = c.black_3, bg = c.white_1 },
        Tabline = { fg = c.white_3, bg = c.black_3 },
        Title = { fg = c.green_3, bg = c.none, style = "bold" },
        Visual = { fg = c.none, bg = c.black_2 },
        VisualNOS = { fg = c.none, bg = c.black_2 },
        WarningMsg = { fg = c.orange_4 },
        WildMenu = { fg = c.orange_5, bg = c.none, style = "bold" },
        CursorColumn = { fg = c.none, bg = c.black_1 },
        CursorLine = { fg = c.none, bg = c.black_1 },
        ToolbarLine = { fg = c.white_3, bg = c.black_2 },
        ToolbarButton = { fg = c.white_3, bg = c.none, style = "bold" },
        NormalMode = { fg = c.purple_3, bg = c.none, style = "reverse" },
        InsertMode = { fg = c.blue_3, bg = c.none, style = "reverse" },
        ReplacelMode = { fg = c.red_3, bg = c.none, style = "reverse" },
        VisualMode = { fg = c.green_3, bg = c.none, style = "reverse" },
        CommandMode = { fg = c.yellow_3, bg = c.none, style = "reverse" },
        Warnings = { fg = c.orange_3 },

        healthError = { fg = c.red_3 },
        healthSuccess = { fg = c.green_3 },
        healthWarning = { fg = c.orange_3 },

        -- dashboard
        DashboardShortCut = { fg = c.green_5 },
        DashboardHeader = { fg = c.blue_5 },
        DashboardCenter = { fg = c.blue_1 },
        DashboardFooter = { fg = c.green_3, style = "italic" },

        -- Barbar
        BufferTabpageFill = { bg = c.blackboard },

        BufferCurrent = { bg = c.gray_1, fg = c.white_3 },
        BufferCurrentMod = { bg = c.gray_1, fg = c.purple_3 },
        BufferCurrentIcon = { bg = c.gray_1, fg = c.white_3 },
        BufferCurrentSign = { bg = c.gray_1, fg = c.white_3 },
        BufferCurrentIndex = { bg = c.gray_1, fg = c.white_3 },
        BufferCurrentTarget = { bg = c.gray_1, fg = c.red_3 },

        BufferInactive = { bg = c.blackboard, fg = c.black_4 },
        BufferInactiveMod = { bg = c.blackboard, fg = c.purple_3 },
        BufferInactiveIcon = { bg = c.blackboard, fg = c.white_3 },
        BufferInactiveSign = { bg = c.blackboard, fg = c.white_3 },
        BufferInactiveIndex = { bg = c.blackboard, fg = c.white_3 },
        BufferInactiveTarget = { bg = c.blackboard, fg = c.red_3 },

        BufferVisible = { bg = c.black_2, fg = c.gray_3 },
        BufferVisibleMod = { bg = c.black_2, fg = c.purple_3 },
        BufferVisibleIcon = { bg = c.black_2, fg = c.gray_3 },
        BufferVisibleSign = { bg = c.black_2, fg = c.gray_3 },
        BufferVisibleIndex = { bg = c.black_2, fg = c.gray_3 },
        BufferVisibleTarget = { bg = c.black_2, fg = c.red_3 },

        -- nvim-notify
        NotifyDEBUGBorder = { fg = c.white_4 },
        NotifyDEBUGIcon = { fg = c.white_4 },
        NotifyDEBUGTitle = { fg = c.white_4 },
        NotifyERRORBorder = { fg = c.red_3 },
        NotifyERRORIcon = { fg = c.red_3 },
        NotifyERRORTitle = { fg = c.red_3 },
        NotifyINFOBorder = { fg = c.blue_3 },
        NotifyINFOIcon = { fg = c.blue_3 },
        NotifyINFOTitle = { fg = c.blue_3 },
        NotifyTRACEBorder = { fg = c.purple_3 },
        NotifyTRACEIcon = { fg = c.purple_3 },
        NotifyTRACETitle = { fg = c.purple_3 },
        NotifyWARNBorder = { fg = c.orange_3 },
        NotifyWARNIcon = { fg = c.orange_3 },
        NotifyWARNTitle = { fg = c.orange_3 },

        -- leap.nvim
        LeapMatch = { style = "underline,nocombine", fg = c.orange_3 },
        LeapLabelPrimary = { style = "nocombine", fg = c.blackboard, bg = c.orange_3 },
        LeapLabelSecondary = { style = "nocombine", fg = c.blackboard, bg = c.purple_3 },
    }

    -- Options:

    --Set transparent background
    -- TODO: Check it
    if vim.g.chalkboard_disable_background then
        editor.Normal = { fg = c.white_4, bg = c.none } -- normal text and background color
        editor.SignColumn = { fg = c.white_4, bg = c.none }
    else
        editor.Normal = { fg = c.white_4, bg = c.blackboard } -- normal text and background color
        editor.SignColumn = { fg = c.white_4, bg = c.blackboard }
    end

    return editor
end

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

-- Syntax highlight groups
theme.loadSyntax = function()
    return {
        -- Needs improvement
        Macro = { fg = c.green_3 }, -- same as Define
        Operator = { fg = c.red_5 }, -- sizeof", "+", "*", etc.
        -- Don't know
        Structure = { fg = c.orange_3 }, -- struct, union, enum, etc.
        Constant = { fg = c.green_3 }, -- any constant
        Statement = { fg = c.green_1 }, -- any statement
        Label = { fg = c.green_1 }, -- case, default, etc.
        Keyword = { fg = c.green_5, style = "italic" }, -- italic for, do, while, etc.
        Repeat = { fg = c.green_3 }, -- italic any other keyword
        Ignore = { fg = c.black_2 }, -- left blank, hidden
        Debug = { fg = c.red_1 }, -- debugging statements
        SpecialComment = { fg = c.gray_1 }, -- special things inside a comment
        PreCondit = { fg = c.purple_3 }, -- preprocessor #if, #else, #endif, etc.
        PreProc = { fg = c.purple_3 }, -- generic Preprocessor
        Include = { fg = c.green_3 }, -- preprocessor #include
        Define = { fg = c.green_3 }, -- preprocessor #define
        -- The change is in TS
        Type = { fg = c.purple_3 }, -- int, long, char, etc.
        StorageClass = { fg = c.purple_5 }, -- static, register, volatile, etc.
        Boolean = { fg = c.orange_3 }, -- a boolean constant: TRUE, false
        Number = { fg = c.purple_3 }, -- a number constant: 5
        Float = { fg = c.purple_3 }, -- a floating point constant: 2.3e10
        Character = { fg = c.yellow_3 }, -- any character constant: 'c', '\n'
        String = { fg = c.yellow_3 }, -- any string
        Conditional = { fg = c.red_3, style = "italic" }, -- italic if, then, else, endif, switch, etc.
        Error = { fg = c.none, bg = c.red_3, style = "bold,underline" }, -- any erroneous construct with bold
        Todo = { style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        Delimiter = { fg = c.purple_3 }, -- character that needs attention like , or .
        -- Good ones. Passes to TS
        Comment = { fg = c.gray_1, style = "italic" }, -- italic comments

        Identifier = { fg = c.foreground }, -- any variable name. For lua, this is the color for [ ].identifier
        Function = { fg = c.blue_3 }, -- italic function names. For lua, this is [ ].[identifier].function()

        -- TODO: Not tested
        Exception = { fg = c.orange_3 }, -- try, catch, throw
        Typedef = { fg = c.purple_3 }, -- A typedef
        Special = { fg = c.yellow_1 }, -- any special symbol
        SpecialChar = { fg = c.yellow_1 }, -- special character in a constant
        Tag = { fg = c.yellow_3 }, -- you can use CTRL-] on this
        markdownH1Delimiter = { fg = c.red_3 },
        markdownH2Delimiter = { fg = c.orange_3 },
        markdownH3Delimiter = { fg = c.yellow_3 },
        markdownH4Delimiter = { fg = c.green_3 },
        markdownH5Delimiter = { fg = c.blue_3 },
        markdownH6Delimiter = { fg = c.purple_3 },
        htmlH1 = { fg = c.red_3, style = "bold" },
        htmlH2 = { fg = c.orange_3, style = "bold" },
        htmlH3 = { fg = c.yellow_3, style = "bold" },
        htmlH4 = { fg = c.green_3, style = "bold" },
        htmlH5 = { fg = c.blue_3, style = "bold" },
        htmlH6 = { fg = c.purple_3, style = "bold" },
        markdownH1 = { fg = c.red_3, style = "bold" },
        markdownH2 = { fg = c.orange_3, style = "bold" },
        markdownH3 = { fg = c.yellow_3, style = "bold" },
        markdownH4 = { fg = c.green_3, style = "bold" },
        markdownH5 = { fg = c.blue_3, style = "bold" },
        markdownH6 = { fg = c.purple_3, style = "bold" },
        htmlLink = { fg = c.blue_3, style = "underline" },
        Underlined = { fg = c.blue_3, style = "underline" }, -- text that stands out, HTML links
        Conceal = { fg = c.white_1, bg = c.blackboard },
    }
end

-- TreeSitter highlight groups
theme.loadTreeSitter = function()
    local treesitter = {
        -- Text
        ["@text"] = { fg = c.foreground }, -- For strings considered text in a markup language.
        ["@text.emphasis"] = { fg = c.foreground, style = "italic" },
        ["@text.underline"] = { fg = c.foreground, bg = c.none, style = "underline" },
        ["@text.reference"] = { fg = c.white_3 },
        ["@text.literal"] = { fg = c.white_1 },

        ["@string"] = { fg = c.yellow_3, style = "italic" },
        ["@string.regex"] = { fg = c.yellow_1, style = "italic" },
        ["@string.escape"] = { fg = c.purple_2, style = "italic" },
        ["@character"] = { fg = c.yellow_3, style = "italic" },

        -- Function names
        ["@method"] = { fg = c.blue_1, style = "bold" },
        ["@function"] = { fg = c.blue_3 },
        ["@function.builtin"] = { fg = c.blue_3, style = "italic" },
        ["@funtion.macro"] = { fg = c.green_1, style = 'bold' },

        -- Language keywords
        ["@keyword"] = { fg = c.green_3, style = "italic" },
        ["@keyword.function"] = { fg = c.green_3, style = "italic" },
        ["@keyword.return"] = { fg = c.green_3, style = "italic" },
        ["@keyword.operator"] = { fg = c.orange_5, style = "italic" },
        ["@repeat"] = { fg = c.green_3, style = "italic" },

        -- Punctuation and delimeters
        ["@punctuation.delimiter"] = { fg = c.purple_3 },
        ["@punctuation.bracket"] = { fg = c.purple_3 },
        ["@punctuation.special"] = { fg = c.purple_3 },

        ["@text.uri"] = { fg = c.blue_3, style = "underline" },
        ["@text.strike"] = { fg = c.foreground, style = "strikethrough" },
        ["@text.math"] = { fg = c.purple_1 },
        ["@float"] = { fg = c.purple_3 },
        ["@number"] = { fg = c.purple_3 },
        ["@operator"] = { fg = c.red_3 },
        -- Improve
        ["@constructor"] = { fg = c.red_4 },
        -- Don't know
        ["@attribute"] = { fg = c.orange_1 },
        ["@exception"] = { fg = c.orange_3 },
        ["@label"] = { fg = c.orange_3 },
        -- Didn't test
        ["@constant"] = { fg = c.green_3 },
        ["@error"] = { fg = c.red_3, style = 'underline' },
        ["@include"] = { fg = c.red_3 },
        ["@parameter"] = { fg = c.blue_1 },
        ["@symbol"] = { fg = c.green_1 },

        -- NOTE: You can check it in the types from Julia
        ["@type"] = { fg = c.purple_3 },
        ["@type.builtin"] = { fg = c.purple_3, style = 'bold' },

        ["@tag"] = { fg = c.red_3 },
        ["@tag.delimiter"] = { fg = c.red_3 },

        ["@boolean"] = { fg = c.orange_3, style = "italic" },
        ["@variable"] = { fg = c.foreground },
        ["@variable.builtin"] = { fg = c.yellow_3 },
        ["@variable.global"] = { fg = c.yellow_1 },

        -- NOTE: not tested yet
        ["@constant.builtin"] = { fg = c.green_1 },
        ["@constant.macro"] = { fg = c.green_1 },
        ["@text.title"] = { fg = c.white_3, bg = c.none, style = "bold" },
        ["@text.strong"] = { fg = c.foreground, bg = c.none, style = "bold" },

        -- Comments
        ["@comment"] = { fg = c.gray_1, style = "italic" },
        -- Conditionals
        ["@conditional"] = { fg = c.red_3, style = "italic" }, -- For keywords related to conditionnals.
        -- Namespaces and property accessors
        ["@namespace"] = { fg = c.blue_1 }, -- For identifiers referring to modules and namespaces.
        ["@field"] = { fg = c.purple_1 },
        ["@property"] = { fg = c.red_5 }, -- NOTE: Maybe the bright color could be good

        -- @todo Missing highlights
        -- @function.call
        -- @method.call
        -- @type.qualifier
        -- @text.math (e.g. for LaTeX math environments)
        -- @text.environment (e.g. for text environments of markup languages)
        -- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
        -- @text.note
        -- @text.warning
        -- @text.danger
        -- @tag.attribute
        -- @string.special
    }
    return treesitter
end

theme.loadFiletypes = function()
    local ft = { -- yaml
        yamlBlockMappingKey = { fg = c.green_5 },
        yamlBool = { link = "Boolean" },
        yamlDocumentStart = { link = "Keyword" },
        yamlTSField = { fg = c.green_5 },
        yamlTSString = { fg = c.white_1 },
        yamlTSPunctSpecial = { link = "Keyword" },
        yamlKey = { fg = c.green_5 }, -- stephpy/vim-yaml
    }
    return ft
end

theme.loadLSP = function()
    local lsp = {
        LspDiagnosticsDefaultError = { fg = c.red_3 }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = c.red_3 }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError = { fg = c.red_3 }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError = { fg = c.red_3 }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError = { style = "undercurl", sp = c.red_3 }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning = { fg = c.orange_3 }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = c.orange_3 }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning = { fg = c.orange_3 }, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning = { fg = c.orange_3 }, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = c.orange_3 }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation = { fg = c.purple_3 }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation = { fg = c.purple_3 }, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation = { fg = c.purple_3 }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = { fg = c.purple_3 }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = c.purple_3 }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint = { fg = c.blue_3 }, -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = c.blue_3 }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint = { fg = c.blue_3 }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint = { fg = c.blue_3 }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint = { style = "undercurl", sp = c.blue_3 }, -- used to underline "Hint" diagnostics.
        LspReferenceText = { fg = c.white_1, bg = c.black_1 }, -- used for highlighting "text" references
        LspReferenceRead = { fg = c.white_1, bg = c.black_1 }, -- used for highlighting "read" references
        LspReferenceWrite = { fg = c.white_1, bg = c.black_1 }, -- used for highlighting "write" references
        DiagnosticError = { link = "LspDiagnosticsDefaultError" },
        DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
        DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
        DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
        DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
        DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
        DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
        DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
        DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
        DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
        DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
        DiagnosticSignError = { link = "LspDiagnosticsSignError" },
        DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
        DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
        DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
        DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
        DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
        DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
        DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
        DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
    }
    return lsp
end

theme.loadPlugins = function()
    local plugins = {
        -- LspTrouble
        LspTroubleText = { fg = c.white_1 },
        LspTroubleCount = { fg = c.blue_5, bg = c.blue_3 },
        LspTroubleNormal = { fg = c.white_1, bg = c.black_2 },
        -- Diff
        diffAdded = { fg = c.green_3 },
        diffRemoved = { fg = c.red_3 },
        diffChanged = { fg = c.purple_3 },
        diffOldFile = { fg = c.orange_3 },
        diffNewFile = { fg = c.yellow_2 },
        diffFile = { fg = c.green_5 },
        diffLine = { fg = c.white_1 },
        diffIndexLine = { fg = c.blue_5 },
        -- Neogit
        NeogitBranch = { fg = c.blue_3 },
        NeogitRemote = { fg = c.blue_5 },
        NeogitHunkHeader = { fg = c.blue_1 },
        NeogitHunkHeaderHighlight = { fg = c.blue_1, bg = c.black_1 },
        NeogitDiffContextHighlight = { bg = c.black_2 },
        NeogitDiffDeleteHighlight = { fg = c.red_3, style = "reverse" },
        NeogitDiffAddHighlight = { fg = c.green_3, style = "reverse" },
        -- GitGutter
        GitGutterAdd = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
        -- GitSigns
        GitSignsAdd = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = c.orange_3 }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
        GitSignsCurrentLineBlame = { fg = c.white_1, style = "bold" },
        -- Telescope
        TelescopePromptBorder = { fg = c.white_1 },
        TelescopeResultsBorder = { fg = c.white_1 },
        TelescopePreviewBorder = { fg = c.white_1 },
        TelescopeSelectionCaret = { fg = c.blue_3 },
        TelescopeSelection = { fg = c.white_3, bg = c.black_2 },
        TelescopeMatching = { link = 'Search' },
        -- NvimTree
        NvimTreeRootFolder = { fg = c.purple_3 },
        NvimTreeSymlink = { fg = c.blue_1 },
        NvimTreeFolderName = { fg = c.white_1 },
        NvimTreeFolderIcon = { fg = c.blue_3 },
        NvimTreeEmptyFolderName = { fg = c.white_1 },
        NvimTreeOpenedFolderName = { fg = c.white_3 },
        NvimTreeExecFile = { fg = c.white_1 },
        NvimTreeOpenedFile = { fg = c.white_3 },
        NvimTreeSpecialFile = { fg = c.white_1, style = "bold"},
        NvimTreeImageFile = { fg = c.white_1 },
        NvimTreeMarkdownFile = { fg = c.white_1 },
        NvimTreeIndentMarker = { fg = c.blue_5 },
        NvimTreeGitDirty = { fg = c.yellow_3 }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitStaged = { fg = c.yellow_3 }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitMerge = { fg = c.yellow_3 }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitRenamed = { fg = c.yellow_3 }, -- diff mode: Changed line |diff.txt|
        NvimTreeGitNew = { fg = c.green_3 }, -- diff mode: Added line |diff.txt|
        NvimTreeGitDeleted = { fg = c.red_3 }, -- diff mode: Deleted line |diff.txt|
        NvimTreeGitIgnored = { fg = c.black_4 },
        LspDiagnosticsError = { fg = c.red_3 },
        LspDiagnosticsWarning = { fg = c.orange_3 },
        LspDiagnosticsInformation = { fg = c.purple_3 },
        LspDiagnosticsHint = { fg = c.blue_3 },
        -- WhichKey
        WhichKey = { fg = c.blue_3, style = "bold" },
        WhichKeyGroup = { fg = c.white_3 },
        WhichKeyDesc = { fg = c.green_5, style = "italic" },
        WhichKeySeperator = { fg = c.blue_5 },
        WhichKeyFloating = { bg = c.black_1 },
        WhichKeyFloat = { bg = c.black_1 },
        WhichKeyValue = { fg = c.green_5 },
        -- Sneak
        Sneak = { fg = c.blackboard, bg = c.white_1 },
        SneakScope = { bg = c.black_1 },
        -- Cmp
        CmpItemKind = { fg = c.purple_3 },
        CmpItemAbbrMatch = { fg = c.white_3, style = "bold" },
        CmpItemAbbrMatchFuzzy = { fg = c.white_3, style = "bold" },
        CmpItemAbbr = { fg = c.white_1 },
        CmpItemMenu = { fg = c.green_3 },
        -- Indent Blankline
        IndentBlanklineChar = { fg = c.purple_5 },
        IndentBlanklineContextChar = { fg = c.purple_3 },
        -- headline
        -- bg = (10 * nord0 + fg) / 11
        Headline1 = { fg = c.red_5, bg = c.red_b, bold = true },
        Headline2 = { fg = c.orange_5, bg = c.orange_b, bold = true },
        Headline3 = { fg = c.yellow_5, bg = c.yellow_b, bold = true },
        Headline4 = { fg = c.green_5, bg = c.green_b, bold = true },
        Headline5 = { fg = c.blue_5, bg = c.blue_b, bold = true },
        Headline6 = { fg = c.purple_5, bg = c.purple_b, bold = true },
        Quote = { fg = c.black_1 },
        CodeBlock = { bg = c.black_1 },
        Dash = { c.blue_3, bold = true },
        -- Illuminate
        illuminatedWord = { bg = c.black_1 },
        illuminatedCurWord = { bg = c.black_1 },
        IlluminatedWordText = { bg = c.black_1 },
        IlluminatedWordRead = { bg = c.black_1 },
        IlluminatedWordWrite = { bg = c.black_1 },
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
        -- Hop
        HopNextKey = { fg = c.white_1, style = "bold" },
        HopNextKey1 = { fg = c.blue_1, style = "bold" },
        HopNextKey2 = { fg = c.white_1 },
        HopUnmatched = { fg = c.blue_5 },
        -- Fern
        FernBranchText = { fg = c.black_4 },
        -- rainbow-delimiters.nvim
        RainbowDelimiterRed = { fg = c.red_3 },
        RainbowDelimiterYellow = { fg = c.yellow_3 },
        RainbowDelimiterBlue = { fg = c.blue_3 },
        RainbowDelimiterOrange = { fg = c.orange_3 },
        RainbowDelimiterGreen = { fg = c.green_3 },
        RainbowDelimiterCyan = { fg = c.purple_3 },
        RainbowDelimiterViolet = { fg = c.white_3 },
        -- copilot
        CopilotLabel = { fg = c.black_4, bg = c.none },
        -- Statusline
        StatusLineDull = { fg = c.black_4, bg = c.black_1 },
        StatusLineAccent = { fg = c.blackboard, bg = c.yellow_3 },
        -- mini.nvim
        MiniCompletionActiveParameter = { style = "underline" },
        MiniCursorword = { bg = c.black_4 },
        MiniCursorwordCurrent = { bg = c.black_4 },

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

        MiniTrailspace = { bg = c.red_5 },

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

        -- nvim-tree background
        NvimTreeNormal = { fg = c.white_1, bg = c.none },
    }
    return plugins
end

return theme
