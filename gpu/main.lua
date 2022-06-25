function lovr.load()
  print("Renderer:", lovr.graphics.getDevice().renderer) --> 'vulkan'

  buffer = lovr.graphics.newBuffer(1000, 'floats')
  print("Create a buffer:", buffer)

  for k,v in pairs(lovr.graphics.getFeatures()) do
  	print("Feature:", k, v)
  end
  for k,v in pairs(lovr.graphics.getLimits()) do
  	if type(v) == "table" then
  		for k2,v2 in pairs(v) do
  			print("Limits:", k..":", k2, v2)
  		end
  	else
	  	print("Limits:", k, v)
	end
  end
end
