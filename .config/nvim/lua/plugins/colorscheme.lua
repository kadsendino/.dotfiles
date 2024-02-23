return {
  -- add gruvbox
  { "pauchiner/pastelnight.nvim", name = "pastelnight", priority = 1000 },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "pastelnight",
    },
  }
}
