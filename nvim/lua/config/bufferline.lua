local highlights = require('rose-pine.plugins.bufferline')

require('bufferline').setup {
  highlights = highlights,
  options = {
    mode = "tabs", -- set to "tabs" to only show tabpages instead
    show_buffer_close_icons = false,
    always_show_bufferline = false
  }
}
