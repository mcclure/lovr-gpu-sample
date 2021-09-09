function lovr.load()
  print(lovr.graphics.getHardware().renderer) --> 'vulkan'
  buffer = lovr.graphics.newBuffer(1000, 'floats')
  print(buffer)
end
