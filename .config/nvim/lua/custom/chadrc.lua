---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  changed_themes = {
    ashes = {
      base_30 = {
        white = "#c7ccd1",
          darker_black = "#161616",
          black = "#1f1f1f", --  nvim bg
          black2 = "#2a2a2a",
          one_bg = "#272b2e", -- real bg of onedark
          one_bg2 = "#303437",
          one_bg3 = "#3a3e41",
          grey = "#44484b",
          grey_fg = "#4a4e51",
          grey_fg2 = "#515558",
          light_grey = "#565a5d",
          vred = "#c79595",
          baby_pink = "#d09eb7",
          pink = "#c795ae",
          line = "#303437", -- for lines like vertsplit
          green = "#aec795",
          vibrant_green = "#95c7ae",
          nord_blue = "#8ca5be",
          blue = "#95aec7",
          yellow = "#c7c795",
          sun = "#d0d09e",
          purple = "#ae95c7",
          dark_purple = "#a58cbe",
          teal = "#8fb4b5",
          orange = "#c7ae95",
          cyan = "#9eb7d0",
          statusline_bg = "#2a2a2a",
          lightbg = "#303437",
          pmenu_bg = "#99c366",
          folder_bg = "#9ebe92",
      },

      base_16 = {
          base00 = "#1f1f1f",
          base01 = "#2a2a2a",
          base02 = "#303437",
          base03 = "#44484b",
          base04 = "#adb3ba",
          base05 = "#c7ccd1",
          base06 = "#dfe2e5",
          base07 = "#f3f4f5",
          base08 = "#ffcdad",
          base09 = "#fae8c0",
          base0A = "#c5efb9",
          base0B = "#bddddb",
          base0C = "#b5cafd",
          base0D = "#dec7f8",
          base0E = "#edbcd9",
          base0F = "#fbb2b9",
      },
    },
  },

  theme = "ashes",
  theme_toggle = { "ashes", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
