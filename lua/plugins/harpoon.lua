return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    {
      "<leader>j",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Harpoon Next File",
      mode = "n",
    },
    {
      "<leader>k",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Harpoon Prev File",
      mode = "n",
    },
  },
}
