local session = require('session_manager')

session.setup({
  autoload_mode = require('session_manager.config').AutoloadMode.Disabled
})
