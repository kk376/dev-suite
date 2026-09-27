-- ==============================================================================
-- Neovim Main Entrypoint
-- ==============================================================================

-- Load ergonomic defaults and options
require("config.options")

-- Bootstrap and setup lazy.nvim (loads plugins from lua/plugins/)
require("config.lazy")
