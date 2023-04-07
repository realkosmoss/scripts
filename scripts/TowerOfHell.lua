local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realkosmoss/scripts/main/KavoUI.lua"))()
local Window = Library.CreateLib("Tower Of Hell", "Midnight")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")
local CreditsTab = Window:NewTab("Credits")
local CreditSection = CreditsTab:NewSection("Credits")
MainSection:NewButton("Win Teleport", "Teleports To Top", function()
    game.Players.LocalPlayer.Character:PivotTo(workspace.tower.finishes.Finish:GetPivot())
end)
MainSection:NewButton("Bypass Anticheat", "Bypasses Anticheat", function()
        local reg = getreg()
 
    for i, Function in next, reg do
        if type(Function) == 'function' then
            local info = getinfo(Function)
 
            if info.name == 'kick' then
                if (hookfunction(info.func, function(...)end)) then
                    print'succesfully hooked kick'
                else
                    print'failed to hook kick'
                end
            end
        end
    end
    local playerscripts = game:GetService'Players'.LocalPlayer.PlayerScripts
 
    local script1 = playerscripts.LocalScript
    local script2 = playerscripts.LocalScript2
 
    local script1signal = script1.Changed
    local script2signal = script2.Changed
 
    for i, connection in next, getconnections(script1signal) do
        connection:Disable()
    end
    for i, connection in next, getconnections(script2signal) do
        connection:Disable()
    end
 
    script1:Destroy()
    script2:Destroy()
end)
MainSection:NewButton("Give Items", "Gives All Items", function()
        for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if e:IsA("Tool") then
        e:Destroy()
        end
        end
        wait() 
        for _,v in pairs(game.ReplicatedStorage.Gear:GetDescendants()) do
        if v:IsA("Tool") then
        local CloneThings = v:Clone()
        wait()
        CloneThings.Parent = game.Players.LocalPlayer.Backpack
 
        end
        end
end)
MainSection:NewButton("Remove KillParts", "Removes KillParts", function()
        for i,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
        if v:IsA("BoolValue") and v.Name == "kills" then
            v.Parent:Destroy()
        end
    end
end)
PlayerSection:NewSlider("WalkSpeed", "Changes WalkSpeed", 500, 0, function(WalkSpeed) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
end)
PlayerSection:NewButton("Reset WalkSpeed", "Resets WalkSpeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
PlayerSection:NewSlider("JumpHeight", "Changes JumpPower", 500, 0, function(JumpHeight) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = JumpHeight
end)
PlayerSection:NewButton("Reset JumpHeight", "Resets JumpPower", function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
end)
CreditSection:NewLabel("Gui Made By Kosmos")
CreditSection:NewLabel("Discord = kosmos#0795")
CreditSection:NewLabel("Library = KavoUI")
CreditSection:NewButton("Youtube", "Copies My Youtube Link", function()
    setclipboard("https://www.youtube.com/channel/UC9PtiLSGAUn5L6f8OcKh24Q")
    wait(.2)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Youtube";
    Text = "Copied Youtube Link To Clipboard";
    Icon = "rbxassetid://57254792";
    Duration = 3;
})
end)
