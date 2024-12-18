return {
  "norcalli/nvim-colorizer.lua",
  event = "BufRead",
  config = function()
    -- Setup nvim-colorizer.lua
    require("colorizer").setup()
  end,
}
