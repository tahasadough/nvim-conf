return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false,
    },
    dashboard = {
      preset = {
        header = [[

███╗   ██╗███████╗ ██████╗  ██▒   █▓ ██▓ ███▄ ▄███▓
████╗  ██║██╔════╝██╔═══██╗▓██░   █▒▓██▒▓██▒▀█▀ ██▒
██╔██╗ ██║█████╗  ██║   ██║ ▓██  █▒░▒██▒▓██    ▓██░
██║╚██╗██║██╔══╝  ██║   ██║  ▒██ █░░░██░▒██    ▒██ 
██║ ╚████║███████╗╚██████╔╝   ▒▀█░  ░██░▒██▒   ░██▒
╚═╝  ╚═══╝╚══════╝ ╚═════╝    ░ ▐░  ░▓  ░ ▒░   ░  ░
                              ░ ░░   ▒ ░░  ░      ░
                                ░░   ▒ ░░      ░
                                 ░   ░         ░
        ]],
      },
    },
    picker = {
      hidden = true,
      sources = {
        files = {
          hidden = true,
        },
        explorer = {
          layout = { layout = { position = "right" } },
        },
      },
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer",
    },
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>fh",
      function()
        Snacks.picker.help()
      end,
      desc = "Help",
    },
    {
      "<leader>fd",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Diagnostics",
    },

    {
      "<leader>z",
      function()
        Snacks.zen()
      end,
      desc = "Zen Mode",
    },
    {
      "<leader>.",
      function()
        Snacks.scratch()
      end,
      desc = "Scratch Buffer",
    },
    {
      "<c-/>",
      function()
        Snacks.terminal()
      end,
      desc = "Terminal",
    },
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "Lazygit",
    },
    {
      "<leader>n",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notifications",
    },
  },
}

-- ███╗   ██╗███████╗ ██████╗  ██▒   █▓ ██▓ ███▄ ▄███▓
-- ████╗  ██║██╔════╝██╔═══██╗▓██░   █▒▓██▒▓██▒▀█▀ ██▒
-- ██╔██╗ ██║█████╗  ██║   ██║ ▓██  █▒░▒██▒▓██    ▓██░
-- ██║╚██╗██║██╔══╝  ██║   ██║  ▒██ █░░░██░▒██    ▒██
-- ██║ ╚████║███████╗╚██████╔╝   ▒▀█░  ░██░▒██▒   ░██▒
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝    ░ ▐░  ░▓  ░ ▒░   ░  ░
--                               ░ ░░   ▒ ░░  ░      ░
--                                 ░░   ▒ ░░      ░
--                                  ░   ░         ░
--
--
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
