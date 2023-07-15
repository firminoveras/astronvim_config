return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function() require("catppuccin").setup {} end,
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function() require("hop").setup { keys = "etovxqpdygfblzhckisuran" } end,
  },
}
