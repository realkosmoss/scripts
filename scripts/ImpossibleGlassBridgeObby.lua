local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kosmos HUB", "Ocean")
local Tab = Window:NewTab("Troll")
local Section = Tab:NewSection("Troll")
Section:NewButton("Correct Path ESP", "Correct Path ESP", function()
    for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("BasePart") then
       if v.CanCollide == true then
       v.Color = Color3.fromRGB(0, 255, 0)
       else
     v.Color = Color3.fromRGB(255, 0, 0)
       end
   end
   end
end)
Section:NewButton("Walk On Fake Blocks", "makes fake blocks collidable", function()
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("BasePart") and v.CanCollide == false then
       v.CanCollide = true
       v.Color = Color3.fromRGB(255, 0, 0)
       
   end
end

spawn(function()
   while true do
       task.wait()
for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       v:Destroy()
   end
end
end
end)
end)
Section:NewButton("remove gamepasses", "yes", function()
    for i, v in pairs(game:GetService("Workspace").Pads:GetDescendants()) do -- remove gamepass spinners
   if v:IsA("Model") then
       v.Parent = game.Lighting
   end
end
game:GetService("Workspace")["Become Squid Front Man"].Parent = game.Lighting -- remove become front man gamepass
game:GetService("Workspace")["Become Squid Game Guard"].Parent = game.Lighting -- remove become guard gamepass
game:GetService("Players").LocalPlayer.PlayerGui.Gamepass.Enabled = false -- remove gamepass gui
end)


-- Farming
local Tab = Window:NewTab("Farming")
local Section = Tab:NewSection("Farming")
Section:NewToggle("Auto Win", "Farm", function(state)
    if state then
_G.autoObby = true -- change to false to toggle loop
while _G.autoObby and wait(3.1) do
   local Finish = game:GetService("Workspace")["Glass Bridge"].Finish:FindFirstChild("TouchInterest", true).Parent
   local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
   firetouchinterest(pRoot, Finish, 0)
   firetouchinterest(pRoot, Finish, 1)
end
    else
        _G.autoObby = false
    end
end)
