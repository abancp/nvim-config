-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup({
--       style = "storm", -- You can try "night" for a deeper purple
--     })
--     vim.cmd("colorscheme tokyonight-storm")
--   end,
-- }
-- return {
--   "Mofiqul/dracula.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("dracula").setup({
--       colors = {
--         bg = "#0D0A1A", -- Super dark purple
--         fg = "#C678DD", -- Vibrant purple
--         selection = "#311B92",
--         comment = "#6D5A78",
--         keyword = "#BB9AF7",
--         string = "#9ECE6A",
--         function_color = "#A9A1E1",
--       },
--     })
--     vim.cmd("colorscheme dracula")
--   end,
-- }

return {
  "marko-cerovac/material.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Set Material theme style
    vim.g.material_style = "deep ocean"

    require("material").setup({
      contrast = {
        terminal = true,
        sidebars = true,
        floating_windows = true,
        cursor_line = true, -- Keep cursor line visible
        non_current_windows = true, -- Darken focused file
      },
      plugins = {
        "nvim-tree",
        "telescope",
        "gitsigns",
        "which-key",
        "nvim-cmp",
        "neogit",
        "indent-blankline",
        "dashboard",
      },
      high_visibility = {
        darker = true, -- Darken the focused file
        lualine = false,
      },
      disable = {
        background = false,
        term_colors = false,
        eob_lines = false,
      },
      custom_highlights = {
        -- Darker focused file
        Normal = { bg = "#0A0E14" }, -- Very dark for active window
        NormalNC = { bg = "#11151C" }, -- Slightly dark for inactive (not too bright)
      },
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme material")
  end,
}


-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup()
--     vim.cmd.colorscheme "catppuccin"
--   end
-- }
