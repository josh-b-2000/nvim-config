return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':NvimTreeToggle<CR>', desc = 'NvimTree toggle', silent = true },
  },
  opts = {
    view = {
      width = 50,
    },
    actions = {
      open_file = {
        -- NOTE: After working with this turned on for a bit, quit-on-open is a bit overkill
        quit_on_open = false,
        resize_window = true,
      },
    },
    update_focused_file = {
      enable = true,
    },
  },
}
