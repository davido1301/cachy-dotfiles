  return {
      {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        variant = "dark",
        transparent = true,
        saturation = 0.9,
        italic_comments = false,
        borderless_pickers = true,
        extensions = {
          telescope = true,
        },
        overrides = function(colors)
          local glass = "#21304a"
          local glass_soft = "#283a57"
          local glass_dim = "#1b2740"
          local border = "#6f98d8"
          local accent = "#a9c8ff"

          return {
            TelescopeNormal = { fg = colors.fg, bg = glass },
            TelescopeBorder = { fg = border, bg = glass },

            TelescopePromptNormal = { fg = colors.fg, bg = glass_soft },
            TelescopePromptBorder = { fg = border, bg = glass_soft },
            TelescopePromptTitle = { fg = colors.bg, bg = accent, bold = true },

            TelescopeResultsNormal = { fg = colors.fg, bg = glass },
            TelescopeResultsBorder = { fg = glass, bg = glass },
            TelescopeResultsTitle = { fg = glass, bg = glass },

            TelescopePreviewNormal = { fg = colors.fg, bg = glass_dim },
            TelescopePreviewBorder = { fg = glass_dim, bg = glass_dim },
            TelescopePreviewTitle = { fg = colors.bg, bg = border, bold = true },

            TelescopeSelection = { fg = colors.fg, bg = glass_soft, bold = true },
            TelescopeSelectionCaret = { fg = accent, bg = glass_soft },
            TelescopeMatching = { fg = accent, bold = true },
          }
        end,
      })

      vim.cmd("colorscheme cyberdream")
    end,
  }
}
