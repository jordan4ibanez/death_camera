--delay for camera initialization
local camera_ok = false
minetest.after(2, function()
	camera_ok = true
end)
--take screenshot on death
minetest.register_on_death(function()
	if camera_ok == true then
		minetest.take_screenshot()
	end
end)
