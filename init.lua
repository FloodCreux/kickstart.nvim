--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
require 'config.globals'

require 'config.keymaps'
require 'config.autocmds'
require 'config.options'
require 'config.lazy'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
