local named_colors = require("chalkboard.named_colors")

local chalkboard_new = {
    greenboard = '#274C43',
    foreground = '#EFEBFF',
    blackboard = '#292732',
    black_1 = '#35333E',
    black_2 = '#413F4A',
    black_3 = '#4E4C58',
    black_4 = '#5B5965',
    gray_1 = '#696673',
    gray_2 = '#777482',
    gray_3 = '#858290',
    gray_4 = '#93909F',
    gray_5 = '#A29FAF',
    white_1 = '#B1AEBE',
    white_2 = '#C0BDCE',
    white_3 = '#D0CCDE',
    white_4 = '#DFDBEE',
    red_b = '#473039',
    red_1 = '#CD83A1',
    red_2 = '#E593B4',
    red_3 = '#FEA2C7',
    red_4 = '#FFB0CF',
    red_5 = '#FFBED7',
    orange_b = '#443629',
    orange_1 = '#CDA170',
    orange_2 = '#E6B57E',
    orange_3 = '#FFC98B',
    orange_4 = '#FFD09D',
    orange_5 = '#FED6AE',
    yellow_b = '#3E3C2A',
    yellow_1 = '#C9C488',
    yellow_2 = '#E3DD99',
    yellow_3 = '#FDF7AB',
    yellow_4 = '#FBF5B6',
    yellow_5 = '#F8F4C0',
    green_b = '#2B3C30',
    green_1 = '#81AF8E',
    green_2 = '#91C59F',
    green_3 = '#A1DAB1',
    green_4 = '#ADDFBB',
    green_5 = '#B9E4C5',
    blue_b = '#2C3A44',
    blue_1 = '#85AEC8',
    blue_2 = '#95C3E0',
    blue_3 = '#A6D8F9',
    blue_4 = '#B2DDFA',
    blue_5 = '#BEE1FB',
    purple_b = '#3B3644',
    purple_1 = '#AA9CC1',
    purple_2 = '#BEAFD8',
    purple_3 = '#D3C2EF',
    purple_4 = '#D9CAF2',
    purple_5 = '#DFD2F5',
    none = 'NONE',
}

local dark_colors = {
    bg = named_colors.blackboard,
    fg = named_colors.foreground,
    bla = named_colors.black_normal,
    red = named_colors.red_normal,
    ora = named_colors.orange_normal,
    yel = named_colors.yellow_normal,
    gre = named_colors.green_normal,
    blu = named_colors.blue_normal,
    pur = named_colors.purple_normal,
    whi = named_colors.white_normal,
    bla_bri = named_colors.black_light,
    red_bri = named_colors.red_light,
    ora_bri = named_colors.orange_light,
    yel_bri = named_colors.yellow_light,
    gre_bri = named_colors.green_light,
    blu_bri = named_colors.blue_light,
    pur_bri = named_colors.purple_light,
    whi_bri = named_colors.white_light,
    bla_acc = named_colors.black_normal,
    red_acc = named_colors.red_dark,
    ora_acc = named_colors.orange_dark,
    yel_acc = named_colors.yellow_dark,
    gre_acc = named_colors.green_dark,
    blu_acc = named_colors.blue_dark,
    pur_acc = named_colors.purple_dark,
    whi_acc = named_colors.white_dark,
    none = "NONE",
}

local light_colors = {
    bg = named_colors.foreground,
    fg = named_colors.blackboard,
    bla = named_colors.white_dark,
    red = named_colors.red_dark,
    ora = named_colors.orange_dark,
    yel = named_colors.yellow_dark,
    gre = named_colors.green_dark,
    blu = named_colors.blue_dark,
    pur = named_colors.purple_dark,
    whi = named_colors.black_dark,
    bla_bri = named_colors.white_normal,
    red_bri = named_colors.red_normal,
    ora_bri = named_colors.orange_normal,
    yel_bri = named_colors.yellow_normal,
    gre_bri = named_colors.green_normal,
    blu_bri = named_colors.blue_normal,
    pur_bri = named_colors.purple_normal,
    whi_bri = named_colors.black_normal,
    bla_acc = named_colors.white_light,
    red_acc = named_colors.red_light,
    ora_acc = named_colors.orange_light,
    yel_acc = named_colors.yellow_light,
    gre_acc = named_colors.green_light,
    blu_acc = named_colors.blue_light,
    pur_acc = named_colors.purple_light,
    whi_acc = named_colors.black_light,
    none = "NONE",
}

local chalkboard = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.chalkboard_contrast then
    chalkboard.float = chalkboard.bla
else
    chalkboard.float = chalkboard.bla_acc
end

if vim.g.chalkboard_cursorline_transparent then
    chalkboard.cursorlinefg = chalkboard.bg
else
    chalkboard.cursorlinefg = chalkboard.bla_acc
end

return chalkboard
