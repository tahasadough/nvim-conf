return {
  "nvim-mini/mini.surround",
  keys = {
    { "sa", desc = "Add surrounding" },
    { "sd", desc = "Delete surrounding" },
    { "sr", desc = "Replace surrounding" },
    { "sf", desc = "Find surrounding (right)" },
    { "sF", desc = "Find surrounding (left)" },
    { "sh", desc = "Highlight surrounding" },
  },
  opts = {
    custom_surroundings = nil,
    highlight_duration = 500,
    mappings = {
      add = "sa",
      delete = "sd",
      find = "sf",
      find_left = "sF",
      highlight = "sh",
      replace = "sr",
      suffix_last = "l",
      suffix_next = "n",
    },
    n_lines = 20,
    respect_selection_type = false,
    search_method = "cover",
    silent = false,
  },
}
