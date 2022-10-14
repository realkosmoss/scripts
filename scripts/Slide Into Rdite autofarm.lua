while true do
wait(10)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5041.19482421875, -14121.47265625, -3000.751220703125)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5020.57421875, -14121.8662109375, -3012.02197265625)
wait(1)
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end
--shitty script by kosmos
