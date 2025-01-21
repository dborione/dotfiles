return {
  -- Focus
  {
    "cdmill/focus.nvim",
    cmd = { "Focus", "Zen", "Narrow" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      --{
      border = "none",
      zindex = 40, -- zindex of the focus window. Should be less than 50, which is the float default
      window = {
        backdrop = 1, -- shade the backdrop of the focus window. Set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        width = 70, -- width of the focus window, 120 default
        height = 1, -- height of the focus window
        -- by default, no options are changed in for the focus window
        -- add any vim.wo options you want to apply
        options = {},
      },
      auto_zen = true, -- auto enable zen mode when entering focus mode
      maintain_zen = false, -- if true, stay in zen mode when exiting focus mode
      maintain_narrow = false, -- if true, stay in narrow mode when exiting focus mode
      -- by default, the options below are disabled for zen mode
      zen = {
        opts = {
          cmdheight = 0, -- disable cmdline
          cursorline = false, -- disable cursorline
          laststatus = 0, -- disable statusline
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          foldcolumn = "0", -- disable fold column
          signcolumn = "no", -- disable signcolumn
          statuscolumn = " ", -- disable status column
        },
        diagnostics = false, -- disables diagnostics
      },
      plugins = {
        -- uncomment any of the lines below to disable that option in Focus mode
        -- options = {
        --   disable some global vim options (vim.o...) e.g.
        --   ruler = false
        -- },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        -- gitsigns = { enabled = false }, -- disables git signs
        -- tmux = { enabled = false }, -- disables the tmux statusline
        -- diagnostics = { enabled = false }, -- disables diagnostics
        -- todo = { enabled = false }, -- if setindentscope to "true", todo-comments.nvim highlights will be disabled
        indentscope = { enabled = false },
        tokyonight = { enabled = false },
      },
      -- callback where you can add custom code when the focus window opens
      on_open = function(_win) end,
      -- callback where you can add custom code when the focus window closes
      on_close = function() end,
      --},
    },
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    opts = {
      {
        dimming = {
          alpha = 0.25, -- amount of dimming
          -- we try to get the foreground from the highlight groups or fallback color
          color = { "Normal", "#ffffff" },
          term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
          inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
        },
        context = 7, -- amount of lines we will try to show around the current line
        treesitter = true, -- use treesitter when available for the filetype
        -- treesitter is used to automatically expand the visible text,
        -- but you can further control the types of nodes that should always be fully expanded
        expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
          "function",
          "method",
          "table",
          "if_statement",
        },
        exclude = {}, -- exclude these filetypes
      },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
