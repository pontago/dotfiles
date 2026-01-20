if vim.loader then vim.loader.enable() end

require("config.lazy")
require("config.base")
require("config.lsp")
require("config.keymaps")
