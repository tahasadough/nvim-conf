---@diagnostic disable: missing-fields
return {
  "nvim-neotest/neotest",
  event = "VeryLazy",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "fredrikaverpil/neotest-golang",
    "mrcjkb/rustaceanvim",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
    "antoinemadec/FixCursorHold.nvim",
  },

  config = function()
    local neotest = require("neotest")
    local root_pattern = require("lspconfig.util").root_pattern

    neotest.setup({
      adapters = {
        require("neotest-golang")({
          go_test_args = {
            "-v",
            "-race",
            "-count=1",
            "-timeout=60s",
          },
        }),
        require("rustaceanvim.neotest"),
        require("neotest-jest")({
          jestCommand = "npm test --",
          env = {
            CI = true,
          },
          cwd = function(path)
            return root_pattern("jest.config.js", "jest.config.ts", "package.json")(path)
          end,
        }),
        require("neotest-vitest")({
          filter_dir = function(name)
            return name ~= "node_modules"
          end,
        }),
      },

      status = {
        virtual_text = false,
      },

      output = {
        open_on_run = true,
      },

      quickfix = {
        open = function()
          vim.cmd("copen")
        end,
      },
    })
  end,

  keys = {
    {
      "<leader>tt",
      function()
        require("neotest").run.run()
      end,
      desc = "Run Nearest Test",
    },
    {
      "<leader>tf",
      function()
        require("neotest").run.run(vim.fn.expand("%"))
      end,
      desc = "Run Current File Tests",
    },
    {
      "<leader>ta",
      function()
        require("neotest").run.run(vim.uv.cwd())
      end,
      desc = "Run Project Tests",
    },
    {
      "<leader>td",
      function()
        require("neotest").run.run({ strategy = "dap" })
      end,
      desc = "Debug Nearest Test",
    },
    {
      "<leader>ts",
      function()
        require("neotest").summary.toggle()
      end,
      desc = "Toggle Summary",
    },
    {
      "<leader>to",
      function()
        require("neotest").output.open({
          enter = true,
          auto_close = true,
        })
      end,
      desc = "Open Output",
    },
    {
      "<leader>tO",
      function()
        require("neotest").output_panel.toggle()
      end,
      desc = "Toggle Output Panel",
    },
    {
      "<leader>tS",
      function()
        require("neotest").run.stop()
      end,
      desc = "Stop Tests",
    },
  },
}
