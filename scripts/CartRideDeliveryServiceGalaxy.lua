local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realkosmoss/scripts/main/KavoUI.lua"))()
local Window = Library.CreateLib("Cart Ride Around Nothing Galaxy", "Midnight")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")
local VehicleTab = Window:NewTab("Vehicle")
local VehicleSection = VehicleTab:NewSection("Vehicle Teleports")

-- main section
MainSection:NewToggle("FakeBoost", "Fe FakeBoost", function(boost)
    if boost then
        game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedStorageShared"):WaitForChild("RemoteEvents"):WaitForChild("CarControl_SetBoostFxState"):FireServer(true)
    else
        game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedStorageShared"):WaitForChild("RemoteEvents"):WaitForChild("CarControl_SetBoostFxState"):FireServer(false)
    end
end)


-- vehicle section
local primaryPart

VehicleSection:NewButton("Spawn", "Teleports To Spawn", function()
    print("Checking for vehicle...")
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Cars) do
        wait()
    end
    local vehicle = seat:FindFirstAncestorOfClass("Model")
    if vehicle then
        print("Vehicle found:", vehicle.Name)
        primaryPart = vehicle.PrimaryPart
        if primaryPart then
            print("Primary part path:", primaryPart:GetFullName())
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-741.553955078125, 3.593796730041504, -125.02368927001953))
            print("Vehicle teleported to checkpoint")
        else
            print("No primary part found in vehicle")
        end
    else
        print("Not in a vehicle")
    end
end)
VehicleSection:NewButton("Grab All Packages", "Grabs All Packages And Sells", function()
    print("Checking for vehicle...")
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Cars) do
        wait()
    end
    local vehicle = seat:FindFirstAncestorOfClass("Model")
    if vehicle then
        print("Vehicle found:", vehicle.Name)
        primaryPart = vehicle.PrimaryPart
        if primaryPart then
            print("Primary part path:", primaryPart:GetFullName())
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-783.989013671875, 3.697122097015381, -119.10013580322266))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-785.1329345703125, 3.3211467266082764, -104.24089050292969))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-784.58642578125, 3.3383612632751465, -93.43277740478516))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-782.8997802734375, -5.398785591125488, 53.26298522949219))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-782.3071899414062, -5.500514507293701, 18.123401641845703))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-120.97999572753906, 237.50299072265625, -409.14398193359375))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-255.50238037109375, 253.0349884033203, -91.59801483154297))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-182.50755310058594, 434.4010314941406, -59.02915954589844))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(401.4114990234375, 349.7209167480469, -329.93621826171875))
        else
            print("No primary part found in vehicle")
        end
    else
        print("Not in a vehicle")
    end
end)
VehicleSection:NewButton("Drop Off", "Incase You Fall During Grab All Packages", function()
    print("Checking for vehicle...")
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Cars) do
        wait()
    end
    local vehicle = seat:FindFirstAncestorOfClass("Model")
    if vehicle then
        print("Vehicle found:", vehicle.Name)
        primaryPart = vehicle.PrimaryPart
        if primaryPart then
            print("Primary part path:", primaryPart:GetFullName())
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(401.4114990234375, 349.7209167480469, -329.93621826171875))
            print("Vehicle teleported to checkpoint")
        else
            print("No primary part found in vehicle")
        end
    else
        print("Not in a vehicle")
    end
end)
VehicleSection:NewButton("Win Teleport NOT WORKING", "Teleports To Win", function()
    print("Checking for vehicle...")
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Cars) do
        wait()
    end
    local vehicle = seat:FindFirstAncestorOfClass("Model")
    if vehicle then
        print("Vehicle found:", vehicle.Name)
        primaryPart = vehicle.PrimaryPart
        if primaryPart then
            print("Primary part path:", primaryPart:GetFullName())
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new())
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-95.6637954711914, 341.7261962890625, -726.3900756835938))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(126.94833374023438, 546.5359497070312, 329.653564453125))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(286.6631774902344, 604.7156372070312, 520.7548828125))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(398.83221435546875, 431.70538330078125, -308.1941223144531))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(915.7589721679688, 386.7443542480469, -284.8589172363281))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(947.85205078125, 388.3321533203125, -270.669677734375))
            print("Vehicle teleported to checkpoint")
        else
            print("No primary part found in vehicle")
        end
    else
        print("Not in a vehicle")
    end
end)




-- player section
PlayerSection:NewSlider("WalkSpeed", "Changes Walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("JumpHeight", "Changes JumpHeight", 500, 0, function(j) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = j
end)
PlayerSection:NewButton("Reset Walkspeed", "Resets Walkspeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
PlayerSection:NewButton("Reset JumpHeight", "Resets JumpHeight", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 50
end)


--// credits
local CreditsTab = Window:NewTab("Credits")
local CreditSection = CreditsTab:NewSection("Credits")
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
