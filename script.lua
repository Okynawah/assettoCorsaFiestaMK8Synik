if car.isAIControlled then
  return nil
end

local counter = 0

function script.update(dt)
	local data = ac.accessCarPhysics()
	
--- ENGINE START STOP
    if not car.extraA then
		data.rpm = 0
		counter = 0
	  elseif counter < 1.55 then
		if counter < 0.5 then
		  data.rpm = 0
		else
		  data.gas = 0.6
		end
		counter = counter + dt
    end
end


