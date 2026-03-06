
-- Setup Catppuccin

require("catppuccin").setup({
  flavour = "macchiato",
  transparent_background = true,
  float = { transparent = false },
  auto_integrations = true
})
vim.cmd.colorscheme("catppuccin")
