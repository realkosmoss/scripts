local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realkosmoss/scripts/main/KavoUI.lua"))()
local Window = Library.CreateLib("Cart Ride Delivery Service", "Midnight")
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
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(63.97468948364258, 3.698439121246338, 11.477912902832031))
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
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-3.0212841033935547, 4.734227180480957, 13.165114402770996))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-1.3966846466064453, 4.06813907623291, 31.635602951049805))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-1.3469899892807007, 4.060635566711426, 50.01264953613281))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-126.27547454833984, 3.8294615745544434, 114.81132507324219))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-156.7833709716797, 20.875377655029297, 98.78329467773438))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-152.88888549804688, 34.285064697265625, 128.24034118652344))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-288.895263671875, 59.5092658996582, 195.38104248046875))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-289.75604248046875, 108.03062438964844, 195.10247802734375))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-373.15716552734375, 156.4287872314453, 204.52667236328125))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(-453.1504211425781, 117.58441162109375, 279.8673400878906))
            wait(1)
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(654.7444458007812, 248.72882080078125, 469.8206481933594))
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
            game:GetService("Workspace").Cars[vehicle.Name]:SetPrimaryPartCFrame(CFrame.new(654.7444458007812, 248.72882080078125, 469.8206481933594))
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
