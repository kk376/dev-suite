-- ==============================================================================
-- Colorscheme Configuration (Noctalia Frosted Glass & Catppuccin Fallback)
-- ==============================================================================

return {
  {
    "keremimo/noctalia.nvim",
    name = "noctalia",
    lazy = false,    -- Load immediately during startup so colorscheme is present
    priority = 1000, -- Highest priority to ensure it loads before other UI plugins
    opts = {
      palette_path = vim.fn.expand("~/.config/noctalia/colors.json"),
      auto_reload = true,
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("noctalia").setup(opts)
      vim.cmd.colorscheme("noctalia")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },
}
