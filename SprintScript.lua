local mouse = game.Players.LocalPlayer:GetMouse()
local running = false

function getTool()	
	for _, kid in ipairs(script.Parent:GetChildren()) do
		if kid.className == "Tool" then return kid end
	end
	return nil
end


mouse.KeyDown:connect(function (key) -- Run function
	key = string.lower(key)
	if string.byte(key) == 48 then
		running = true
		local keyConnection = mouse.KeyUp:connect(function (key)
			if string.byte(key) == 48 then
				running = false
			end
		end)
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
			wait()
		end
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
		repeat wait () until running == false
		keyConnection:disconnect()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
			wait()
		end
	end
end)
