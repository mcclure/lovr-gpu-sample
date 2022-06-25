local groundSize = 1.7*3
local canopySize = 1.25
local trunkSize = 1.7/3
local trunkCount = 3
local z = -1

local groundColor = {0.75, 0.75, 0.75}
local canopyColor = {0,1,0}
local trunkColor= {1, 87/255, 51/255}

function lovr.draw(pass)
  pass:setColor(unpack(groundColor))
  pass:cube(0, -groundSize/2,                       z, groundSize)

  pass:setColor(unpack(trunkColor))
  pass:cube(0, trunkSize*(0.5+0),                   z, trunkSize)
  pass:cube(0, trunkSize*(0.5+1),                   z, trunkSize)
  pass:cube(0, trunkSize*(0.5+2),                   z, trunkSize)

  pass:setColor(unpack(canopyColor))
  pass:cube(0, trunkSize*trunkCount + canopySize/2, z, canopySize)
end
