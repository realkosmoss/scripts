-- Gui to Lua
-- Version: 3.2

-- Instances:

local CLETUSFUCKER = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local other = Instance.new("Frame")
local redrose = Instance.new("TextButton")
local blueberry = Instance.new("TextButton")
local main = Instance.new("Frame")
local christmas = Instance.new("TextButton")
local level1 = Instance.new("TextButton")
local level2 = Instance.new("TextButton")
local melon = Instance.new("TextButton")
local pineapples = Instance.new("TextButton")
local pumpkin = Instance.new("TextButton")
local mainbutton = Instance.new("TextButton")
local otherbutton = Instance.new("TextButton")
local CLETUSFUCKER_2 = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local openbutton = Instance.new("TextButton")

--Properties:

CLETUSFUCKER.Name = "CLETUS FUCKER"
CLETUSFUCKER.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

frame.Name = "frame"
frame.Parent = CLETUSFUCKER
frame.Active = true
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BackgroundTransparency = 1.000
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.514823377, 0, 0.623941779, 0)
frame.Size = UDim2.new(0, 419, 0, 220)

other.Name = "other"
other.Parent = frame
other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
other.Size = UDim2.new(0, 419, 0, 220)
other.Visible = false

redrose.Name = "redrose"
redrose.Parent = other
redrose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
redrose.Position = UDim2.new(0.0835322216, 0, 0.0545454547, 0)
redrose.Size = UDim2.new(0, 141, 0, 50)
redrose.Font = Enum.Font.SourceSans
redrose.Text = "RED ROSE"
redrose.TextColor3 = Color3.fromRGB(0, 0, 0)
redrose.TextSize = 14.000

blueberry.Name = "blueberry"
blueberry.Parent = other
blueberry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blueberry.Position = UDim2.new(0.584725559, 0, 0.0545454621, 0)
blueberry.Size = UDim2.new(0, 141, 0, 50)
blueberry.Font = Enum.Font.SourceSans
blueberry.Text = "BLUE BERRY "
blueberry.TextColor3 = Color3.fromRGB(0, 0, 0)
blueberry.TextSize = 14.000

main.Name = "main"
main.Parent = frame
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Size = UDim2.new(0, 419, 0, 220)

christmas.Name = "christmas"
christmas.Parent = main
christmas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
christmas.Position = UDim2.new(0.355608582, 0, 0.654545426, 0)
christmas.Size = UDim2.new(0, 106, 0, 50)
christmas.Font = Enum.Font.SourceSans
christmas.Text = "christmas tree"
christmas.TextColor3 = Color3.fromRGB(0, 0, 0)
christmas.TextSize = 14.000

level1.Name = "level1"
level1.Parent = main
level1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
level1.BorderColor3 = Color3.fromRGB(53, 6, 9)
level1.Position = UDim2.new(0.0598560795, 0, 0.654699981, 0)
level1.Size = UDim2.new(0, 95, 0, 50)
level1.Font = Enum.Font.SourceSans
level1.Text = "farming levels"
level1.TextColor3 = Color3.fromRGB(0, 0, 0)
level1.TextSize = 14.000

level2.Name = "level2"
level2.Parent = main
level2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
level2.BorderColor3 = Color3.fromRGB(53, 6, 9)
level2.Position = UDim2.new(0.691431999, 0, 0.657363713, 0)
level2.Size = UDim2.new(0, 95, 0, 50)
level2.Modal = true
level2.Font = Enum.Font.SourceSans
level2.Text = "economy levels"
level2.TextColor3 = Color3.fromRGB(0, 0, 0)
level2.TextSize = 14.000

melon.Name = "melon"
melon.Parent = main
melon.BackgroundColor3 = Color3.fromRGB(69, 255, 66)
melon.BorderColor3 = Color3.fromRGB(85, 170, 0)
melon.Position = UDim2.new(0.0603458919, 0, 0.130702898, 0)
melon.Size = UDim2.new(0, 163, 0, 50)
melon.Font = Enum.Font.SourceSans
melon.Text = "MELON SEEDS"
melon.TextColor3 = Color3.fromRGB(0, 0, 0)
melon.TextSize = 14.000

pineapples.Name = "pineapples"
pineapples.Parent = main
pineapples.BackgroundColor3 = Color3.fromRGB(255, 244, 88)
pineapples.BorderColor3 = Color3.fromRGB(255, 255, 127)
pineapples.Position = UDim2.new(0.243436754, 0, 0.386363626, 0)
pineapples.Size = UDim2.new(0, 200, 0, 50)
pineapples.Font = Enum.Font.SourceSans
pineapples.Text = "PINEAPPLE SEEDS"
pineapples.TextColor3 = Color3.fromRGB(0, 0, 0)
pineapples.TextSize = 14.000

pumpkin.Name = "pumpkin"
pumpkin.Parent = main
pumpkin.BackgroundColor3 = Color3.fromRGB(255, 163, 33)
pumpkin.BorderColor3 = Color3.fromRGB(255, 170, 0)
pumpkin.Position = UDim2.new(0.506166101, 0, 0.126678318, 0)
pumpkin.Size = UDim2.new(0, 173, 0, 50)
pumpkin.Font = Enum.Font.SourceSans
pumpkin.Text = "PUMPKIN SEEDS"
pumpkin.TextColor3 = Color3.fromRGB(0, 0, 0)
pumpkin.TextSize = 14.000

mainbutton.Name = "mainbutton"
mainbutton.Parent = frame
mainbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainbutton.Position = UDim2.new(0, 0, -0.227272734, 0)
mainbutton.Size = UDim2.new(0, 212, 0, 50)
mainbutton.Font = Enum.Font.SourceSans
mainbutton.Text = "MAIN"
mainbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
mainbutton.TextSize = 14.000

otherbutton.Name = "otherbutton"
otherbutton.Parent = frame
otherbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
otherbutton.Position = UDim2.new(0.505966604, 0, -0.227272734, 0)
otherbutton.Size = UDim2.new(0, 207, 0, 50)
otherbutton.Font = Enum.Font.SourceSans
otherbutton.Text = "OTHER"
otherbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
otherbutton.TextSize = 14.000

CLETUSFUCKER_2.Name = "CLETUSFUCKER"
CLETUSFUCKER_2.Parent = frame
CLETUSFUCKER_2.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
CLETUSFUCKER_2.BorderSizePixel = 0
CLETUSFUCKER_2.Position = UDim2.new(0, 0, -0.295454532, 0)
CLETUSFUCKER_2.Size = UDim2.new(0, 419, 0, 15)
CLETUSFUCKER_2.Font = Enum.Font.SourceSans
CLETUSFUCKER_2.Text = "CLETUS FUCKER"
CLETUSFUCKER_2.TextColor3 = Color3.fromRGB(0, 0, 0)
CLETUSFUCKER_2.TextSize = 14.000

close.Name = "close"
close.Parent = frame
close.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
close.BorderSizePixel = 0
close.Position = UDim2.new(0, 0, -0.295454532, 0)
close.Size = UDim2.new(0, 63, 0, 15)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

openbutton.Name = "openbutton"
openbutton.Parent = frame
openbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openbutton.Position = UDim2.new(1.24105012, 0, 0.854545474, 0)
openbutton.Size = UDim2.new(0, 99, 0, 100)
openbutton.Visible = false
openbutton.Font = Enum.Font.SourceSans
openbutton.Text = "OPEN"
openbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
openbutton.TextScaled = true
openbutton.TextSize = 14.000
openbutton.TextWrapped = true

-- Scripts:

local function QHVXMJ_fake_script() -- redrose.LocalScript 
	local script = Instance.new('LocalScript', redrose)

	script.Parent.Parent.redrose.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/czebRuZF'),true))()
	end)
end
coroutine.wrap(QHVXMJ_fake_script)()
local function SHBFYFK_fake_script() -- blueberry.LocalScript 
	local script = Instance.new('LocalScript', blueberry)

	script.Parent.Parent.redrose.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/B6CpBMzL'),true))()
	end)
end
coroutine.wrap(SHBFYFK_fake_script)()
local function YIWAV_fake_script() -- christmas.LocalScript 
	local script = Instance.new('LocalScript', christmas)

	script.Parent.Parent.christmas.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/rFgJsRcu'),true))()
	end)
end
coroutine.wrap(YIWAV_fake_script)()
local function HSOT_fake_script() -- level1.LocalScript 
	local script = Instance.new('LocalScript', level1)

	script.Parent.Parent.level1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/6Wrt1Fui'),true))()
	end)
end
coroutine.wrap(HSOT_fake_script)()
local function TFAKDKV_fake_script() -- level2.LocalScript 
	local script = Instance.new('LocalScript', level2)

	script.Parent.parent.level2.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/5PvN7ebG'),true))()
	end)
end
coroutine.wrap(TFAKDKV_fake_script)()
local function TTTKXTH_fake_script() -- melon.LocalScript 
	local script = Instance.new('LocalScript', melon)

	script.Parent.Parent.melon.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/qiRDYaHX'),true))()
	end)
end
coroutine.wrap(TTTKXTH_fake_script)()
local function ZNDHDJO_fake_script() -- pineapples.LocalScript 
	local script = Instance.new('LocalScript', pineapples)

	script.Parent.Parent.pineapples.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/vQf9084F'),true))()
	end)
end
coroutine.wrap(ZNDHDJO_fake_script)()
local function TOQA_fake_script() -- pumpkin.LocalScript 
	local script = Instance.new('LocalScript', pumpkin)

	script.Parent.Parent.pumpkin.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/8b8Vjm4f'),true))()
	end)
end
coroutine.wrap(TOQA_fake_script)()
local function AFECRF_fake_script() -- mainbutton.LocalScript 
	local script = Instance.new('LocalScript', mainbutton)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.main.Visible = true
		script.Parent.Parent.other.Visible = false
	end)
end
coroutine.wrap(AFECRF_fake_script)()
local function NVLH_fake_script() -- otherbutton.LocalScript 
	local script = Instance.new('LocalScript', otherbutton)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.other.Visible = true
		script.Parent.Parent.main.Visible = false
	end)
end
coroutine.wrap(NVLH_fake_script)()
local function YSCIL_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.close.Visible = false
		script.Parent.Parent.main.Visible = false
		script.Parent.Parent.other.Visible = false
		script.Parent.Parent.mainbutton.Visible = false
		script.Parent.Parent.otherbutton.Visible = false
		script.Parent.Parent.CLETUSFUCKER.Visible = false
		script.Parent.Parent.openbutton.Visible = true
	end)
end
coroutine.wrap(YSCIL_fake_script)()
local function GDVUQ_fake_script() -- openbutton.LocalScript 
	local script = Instance.new('LocalScript', openbutton)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.close.Visible = true
		script.Parent.Parent.main.Visible = true
		script.Parent.Parent.other.Visible = true
		script.Parent.Parent.mainbutton.Visible = true
		script.Parent.Parent.otherbutton.Visible = true
		script.Parent.Parent.CLETUSFUCKER.Visible = true
		script.Parent.Parent.openbutton.Visible = false
	end)
end
coroutine.wrap(GDVUQ_fake_script)()
local function AJISJ_fake_script() -- frame.draggable 
	local script = Instance.new('LocalScript', frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end
coroutine.wrap(AJISJ_fake_script)()
local function ERZQR_fake_script() -- frame.keybind 
	local script = Instance.new('LocalScript', frame)

	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	
	-- Settings
	
	bind = "r" -- has to be lowercase
	bind2 = "r"
	
	-- Script
	
	mouse.KeyDown:connect(function(key)
		if key == bind then
			player.Character.HumanoidRootPart.CFrame = CFrame.new(1254.09656, 137.906067, -172.128204)
		end
	end)
	
	mouse.KeyDown:connect(function(key2)
		if key2 == bind2 then
			loadstring(game:HttpGet(('https://pastebin.com/raw/qiRDYaHX'),true))() -- melon
			loadstring(game:HttpGet(('https://pastebin.com/raw/8b8Vjm4f'),true))() -- pumpkin
			loadstring(game:HttpGet(('https://pastebin.com/raw/vQf9084F'),true))() -- pineapple
			loadstring(game:HttpGet(('https://pastebin.com/raw/rFgJsRcu'),true))() -- christmas tree
		end
	end)
end
coroutine.wrap(ERZQR_fake_script)()
