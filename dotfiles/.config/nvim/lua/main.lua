utils = require("utils")
require("plugins")
general_config = require("config.general")

general_config.init()
require('config.lsp')

if utils.file_exists("./project_configs.lua") then
  require("project_configs")
end
