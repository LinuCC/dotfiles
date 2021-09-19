local M = {}

function M.makeScratch()
  api.nvim_command('enew') -- equivalent to :enew
end

return M
