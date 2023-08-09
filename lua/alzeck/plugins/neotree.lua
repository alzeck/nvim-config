return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  event = "VeryLazy",
  keys = {
    { "<leader>e",     ":Neotree toggle float<CR>", silent = true, desc = "Float File Explorer" },
    { "<leader><tab>", ":Neotree toggle left<CR>",  silent = true, desc = "Left File Explorer" },
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_modified_markers = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      default_component_configs = {
        indent = {
          with_markers = false,
          with_expanders = true,
        },
        modified = {
          symbol = " ",
          highlight = "NeoTreeModified",
        },
        -- -- icon = {
        --   folder_closed = "",
        --   folder_open = "",
        --   folder_empty = "",
        --   folder_empty_open = "",
        -- },
        git_status = {
          symbols = {
            -- Change type
            added = "",
            deleted = "",
            modified = "",
            -- renamed = "",
            -- Status type
            untracked = "",
            ignored = "",
            -- unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
      window = {
        position = "float",
        width = 35,
        border = "rounded"
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
      event_handlers = {
        -- {
        --     event = "file_opened",
        --     handler = function()
        --         --auto close
        --         require("neo-tree").close_all()
        --     end,
        -- },
        -- {
        --   event = "neo_tree_window_after_open",
        --   handler = function(args)
        --     if args.position == "left" or args.position == "right" then
        --       vim.cmd("wincmd =")
        --     end
        --   end,
        -- },
        -- {
        --   event = "neo_tree_window_after_close",
        --   handler = function(args)
        --     if args.position == "left" or args.position == "right" then
        --       vim.cmd("wincmd =")
        --     end
        --   end,
        -- },
      },
    })
  end
}

