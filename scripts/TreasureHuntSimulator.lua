local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Treasure Hunt Simulator", "Ocean")
local Tab = Window:NewTab("Farming")
local Section = Tab:NewSection("Farming")

local shouldstop = false
local allowrainbowchest = false -- fuck this shit do not work i dont hav e time to edit it eiother fuck of.

Section:NewButton("Allow Rainbow Chests", "yes", function()
    if allowrainbowchest then
        allowrainbowchest = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "Button",
            Text = "Disallowed Rainbow Chests!",
            Duration = 3
        })
    else
        allowrainbowchest = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "Button",
            Text = "Allowed Rainbow Chests!",
            Duration = 3
        })
    end
end)
allowonly1m = false
Section:NewButton("Only Allow 1M+ Chests", "yes", function()
    if allowonly1m then
        allowonly1m = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "Button",
            Text = "Disallowed Only 1M+ Chests!",
            Duration = 3
        })
    else
        allowonly1m = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "Button",
            Text = "Allowed Only 1M+ Chests!",
            Duration = 3
        })
    end
end)
Section:NewButton("farm 1 chest", "yes", function()
    local lp = game.Players.LocalPlayer
    if lp then
        local backpack = lp:FindFirstChild("Backpack")
        for _, tool in ipairs(backpack:GetChildren()) do
            toolname = tool.Name
            tool.Parent = workspace:WaitForChild(lp.Name)
        end
        if not toolname then
            tool = workspace:WaitForChild(lp.Name):FindFirstChildOfClass("Tool")
            toolname = tool.Name
        end
    end
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local sandBlocks = game:GetService("Workspace").SandBlocks:GetChildren()
    local closestBlock = nil
    local closestDistance = math.huge
    local oldclosestpos = nil
    for _, block in ipairs(sandBlocks) do
        local distance = (block.Position - humanoidRootPart.Position).magnitude
        if distance < closestDistance and block:FindFirstChild("Chest") then
            if allowonly1m and block.Reward.Value >= 1000000 then
                if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                    continue
                end
                closestBlock = block
                closestDistance = distance
            elseif not allowonly1m then
                if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                    continue
                end
                closestBlock = block
                closestDistance = distance
            end
        end
    end
    
    if closestBlock then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Crate",
            Text = "Reward: " .. tostring(closestBlock.Reward.Value) .. "!",
            Duration = 2
        })
        while true do
            humanoidRootPart.CFrame = CFrame.new(closestBlock.Position)
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolname).RemoteClick:FireServer(workspace:WaitForChild("SandBlocks"):WaitForChild(closestBlock.Name))
            wait(0.1)
            local model = closestBlock:FindFirstChild("Chest")
            if not model or shouldstop then -- theres better ways but fuck off
                break
            end    
        end
    end
end)
Section:NewButton("loop farm chest", "yes", function()
    local lp = game.Players.LocalPlayer
    repeat
        if shouldstop then
            return
        end
        if lp then
            local backpack = lp:FindFirstChild("Backpack")
            for _, tool in ipairs(backpack:GetChildren()) do
                toolname = tool.Name
                tool.Parent = workspace:WaitForChild(lp.Name)
            end
            if not toolname then
                tool = workspace:WaitForChild(lp.Name):FindFirstChildOfClass("Tool")
                toolname = tool.Name
            end
        end
        
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local sandBlocks = game:GetService("Workspace").SandBlocks:GetChildren()
        local closestBlock = nil
        local closestDistance = math.huge
        local oldclosestpos = nil
        for _, block in ipairs(sandBlocks) do
            local distance = (block.Position - humanoidRootPart.Position).magnitude
            if distance < closestDistance and block:FindFirstChild("Chest") then
                if allowonly1m and block.Reward.Value >= 1000000 then
                    if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                        continue
                    end
                    closestBlock = block
                    closestDistance = distance
                elseif not allowonly1m then
                    if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                        continue
                    end
                    closestBlock = block
                    closestDistance = distance
                end
            end
        end
        
        if closestBlock then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Crate",
                Text = "Reward: " .. tostring(closestBlock.Reward.Value) .. "!",
                Duration = 3
            })
            while true do
                humanoidRootPart.CFrame = CFrame.new(closestBlock.Position)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolname).RemoteClick:FireServer(workspace:WaitForChild("SandBlocks"):WaitForChild(closestBlock.Name))
                wait(0.1)
                local model = closestBlock:FindFirstChild("Chest")
                if not model or shouldstop then
                    break
                end
            end
        end
        wait(0.05)
    until shouldstop == true
end)
Section:NewButton("stop farm", "yes", function()
    shouldstop = not shouldstop
    if shouldstop then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Stop Farm",
            Text = "Stopped Farm",
            Duration = 2
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Stop Farm",
            Text = "Allowed Farm",
            Duration = 2
        })
    end
end)
shouldstop2 = false
Section:NewButton("Mine Tunnel Loop", "yes", function()
    local lp = game.Players.LocalPlayer
    repeat
        if shouldstop2 then
            return
        end
        if lp then
            local backpack = lp:FindFirstChild("Backpack")
            for _, tool in ipairs(backpack:GetChildren()) do
                toolname = tool.Name
                tool.Parent = workspace:WaitForChild(lp.Name)
            end
            if not toolname then
                tool = workspace:WaitForChild(lp.Name):FindFirstChildOfClass("Tool")
                toolname = tool.Name
            end
        end

        local character = lp.Character or lp.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local raycastParams = RaycastParams.new()
        raycastParams.FilterType = Enum.RaycastFilterType.Whitelist
        raycastParams.FilterDescendantsInstances = {game:GetService("Workspace").SandBlocks}
        
        local function findClosestSandBlock()
            local result = workspace:Raycast(humanoidRootPart.Position, Vector3.new(0, -7, 0), raycastParams)
            if result and result.Instance then
                return result.Instance
            end
            return nil
        end
        closestBlock = findClosestSandBlock()
        if closestBlock then
            while true do
                humanoidRootPart.CFrame = CFrame.new(closestBlock.Position + Vector3.new(0, 1, 0))
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolname).RemoteClick:FireServer(workspace:WaitForChild("SandBlocks"):WaitForChild(closestBlock.Name))
                wait(0.125)
                local model = closestBlock:FindFirstChild("Health")
                if not model or shouldstop2 then
                    break
                end
            end
        end
        wait(0.05)
    until shouldstop2 == true
end)

Section:NewButton("Stop Loop", "yes", function()
    shouldstop2 = true
    wait(0.125)
    shouldstop2 = false
end)
Section:NewButton("Sell 25X", "yes", function()
    local character = game:GetService("Players").LocalPlayer.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    oldpos = humanoidRootPart.CFrame.Position
    humanoidRootPart.CFrame = CFrame.new(-243, 10, -281)
    wait(0.25)
    humanoidRootPart.CFrame = CFrame.new(oldpos)
end)


local CrateTab = Window:NewTab("Crates")
local CrateSection = CrateTab:NewSection("Crates")
CrateSection:NewButton("Buy Open Tier4 Hat Crate", "yes", function()
    local args = {
        [1] = game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier4Hat"),
        [2] = "coolkosmos",
        [3] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyCrate"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SendOpenCrate"):FireServer(game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier4Hat"))    
end)
CrateSection:NewButton("Buy Open Tier5 Hat Crate", "yes", function()
    local args = {
        [1] = game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier5Hat"),
        [2] = "coolkosmos",
        [3] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyCrate"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SendOpenCrate"):FireServer(game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier5Hat"))    
end)
CrateSection:NewButton("Buy Open Tier6 Hat Crate", "yes", function()
    local args = {
        [1] = game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier6Hat"),
        [2] = "coolkosmos",
        [3] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyCrate"):FireServer(unpack(args))
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SendOpenCrate"):FireServer(game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("Tier6Hat"))    
end)

local RebirthTab = Window:NewTab("Rebirth")
local RebirthSection = RebirthTab:NewSection("Rebirth")
RebirthSection:NewButton("Rebirth", "Rebirth", function()
    local lp = game.Players.LocalPlayer
    coins = lp.leaderstats.Coins.Value
    rebirthcoins = lp.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(",", "")
    print(coins, rebirthcoins)
    if coins > tonumber(rebirthcoins) then
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Rebirth",
            Text = "Successfully rebirthed!",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Rebirth",
            Text = "Not enough Coins.! Need: " .. rebirthcoins .. "!",
            Duration = 5
        })
    end
end)
RebirthSection:NewButton("loop rebirth farm", "yes", function()
    local lp = game.Players.LocalPlayer
    repeat
        if shouldstop then
            return
        end
        if lp then
            local backpack = lp:FindFirstChild("Backpack")
            for _, tool in ipairs(backpack:GetChildren()) do
                toolname = tool.Name
                tool.Parent = workspace:WaitForChild(lp.Name)
            end
            if not toolname then
                tool = workspace:WaitForChild(lp.Name):FindFirstChildOfClass("Tool")
                toolname = tool.Name
            end
        end
        
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local sandBlocks = game:GetService("Workspace").SandBlocks:GetChildren()
        local closestBlock = nil
        local closestDistance = math.huge
        local oldclosestpos = nil
        for _, block in ipairs(sandBlocks) do
            local distance = (block.Position - humanoidRootPart.Position).magnitude
            if distance < closestDistance and block:FindFirstChild("Chest") then
                if allowonly1m and block.Reward.Value >= 1000000 then
                    if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                        continue
                    end
                    closestBlock = block
                    closestDistance = distance
                elseif not allowonly1m then
                    if not allowrainbowchest and block.Mat.Value == "Rainbow Chest" then
                        continue
                    end
                    closestBlock = block
                    closestDistance = distance
                end
            end
        end
        
        if closestBlock then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Crate",
                Text = "Reward: " .. tostring(closestBlock.Reward.Value) .. "!",
                Duration = 3
            })
            while true do
                humanoidRootPart.CFrame = CFrame.new(closestBlock.Position)
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolname).RemoteClick:FireServer(workspace:WaitForChild("SandBlocks"):WaitForChild(closestBlock.Name))
                wait(0.1)
                local model = closestBlock:FindFirstChild("Chest")
                -- check if can rebirth
                coins = lp.leaderstats.Coins.Value
                rebirthcoins = lp.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(",", "")
                if coins > tonumber(rebirthcoins) then
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer()
                end
                -- carry on lol
                if not model or shouldstop then
                    break
                end
            end
        end
        coins = lp.leaderstats.Coins.Value
        rebirthcoins = lp.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(",", "")
        if coins > tonumber(rebirthcoins) then
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer()
        end
        wait(0.5)
    until shouldstop == true
end)
RebirthSection:NewButton("stop farm", "yes", function()
    shouldstop = not shouldstop
    if shouldstop then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Stop Farm",
            Text = "Stopped Farm",
            Duration = 2
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Stop Farm",
            Text = "Allowed Farm",
            Duration = 2
        })
    end
end)
