return {
  -- add gruvbox
  { "pauchiner/pastelnight.nvim", name = "pastelnight", priority = 1000 },
  { "EdenEast/nightfox.nvim", name = "nightfox", priority = 1001 },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfox",
    },
  },
}
