return {
  "thgrund/tidal.nvim",
  opts = {
    -- Your configuration here
    -- See configuration section for defaults
    boot = {
      tidal = {
        --- Command to launch ghci with tidal installation
        cmd = "ghci",
        args = {
          "-v0",
        },
        --- Tidal boot file path
        file = "/home/maximilian/.config/tidal/BootTidal.hs",
      },
      sclang = {
        --- Command to launch SuperCollider
        cmd = "sclang",
        args = {},
        --- SuperCollider boot file
        file = "/home/maximilian/.config/tidal/superdirt_startup.scd",
        enabled = true,
      },
    },
  },
  -- Recommended: Install TreeSitter parsers for Haskell and SuperCollider
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "haskell", "supercollider" } },
  },
}
