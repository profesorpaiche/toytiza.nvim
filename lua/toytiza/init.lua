-- Colorscheme name:    toytiza.nvim
-- Description:         Adapted from shaunsingh/nord.nvim and folke/tokyonight.nvim
-- Author:              https://github.com/profesorpaiche

local util = require("toytiza.util")
-- local bufferline = require("bufferline.theme")

-- -- Load the theme
local setup = function()
    util.load()
end

-- return { set = set, bufferline = bufferline }
return { setup = setup }
