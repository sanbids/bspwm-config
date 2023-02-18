local Animation = require('animation')
local duration = 1000 -- ms
local fps = 80 -- frames per second
local easing = require('animation.easing')
local i = 0

local function callback(fraction)
  i = i + 1
  print('frame ', i)
end

local animation = Animation(duration, fps, easing.line, callback)
animation:run()
