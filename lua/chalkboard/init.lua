-- Colorscheme name:    chalkboard.nvim
-- Description:         Adapted from shaunsingh/nord.nvim
-- Author:              https://github.com/profesorpaiche

local util = require("chalkboard.util")
-- local bufferline = require("bufferline.theme")

-- -- Load the theme
local setup = function()
    util.load()
end

-- return { set = set, bufferline = bufferline }
return { setup = setup }
