local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sled Simulator AutoFarm", "DarkTheme")
local Tab = Window:NewTab("Farms")
local Section = Tab:NewSection("Farms")
Section:NewButton("Remove Annoying GUI", "yes", function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.MainFrame.PopupFrame:Destroy()
end)
Section:NewToggle("Sled Farm (takes 1 min to let u slide!)", "lolol", function(state)
    if state then
    _G.loop = true
    while _G.loop do
        game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.StartRaceEvent:FireServer()
        wait(60)
        game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.ClosedRacePopupEvent:FireServer()
   wait(0.5)
end
    else
        _G.loop = false
    while _G.loop do
        game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.StartRaceEvent:FireServer()
        wait(60)
        game:GetService("ReplicatedStorage").SledReplicatedStorage.Events.ClosedRacePopupEvent:FireServer()
   wait(0.5)
end
    end
end)
