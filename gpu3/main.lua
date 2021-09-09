function lovr.load()
  lovr.graphics.setBackgroundColor(0x400080)
end

function lovr.draw(batch)
  local vertices = {
    {   0,  .3, 0 ; 1, 0, 0, 1 },
    {  .4, -.3, 0 ; 0, 1, 0, 1 },
    { -.4, -.3, 0 ; 0, 0, 1, 1 }
  }

  local format = {
    { 'position', 'vec3' },
    { 'color', 'vec4' }
  }

  local buffer = lovr.graphics.getBuffer(vertices, format)

  for i=1,100 do
    local t = i/100*math.pi*2
    local a = 10
    local x = math.sin(t)
    local y = math.cos(t)
    batch:mesh(buffer, 0, 1.7 + x, -1 + y)
  end
end
