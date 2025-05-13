return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15, -- Set terminal height
      open_mapping = [[<C-\>]], -- Use Ctrl+\ to toggle
      shade_terminals = true, -- Darken background like VSCode
      shading_factor = 2, -- Increase background darkness
      direction = "horizontal", -- Open at bottom like VSCode
      persist_size = true,
      start_in_insert = true, -- Start in insert mode
      close_on_exit = true,
    })
  end,
}

