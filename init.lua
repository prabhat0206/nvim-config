vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd.highlight('DiagnosticUnderlineError guisp=#ff0000 gui=undercurl')

require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

