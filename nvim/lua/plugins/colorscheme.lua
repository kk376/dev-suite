-- ==============================================================================
-- Colorscheme Configuration (Tokyo Night for GNOME Desktop)
-- ==============================================================================

return {
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,    -- Load immediately during startup so colorscheme is present
    priority = 1000, -- Highest priority to ensure it loads before other UI plugins
    opts = {
      style = "night",
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}

