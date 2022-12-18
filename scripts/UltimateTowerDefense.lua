local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ultimate Tower Defense", "DarkTheme")
local Tab = Window:NewTab("Farms")
local Section = Tab:NewSection("Farms")
Section:NewButton("Remove Catched Fish GUI", "yes", function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainFrames.CaughtFish:Destroy()
end)
Section:NewToggle("Fish Farm", "lolol", function(state)
    if state then
    _G.loop = true
    while _G.loop do
    game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerCatchFish:FireServer()
   wait(0.5)
end
    else
        _G.loop = false
    while _G.loop do
    game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerCatchFish:FireServer()
   wait(0.5)
end
    end
end)
Section:NewButton("Delete Crate GUI", "yes", function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainFrames.CrateReward:Destroy()
    game:GetService("Players").LocalPlayer.PlayerGui.MessagesGui:Destroy()
end)
Section:NewToggle("Auto Crates", "lolol", function(state)
    if state then
    _G.loop = true
    while _G.loop do
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerBuyTower:FireServer(unpack(args))
   wait(0.5)
end
    else
        _G.loop = false
    while _G.loop do
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerBuyTower:FireServer(unpack(args))
   wait(0.5)
end
    end
end)

-- really ugly code LMFAO pls no het ;()
