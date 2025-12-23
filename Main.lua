local placeId = game.PlaceId
local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId
if placeId == 7449423635 or placeId == 2753915549 or placeId == 4442272183 or placeId == 122478697296975 or UniverseID == 994732206 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mnhatrealz/-/refs/heads/main/BloxFruit.lua"))()
elseif placeId == 111989938562194 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mnhatrealz/-/refs/heads/main/BrainrotEvolution.lua"))()
end
