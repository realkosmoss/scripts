local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realkosmoss/scripts/main/KavoUI.lua"))()
local Window = Library.CreateLib("Cart Ride Around Nothing", "Midnight")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")
local VehicleTab = Window:NewTab("Vehicle")
local VehicleSection = VehicleTab:NewSection("Vehicle Teleports")

-- main section
MainSection:NewButton("Remove Police Track", "Removes The Police Spawn", function()
    game:GetService("Workspace").SpeedLimitTrack:Destroy()
end)
MainSection:NewButton("AutoWin (Dont Move)", "AutoWins", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430.898926, 165.25, 101.645676, 1, 1.51719295e-08, -1.24212969e-14, -1.51719295e-08, 1, -1.14675147e-09, 1.24038988e-14, 1.14675147e-09, 1)
wait(4.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430.898529, 163.273926, 131.145554, 1, -2.85942061e-08, 2.0407586e-07, 2.85942079e-08, 1, -1.07927356e-08, -2.0407586e-07, 1.07927409e-08, 1)
wait(10)
game.Players.LocalPlayer.Character.Humanoid.Sit = true
wait(33)
game.Players.LocalPlayer.Character.Humanoid.Sit = false
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236.98023986816406, 116.65403747558594, -179.72071838378906)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(1.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.6)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-215.5883026123047, 117.1758041381836, -180.16421508789062)
wait(10)
game.Players.LocalPlayer.Character.Humanoid.Sit = true
wait(35)
game.Players.LocalPlayer.Character.Humanoid.Sit = false
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-166.04147338867188, 93.76612854003906, -174.07489013671875)
end)

-- vehicle section
local primaryPart

VehicleSection:NewButton("Check Vehicle", "Checks If In A Vehicle And Primary Part", function()
    print("Checking for vehicle...")
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Carts) do
        wait()
    end
    local vehicle = seat:FindFirstAncestorOfClass("Model")
    if vehicle then
        print("Vehicle found:", vehicle.Name)
        primaryPart = vehicle.PrimaryPart
        if primaryPart then
            print("Primary part path:", primaryPart:GetFullName())
        else
            print("No primary part found in vehicle")
        end
    else
        print("Not in a vehicle")
    end
end)
VehicleSection:NewButton("Teleport To Checkpoint 2", "Teleports To Checkpoint #2", function()
-- Check for the car and get its primary part
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local seat = humanoid.SeatPart or humanoid.Seated
while not seat:IsDescendantOf(game:GetService("Workspace").Carts) do
    wait()
end
local car = seat:FindFirstAncestorOfClass("Model")
local primaryPart = car.PrimaryPart
local newPosition1 = Vector3.new(-431.31268310546875, 164.8525390625, 104.76657104492188)
car:SetPrimaryPartCFrame(CFrame.new(newPosition1))
wait(2)
local newPosition2 = Vector3.new(-431.3813171386719, 164.01992797851562, 130.28665161132812)
car:SetPrimaryPartCFrame(CFrame.new(newPosition2))
end)
VehicleSection:NewButton("Teleport To Checkpoint 3", "Teleports To Checkpoint #3", function()
-- Check for the car and get its primary part
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local seat = humanoid.SeatPart or humanoid.Seated
while not seat:IsDescendantOf(game:GetService("Workspace").Carts) do
    wait()
end
local car = seat:FindFirstAncestorOfClass("Model")
local primaryPart = car.PrimaryPart
local newPosition3 = Vector3.new(-237.2541046142578, 117.6214828491211, -179.75625610351562)
car:SetPrimaryPartCFrame(CFrame.new(newPosition3))
wait(2)
local newPosition4 = Vector3.new(-215.4148712158203, 115.43303680419922, -181.60116577148438)
car:SetPrimaryPartCFrame(CFrame.new(newPosition4))
end)
VehicleSection:NewLabel("Troll Features")
VehicleSection:NewButton("Explode A Random Player", "Explodes A Random Player", function()
    -- Check for the car and get its primary part
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Carts) do
        wait()
    end
    local car = seat:FindFirstAncestorOfClass("Model")
    local primaryPart = car.PrimaryPart
    -- Rename the car to MYCARTRENAMED
    car.Name = "MYCARTRENAMED"
    
    -- Define the allow list of carts
    local allowList = {
        "Cart",
        "RaceCart",
        "CartXL",
    }

    -- Get a list of all the carts in the workspace that are on the allow list
    local carts = {}
    for _, cart in ipairs(game:GetService("Workspace").Carts:GetChildren()) do
        if table.find(allowList, cart.Name) then
            table.insert(carts, cart)
        end
    end
    -- Proceed only if there are carts on the allow list
    if #carts > 0 then
        -- Pick a random cart from the list
        local randomCart = carts[math.random(1, #carts)]
        
        -- Set the primary part of the car to the position of the random cart
        primaryPart.CFrame = randomCart.PrimaryPart.CFrame
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.6481484174728394, 3.007530927658081, 38.16567611694336)
    end
end)
VehicleSection:NewButton("Teleport To Cart Spawn", "Teleports To Cart Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32.27077865600586, 3.0075292587280273, 33.57514953613281)
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
