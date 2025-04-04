return {
  'rolv-apneseth/tfm.nvim',
  lazy = false,
  opts = {
    -- TFM to use
    -- Possible choices: "ranger" | "nnn" | "lf" | "vifm" | "yazi" (default)
    file_manager = 'yazi',
    -- Replace netrw entirely
    -- Default: false
    replace_netrw = true,
    -- Enable creation of commands
    -- Default: false
    -- Commands:
    --   Tfm: selected file(s) will be opened in the current window
    --   TfmSplit: selected file(s) will be opened in a horizontal split
    --   TfmVsplit: selected file(s) will be opened in a vertical split
    --   TfmTabedit: selected file(s) will be opened in a new tab page
    enable_cmds = false,
    -- Custom keybindings only applied within the TFM buffer
    -- Default: {}
    --keybindings = {
    --  ['<ESC>'] = 'q',
    --},
    -- Customise UI. The below options are the default
    ui = {
      border = 'rounded',
      height = 1,
      width = 1,
      x = 0.5,
      y = 0.5,
    },
  },
  keys = {
    {
      '<leader>e',
      function()
        require('tfm').open()
      end,
      desc = 'TFM',
    },
    {
      '<leader>mh',
      function()
        local tfm = require 'tfm'
        tfm.open(nil, tfm.OPEN_MODE.split)
      end,
      desc = 'TFM - horizonal split',
    },
    {
      '<leader>mv',
      function()
        local tfm = require 'tfm'
        tfm.open(nil, tfm.OPEN_MODE.vsplit)
      end,
      desc = 'TFM - vertical split',
    },
    {
      '<leader>mt',
      function()
        local tfm = require 'tfm'
        tfm.open(nil, tfm.OPEN_MODE.tabedit)
      end,
      desc = 'TFM - new tab',
    },
  },
}
