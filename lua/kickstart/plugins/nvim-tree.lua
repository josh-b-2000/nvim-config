vim.pack.add({
  {
    src = 'https://github.com/nvim-tree/nvim-tree.lua',
  },

  -- dependencies
  {
    src = 'https://github.com/nvim-lua/plenary.nvim',
  },
  {
    src = 'https://github.com/nvim-tree/nvim-web-devicons',
  },
  {
    src = 'https://github.com/MunifTanjim/nui.nvim',
  },
})

-- keymap
vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', {
  desc = 'NvimTree toggle',
  silent = true,
})

require('nvim-tree').setup({
  view = {
    width = 50,
  },

  actions = {
    open_file = {
      -- After working with this turned on for a bit,
      -- quit-on-open is a bit overkill
      quit_on_open = false,
      resize_window = true,
    },
  },

  update_focused_file = {
    enable = true,
  },
})
