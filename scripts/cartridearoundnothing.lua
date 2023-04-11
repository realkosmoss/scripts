local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realkosmoss/scripts/main/KavoUI.lua"))()
local Window = Library.CreateLib("Cart Ride Around Nothing", "Midnight")
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")
local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")
local VehicleTab = Window:NewTab("Vehicle")
local VehicleSection = VehicleTab:NewSection("Vehicle Teleports")
local TrollTab = Window:NewTab("Troll")
local TrollSection = TrollTab:NewSection("Troll Features")


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
local function teleportToAfterSpiral()
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
	local newPosition699 = CFrame.new(-37.824745178222656, 36.274837493896484, 396.5962829589844) * CFrame.Angles(0, math.rad(-90), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end

local function teleportToFunThing()
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
	local newPosition699 = CFrame.new(320.91229248046875, 40.21017837524414, 184.35092163085938) * CFrame.Angles(0, math.rad(90), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end

local function teleportToCrossing()
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
	local newPosition699 = CFrame.new(342.9800109863281, 84.47254180908203, -140.9613494873047) * CFrame.Angles(0, math.rad(90), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end

local function handleDropdownSelection(currentOption)
	if currentOption == "Teleport To After Spiral" then
		teleportToAfterSpiral()
	elseif currentOption == "Teleport To Fun Thing" then
		teleportToFunThing()
	elseif currentOption == "Teleport To Crossing" then
		teleportToCrossing()
	end
end

VehicleSection:NewDropdown("Teleport To...", "Select a location", {"Teleport To After Spiral", "Teleport To Fun Thing", "Teleport To Crossing"}, handleDropdownSelection)
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
	local newPosition6999 = CFrame.new(-430.9983825683594, 163.68325805664062, 103.4158935546875) * CFrame.Angles(0, math.rad(90), 0)
	car:SetPrimaryPartCFrame(newPosition6999)
	wait(2)
	local newPosition69999 = CFrame.new(-431.0782775878906, 163.7175750732422, 131.6795196533203) * CFrame.Angles(0, math.rad(90), 0)
    car:SetPrimaryPartCFrame(newPosition69999)
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
	local newPosition6999 = CFrame.new(-238.6940155029297, 116.67147827148438, -180.28646850585938)
	car:SetPrimaryPartCFrame(newPosition6999)
	wait(0.5)
	car:SetPrimaryPartCFrame(newPosition6999)
	wait(0.5)
	car:SetPrimaryPartCFrame(newPosition6999)
	wait(1)
	local newPosition69999 = CFrame.new(-211.93057250976562, 115.81063842773438, -181.1710968017578)
    car:SetPrimaryPartCFrame(newPosition69999)
end)


--checkpoint2 things
--teleports
local function Checkpoint2SpinningThing()
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
	local newPosition699 = CFrame.new(49.4547119140625, 2.845034599304199, -301.1105651855469) * CFrame.Angles(0, math.rad(0), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end
local function OutsideBox()
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
	local newPosition699 = CFrame.new(521.883544921875, 3.768202066421509, 369.0432434082031) * CFrame.Angles(0, math.rad(180), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end
local function DoorsInsideBox()
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
	local newPosition699 = CFrame.new(282.0410461425781, 3.774505138397217, 712.1288452148438) * CFrame.Angles(0, math.rad(-90), 0)
	car:SetPrimaryPartCFrame(newPosition699)
end

local function handleDropdownSelection2(currentOption2)
	if currentOption2 == "Teleport To Spinning Thing" then
		Checkpoint2SpinningThing()
	elseif currentOption2 == "Teleport Outside Box" then
		OutsideBox()
	elseif currentOption2 == "Teleport To Doors Inside Box" then
		DoorsInsideBox()
	end
end

--vehicle checkpoint 2 section
VehicleSection:NewLabel("Checkpoint 2 Teleports")
VehicleSection:NewDropdown("Teleport To...", "This Is For Checkpoint 2", {"Teleport To Spinning Thing", "Teleport Outside Box", "Teleport To Doors Inside Box"}, handleDropdownSelection2)




-- TrollSection
TrollSection:NewButton("Explode A Random Player", "Explodes A Random Player", function()
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
TrollSection:NewButton("Teleport To Cart Spawn", "Teleports To Cart Spawn", function()
    local spawnPos = Vector3.new(32.27077865600586, 3.0075292587280273, 33.57514953613281)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(spawnPos)
    wait(0.3)
    keypress(0x45)
    wait(0.5)
    keyrelease(0x45)
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.820213317871094, 6.945043087005615, 26.929059982299805)
end)


-- specific player teleport
local function teleportCartToPosition(position)
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local seat = humanoid.SeatPart or humanoid.Seated
    while not seat:IsDescendantOf(game:GetService("Workspace").Carts) do
        wait()
    end
    local cart = seat:FindFirstAncestorOfClass("Model")
    local primaryPart = cart.PrimaryPart
    primaryPart.CFrame = CFrame.new(position)
end
local players = game:GetService("Players")
local dropdownOptions = {}
for _, player in ipairs(players:GetPlayers()) do
    table.insert(dropdownOptions, player.Name)
end
TrollSection:NewDropdown("Teleport to Player", "Select a player to teleport to (FOR VEHICLE)", dropdownOptions, function(selectedOption)
    local selectedPlayer = players:FindFirstChild(selectedOption, true)

    if selectedPlayer then
        -- Get the position of the selected player's PrimaryPart
        local position = selectedPlayer.Character.PrimaryPart.Position
        teleportCartToPosition(position)
    end
end)

-- Update dropdown menu when players join or leave the game
players.PlayerAdded:Connect(function(player)
    table.insert(dropdownOptions, player.Name)
end)

players.PlayerRemoving:Connect(function(player)
    for i, playerName in ipairs(dropdownOptions) do
        if playerName == player.Name then
            table.remove(dropdownOptions, i)
            break
        end
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
