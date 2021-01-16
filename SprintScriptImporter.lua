-- This is what to put in Workspace
function onPlayerEntered(player)
	repeat wait () until player.Character ~= nil
	local s = script.SprintScript:clone()
	s.Parent = player.Character
	s.Disabled = false
	player.CharacterAdded:connect(function (char)
		local s = script.SprintScript:clone()
		s.Parent = char
		s.Disabled = false		
	end)
end

game.Players.PlayerAdded:connect(onPlayerEntered)

-- Add a Local script, and put the code from the file or from this repository called SprintScript
