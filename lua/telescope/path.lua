local log = require('telescope.log')

local path = {}

local function_is_deprecated = function(name, new_name, err)
  error('telescope.' .. name .. ' is deprecated. Use plenary.' .. new_name
    .. ' instead')
end

-- TODO: Can we use vim.loop for this?
path.separator = package.config:sub(1, 1)
path.home = vim.fn.expand("~")

path.make_relative = function()
  function_is_deprecated('make_relative', 'make_relative')
end

path.shorten = function()
  function_is_deprecated('shorten', 'shorten')
end

path.normalize = function()
  -- print('DEPRECATED')
  function_is_deprecated('normalize', 'normalize')
end

path.read_file = function()
  function_is_deprecated('read_file', 'read')
end

path.read_file_async = function()
  function_is_deprecated('read_file_async', 'read_async')
end

return path
