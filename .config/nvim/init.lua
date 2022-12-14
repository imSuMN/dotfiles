require('isumn.base')
require('isumn.highlights')
require('isumn.maps')
require('isumn.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('isumn.macos')
end
if is_win then
  require('isumn.windows')
end
