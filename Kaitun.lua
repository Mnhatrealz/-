-- AUTO-INSERTED DEFAULTS (to avoid nil toggles)
local __KAITUN_DEFAULTS_ADDED = true
local togle_up = togle_up or false
local togle_upx = togle_upx or true
local Auto_Farm_Kaitun = Auto_Farm_Kaitun or false
local Select_Island_X = Select_Island_X or nil
local Teleport_Tween = Teleport_Tween or false
local Tween = Tween or nil
local vSetting = vSetting or {}


if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

getgenv().Faster = { 
    ['CDK Super Fast'] = true, -- Spawn Admin / เสกแอดมิน
    ['Buy Color Haki'] = 3 -- Legendary Haki Max 3
}

getgenv().RAM = { -- Log Des 
    ['Enabled'] = false, 
    ['Delay'] = 600 
}

getgenv().Setting = { -- Setting Script / ตั้งค่าสคริปต์
    ['FPS Booster'] = _G.Setting['FPS Booster'],
    ['White Screen'] = true,
    ['Disible Gui'] = _G.Setting['Close Ui'],
    ['Lock Fruit'] = 1000000,
    ['AFK Check'] = 150,
    ['Rejoin'] = true
}

getgenv().Quest = { -- Farm Quest / ทำเควส
    ['RGB Haki'] = _G.Quest['RGB Aura Haki'],
    ['Evo Race'] = {
        ['Enabled'] = true, 
        ['Select Race'] = _G.Race['Select Race'],
        ['Evo V3'] = _G.Race['Evo Race V3']
    },
    ['Quest Dough Awaken'] = { -- Dough Awaken + Mirror Fractal / ทำเควสโมจิตื่น + กระจก
        ['Enabled'] = _G.Quest['Quest Dough Awaken'],
        ['Fast Mode'] = true 
    },
    ['Kill Boss'] = true, 
    ['Quest Race V4'] = _G.Quest['Pull Lever'] 
}
if _G.Race['Lock Race'] then
	--getgenv().Quest['Evo Race']['Select Race'][1] = tostring(game.Players.LocalPlayer.Data.Race.Value)
end
getgenv().Fruit = { -- Select Fruit / เลือกผลที่ต้องการ
    ['Main'] = _G.Fruit['Main Fruit'],
    ['Select Fruit'] = _G.Fruit['Select Fruit'], 
    ['Bring Fruit'] = true 
}

getgenv().Melee = { -- Farm Melee / ฟามหมัด
    ['Superhuman'] = true,
    ['Death Step'] = true,
    ['Sharkman Karate'] = true,
    ['Electric Claw'] = true,
    ['Dragon Talon'] = true,
    ['Godhuman'] = _G.Melee['Godhuman']
}

getgenv().Sword = _G.Sword 

getgenv().Gun = _G.Gun

getgenv().Mastery = { -- Farm Mastery / ฟามมาสเตอรี่
    ['Melee'] = _G.Mastery['Melee'],
    ['Fruit'] = _G.Mastery['Fruit'],

    ['Sword'] = _G.Mastery['Sword'],
    ['Setting Sword'] = { 
        [1] = "Tushita",
        [2] = "Hallow Scythe",
        [3] = "Spikey Trident",
        [4] = "Dark Dagger",
        [5] = "Buddy Sword",
        [6] = "Yama",
        [7] = "Shisui",
        [8] = "Saddi",
        [9] = "Shark Anchor",
        [10] = "True Triple Katana",
        [11] = "Cursed Dual Katana",
        [12] = "Midnight Blade",
        [13] = "Rengoku",
        [14] = "Saber",
        [15] = "Canvander",
		[16] = 'Wando'
    },

    ['Gun'] = false,
    ['Setting Gun'] = { 
        [1] = 'Soul Guitar',
        [2] = 'Kabucha',
        [3] = 'Acidum Rifle',
        [4] = 'Serpent Bow'
    }
}

_G.On_Next_Generation = true
if _G.On_Next_Generation then
    _G.Switch_Hub_Series_R = true
    _G.Quest = {
        ['RGB'] = getgenv().Quest['RGB Haki']
    }
    if getgenv().Quest['Evo Race']['Evo V3'] then
		_G.Quest['Evo Race V1'] = true
		_G.Quest['Evo Race V2'] = true
		_G.Quest['Evo Race V3'] = true
    end
    _G.Main = {
        ['FPS Booster'] = getgenv().Setting['FPS Booster'],
        ['White Screen'] = getgenv().Setting['White Screen'],
        ['Close Ui'] = getgenv().Setting['Disible Gui'],
        ['AFK Check'] = getgenv().Setting['AFK Check'],
        ['Lock Fruit'] = getgenv().Setting['Lock Fruit'],
        ['Rejoin'] = getgenv().Setting['Rejoin'],
        ['Bring Fruit'] = getgenv().Fruit['Bring Fruit'],
        ['Kill Boss'] = getgenv().Quest['Kill Boss']
    }
    _G.Melee = getgenv().Melee
    _G.Sword = getgenv().Sword
    _G.Gun = getgenv().Gun
    _G.Mastery = getgenv().Mastery
    _G.Fruit_Main = { -- เลือกผลหลักและเควสโมจิตื่น
        ['Main'] = getgenv().Fruit['Main'],
        ['Quest Dough Awaken'] = getgenv().Quest['Quest Dough Awaken']['Enabled'],
        ['Fast Dough Awaken'] = getgenv().Quest['Quest Dough Awaken']['Fast Mode']
    }
    _G.Fruit = getgenv().Fruit['Select Fruit']
end
local Bijan = false
local Bijan = loadstring(game:HttpGet("https://raw.githubusercontent.com/mondeef/s/main/README.lua"))()
if type(Bijan) == 'table' then
else
	game:Shutdown()
end
if _G.Switch_Hub_Series_R then
	if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
	
	local function click(a)
		game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,true,a,1)
		game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+90,0,false,a,1)
	end
	if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
		repeat task.wait()
			if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
					for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
						b:Fire() 
					end
					v.Function()
				end 
			end
		until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
	end
	task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/middle.lua'))() end)

	-- RAM
	if _G.Quest == nil then
		_G.Quest = {
			['RGB'] = false
		}
	end
	if _G.Fruit_Main['Main'] == nil then
	elseif type(_G.Fruit_Main['Main']) == 'table' then
		for i,v in next,_G.Fruit_Main['Main'] do
			table.insert(_G.Fruit,v)
		end
	else -- add table
		local xp = _G.Fruit_Main['Main']
		table.insert(_G.Fruit,xp)
		_G.Fruit_Main['Main'] = {}
		table.insert(_G.Fruit_Main['Main'],xp)
	end
	-- FPS Booster
	--UserSettings():GetService("UserGameSettings").MasterVolume = 0

	--UserSettings():GetService("UserGameSettings").SavedQualityLevel = 1
	spawn(function()
		if _G.Main['FPS Booster'] then
			game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
			shared = {}
			shared.BC_1 = true
			shared.BC_2 = nil

			if shared.BC_1 and shared.BC_2 == nil then
				L_1 = game:GetService("Workspace");
				L_2 = game:GetService("Lighting");
				L_3 = L_1.Terrain;
				L_4 = game:GetService("Players");
				L_5 = L_4.LocalPlayer.Character;
				
				L_3.WaterWaveSize = 0;L_3.WaterWaveSpeed = 0;L_3.WaterReflectance = 0;L_3.WaterTransparency = 0;
				L_2.GlobalShadows = false;L_2.FogEnd = tonumber(9e9);L_2.Brightness = 0;
				settings().Rendering.QualityLevel = "Level01";
				settings().Rendering.GraphicsMode = "NoGraphics";
				--sethiddenproperty(L_2, "Technology", "Compatibility");
				for i,v in pairs(L_1:GetDescendants()) do
					if v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or v.ClassName == "Terrain" or v.ClassName == "MeshPart" then
						v.Material = "Plastic";v.Reflectance = 0;v.CastShadow = false;
					elseif v.ClassName == "Decal" or v:IsA("Texture") then
						v.Texture = 0;v.Transparency = 1;
					elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
						v.LightInfluence = 0;v.Texture = 0;v.Lifetime = NumberRange.new(0);
					elseif v:IsA("Explosion") then
						v.BlastPressure = 0;v.BlastRadius = 0;
					elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
						v.Enabled = false;
					elseif v:IsA("MeshPart") then
						v.Material = "Plastic";v.Reflectance = 0;v.TextureId = 0;v.CastShadow = false;v.RenderFidelity = Enum.RenderFidelity.Performance;
					elseif v.ClassName == "SpecialMesh" then
						v.TextureId = "rbxassetid://0";
					elseif v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
						v:Destroy();
					end
				end
				for i,v in pairs(L_2:GetDescendants()) do
					if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
						v.Enabled = false;
					end
				end
				for i,v in pairs(L_5:GetDescendants()) do
					if v.ClassName == "Shirt" or v.ClassName == "Pants" or v.ClassName == "Accessory" then
						v:Destroy();
					end
				end

				if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635then -- Blox Fruits
					if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("AirDash") then
						--game:GetService("ReplicatedStorage").Effect.Container.Shared.AirDash:Destroy();
					end
					if game:GetService("ReplicatedStorage").Effect.Container.Shared:FindFirstChild("LightningTP") then
						--game:GetService("ReplicatedStorage").Effect.Container.Shared.LightningTP:Destroy();
					end
					if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Damage") then
						--game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage:Destroy();
					end
					if game:GetService("ReplicatedStorage").Effect.Container.Misc:FindFirstChild("Confetti") then
						--game:GetService("ReplicatedStorage").Effect.Container.Misc.Confetti:Destroy();
					end
					if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("LevelUp") then
						--game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy();
					end
				end
				shared.BC_2 = true
			end
		end
	end)
	wait(3)
	Weapon = 'Combat'
	-- AFK
	spawn(function()
		while wait(150) do
			if Auto_Farm_Kaitun then
				game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
				wait(0.5)
				game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
			end
		end
	 end)
	 Old_World = false
	 New_World = false
	 Three_World = false
	 local placeId = game.PlaceId
	 if placeId == 2753915549 then
	 Old_World = true
	 elseif placeId == 4442272183 then
	 New_World = true
	 elseif placeId == 7449423635 then
	 Three_World = true
	 end
	
	
	 function ClickHide(v)
		firesignal(v['Activated'])
		firesignal(v['MouseButton1Click'])
	end

	function HopLowServer(bO)
		pcall(function()
			if not bO then
				bO = 10
			end
			ticklon = tick()
			repeat
				task.wait()
			until tick() - ticklon >= 1
			local function Hop()
				for r = 1, math.huge do
					if ChooseRegion == nil or ChooseRegion == "" then
						ChooseRegion = "Singapore"
					else
						game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
					end
					local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
					for k, v in pairs(bP) do
						if k ~= game.JobId and v["Count"] < bO then
							game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
						end
					end
				end
				return false
			end
			if not getgenv().Loaded then
				local function bQ(v)
					if v.Name == "ErrorPrompt" then
						if v.Visible then
							if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
								HopLowServer()
								v.Visible = false
							end
						end
						v:GetPropertyChangedSignal("Visible"):Connect(
							function()
								if v.Visible then
									if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
										HopLowServer()
										v.Visible = false
									end
								end
							end
						)
					end
				end
				for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
					bQ(v)
				end
				game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
				getgenv().Loaded = true
			end
			while task.wait(0.1) do
				Hop()
			end
		end)
	end
	--
	local placeId = game.PlaceId
	if placeId == 2753915549 then
		Old_World = true
	elseif placeId == 4442272183 then
		New_World = true
	elseif placeId == 7449423635 then
		Three_World = true
	end

	-- Booster
	getgenv().Deleted_Ui = true
	if getgenv().Deleted_Ui then
		library = {}
		function library:CreateWindow(...)
			local bit_zes = {
			}
			function bit_zes:CreateTab(...)
				local cizan = {
	
				}
				function cizan:CreateSection(...)
					local Azin = {
	
					}
					function Azin:AddLabel(...)
						local xp = {}
						function xp:Set(...)
							local op = {}
							return op 
						end
						return xp
					end
					function Azin:AddDropdown(...)
						local xp = {}
						return xp
					end
					function Azin:AddTextbox(...)
						local xp = {}
						return xp
					end
					function Azin:AddKeybind(...)
						local xp = {}
						return xp
					end
					function Azin:AddToggle(...)
						local xp = {}
						return xp
					end
					function Azin:AddButton(...)
						local xp = {}
						return xp
					end
					function Azin:AddSlider(...)
						local xp = {}
						return xp
					end
					function Azin:AddSearchBox(...)
						local xp = {}
						return xp
					end
					function Azin:AddColorpicker(...)
						local xp = {}
						return xp
					end
					function Azin:AddPersistence(...)
						local xp = {}
						return xp
					end
					return Azin
				end
				return cizan
			end
			return bit_zes
		end

		if game:GetService("CoreGui"):FindFirstChild('Switch Hub') then
			game:GetService("CoreGui"):FindFirstChild('Switch Hub'):Destroy()
		end
		-- Switch Hub
		local Switch_Hub = Instance.new("ScreenGui")
		Switch_Hub.Name = "Switch Hub"
		Switch_Hub.Parent = game:GetService("CoreGui")
		Switch_Hub.Enabled = false
		
		
		game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomHUDList.SafeZone.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = false
		-- Switch Hub 7M
		local F_Level = Instance.new("Frame")
		F_Level.Name = "Level"
		F_Level.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Level.Size = UDim2.new(1, 0, 1, 0)
		F_Level.Position = UDim2.new(0, 0, 0, 0)
		F_Level.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Level.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Level
		game:GetService("CoreGui")["Switch Hub"].Level.Fragments.TextColor3 = Color3.fromRGB(0, 255, 186) 
		game:GetService("CoreGui")["Switch Hub"].Level.Fragments.Text = "Switch Hub"
		game:GetService("CoreGui")["Switch Hub"].Level.Fragments.Size = UDim2.new(1, 0, 0, 40)
		game:GetService("CoreGui")["Switch Hub"].Level.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Level.Position = UDim2.new(0.5, 0, -0.2, 0)
		game:GetService("CoreGui")["Switch Hub"].Level.Fragments.TextStrokeTransparency = 1
		
		-- Time
		local F_Text2 = Instance.new("Frame")
		F_Text2.Name = "Text2"
		F_Text2.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text2.Size = UDim2.new(1, 0, 1, 0)
		F_Text2.Position = UDim2.new(0, 0, 0, 0)
		F_Text2.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text2.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text2
		game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.TextColor3 = Color3.fromRGB(245, 245, 245)
		game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.Text = ""
		game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.Size = UDim2.new(1, 0, 0, 25)
		game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text2.Position = UDim2.new(0.5, 0, -0.1, 0)
		game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.TextStrokeTransparency = 1
		
		-- Name
		local F_Text = Instance.new("Frame")
		F_Text.Name = "Text"
		F_Text.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text.Size = UDim2.new(1, 0, 1, 0)
		F_Text.Position = UDim2.new(0, 0, 0, 0)
		F_Text.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text
		game:GetService("CoreGui")["Switch Hub"].Text.Fragments.TextColor3 = Color3.fromRGB(245, 245, 245)
		game:GetService("CoreGui")["Switch Hub"].Text.Fragments.Text = '( '..game.Players.LocalPlayer.Name..' )'
		game:GetService("CoreGui")["Switch Hub"].Text.Fragments.Size = UDim2.new(1, 0, 0, 25)
		game:GetService("CoreGui")["Switch Hub"].Text.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text.Position = UDim2.new(0.5, 0, 0.14, 0)
		game:GetService("CoreGui")["Switch Hub"].Text.Fragments.TextStrokeTransparency = 1
		-- Status
		local F_Text3 = Instance.new("Frame")
		F_Text3.Name = "Text3"
		F_Text3.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text3.Size = UDim2.new(1, 0, 1, 0)
		F_Text3.Position = UDim2.new(0, 0, 0, 0)
		F_Text3.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text3.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text3
		game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.TextColor3 = Color3.fromRGB(0, 255, 186) 
		game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.Text = 'Status: Farm Level .. '
		game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.Size = UDim2.new(1, 0, 0, 28)
		game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text3.Position = UDim2.new(0.5, 0, 0.22, 0)
		game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.TextStrokeTransparency = 1
		-- Item Sanguine Art
		local F_Text5 = Instance.new("Frame")
		F_Text5.Name = "Text5"
		F_Text5.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text5.Size = UDim2.new(1, 0, 1, 0)
		F_Text5.Position = UDim2.new(0, 0, 0, 0)
		F_Text5.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text5.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text5
		game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.TextColor3 = Color3.fromRGB(245, 245, 245)
		game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.Text = '...'
		game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.Size = UDim2.new(1, 0, 0, 25)
		game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text5.Position = UDim2.new(0.5, 0, 0.38, 0)
		game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.TextStrokeTransparency = 1
		-- Full Moon
		local F_Text6 = Instance.new("Frame")
		F_Text6.Name = "Text6"
		F_Text6.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text6.Size = UDim2.new(1, 0, 1, 0)
		F_Text6.Position = UDim2.new(0, 0, 0, 0)
		F_Text6.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text6.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text6
		game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.TextColor3 = Color3.fromRGB(255,140,0)
		game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 75% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
		game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Size = UDim2.new(1, 0, 0, 25)
		game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text6.Position = UDim2.new(0.5, 0, -0.03, 0)
		game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.TextStrokeTransparency = 1
		spawn(function()
			while wait(1) do
				pcall(function()
					if Three_World then
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 100% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 75% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 50% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 25% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 15% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						else 
							game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 0% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						end 
						local scripttime=game.Workspace.DistributedGameTime
						local seconds = scripttime%60
						minutes = math.floor(scripttime/60%60)
						hours = math.floor(scripttime/3600)
						local tempo = string.format("%.0f Hours, %.0f Minutes, %.0f Seconds", hours ,minutes, seconds)
						game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.Text = tempo
					else
						game:GetService("CoreGui")["Switch Hub"].Text6.Fragments.Text = '🌕 0% ('. .. tostring(game:GetService("Lighting").TimeOfDay)..')'
						local scripttime=game.Workspace.DistributedGameTime
						local seconds = scripttime%60
						minutes = math.floor(scripttime/60%60)
						hours = math.floor(scripttime/3600)
						local tempo = string.format("%.0f Hours, %.0f Minutes, %.0f Seconds", hours ,minutes, seconds)
						game:GetService("CoreGui")["Switch Hub"].Text2.Fragments.Text = tempo
					end
				end)
			end
		end)
		-- Sanguine Art
		local F_Text4 = Instance.new("Frame")
		F_Text4.Name = "Text4"
		F_Text4.Parent = game:GetService("CoreGui")["Switch Hub"]
		F_Text4.Size = UDim2.new(1, 0, 1, 0)
		F_Text4.Position = UDim2.new(0, 0, 0, 0)
		F_Text4.AnchorPoint = Vector2.new(0.5, 0.5)
		F_Text4.Transparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone().Parent = game:GetService("CoreGui")["Switch Hub"].Text4
		game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.TextColor3 = Color3.fromRGB(0, 255, 186) 
		game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.Text = '...'
		game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.Size = UDim2.new(1, 0, 0, 35)
		game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.TextXAlignment = 'Center'
		game:GetService("CoreGui")["Switch Hub"].Text4.Position = UDim2.new(0.5, 0, 0.47, 0)
		game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.TextStrokeTransparency = 1

		local BlurSwitch = Instance.new("BlurEffect")
		BlurSwitch.Name = "SwitchBlur"
		BlurSwitch.Parent = game:GetService("Lighting")
		BlurSwitch.Enabled = true
		BlurSwitch.Size = 0
		
		game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
			if not isTyping then
				if input.KeyCode == Enum.KeyCode.B then
					if togle_up then
						game:GetService("CoreGui")["Switch Hub"].Enabled = false
						game.Lighting.ExposureCompensation = 0
						--BlurSwitch.Size = 0
						togle_up = false
					else
						game:GetService("CoreGui")["Switch Hub"].Enabled = true
						game.Lighting.ExposureCompensation = -10
						--BlurSwitch.Size = 80
						togle_up = true
					end
				end
			end
		end)
		if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('ContextActionGui') then
			game:GetService("Players").LocalPlayer.PlayerGui.ContextActionGui.Enabled = false
		end
		if game.CoreGui:FindFirstChild('SWP') then
			game.CoreGui:FindFirstChild('SWP'):Destroy()
		end
		local Luna = Instance.new("ScreenGui")
		local ToggleFrameUi = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local ToggleImgUi = Instance.new("ImageButton")
		local Uitoggle = Instance.new("TextLabel")
		local Yedhee = Instance.new("TextLabel")
		local SearchStroke = Instance.new("UIStroke")
		
		
		Luna.Name = "SWP"
		Luna.Parent = game.CoreGui
		Luna.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		
		ToggleFrameUi.Name = "ToggleFrameUi"
		ToggleFrameUi.Parent = Luna
		ToggleFrameUi.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		ToggleFrameUi.Position = UDim2.new(0.775, 0,0.3, 0)
		ToggleFrameUi.Size = UDim2.new(0, 148, 0, 48)
		
		SearchStroke.Thickness = 1
		SearchStroke.Name = ""
		SearchStroke.Parent = ToggleFrameUi
		SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
		SearchStroke.Color = Color3.fromRGB(0, 255, 186) 
		SearchStroke.Transparency = 0
		
		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = ToggleFrameUi
		
		ToggleImgUi.Name = "ToggleImgUi"
		ToggleImgUi.Parent = ToggleFrameUi
		ToggleImgUi.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
		ToggleImgUi.BackgroundTransparency = 1
		ToggleImgUi.Position = UDim2.new(0.0454545468, 0, 0.125000313, 0)
		ToggleImgUi.Size = UDim2.new(0, 35, 0, 35)
		ToggleImgUi.Image = "rbxassetid://17260696651"
		ToggleImgUi.MouseButton1Click:Connect(function()
			if togle_up then
				ToggleImgUi.ImageTransparency = 0.3
				uihide = true
				game:GetService("CoreGui")["Switch Hub"].Enabled = false
				game.Lighting.ExposureCompensation = 0
				--BlurSwitch.Size = 0
				togle_up = false
				wait()
				ToggleImgUi.ImageTransparency = 0
			else
				ToggleImgUi.ImageTransparency = 0.3
				uihide = true
				game:GetService("CoreGui")["Switch Hub"].Enabled = true
				game.Lighting.ExposureCompensation = -10
				--BlurSwitch.Size = 80
				togle_up = true
				wait()
				ToggleImgUi.ImageTransparency = 0
			end
		end)
		
		Uitoggle.Name = "Uitoggle"
		Uitoggle.Parent = ToggleFrameUi
		Uitoggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.BackgroundTransparency = 1.000
		Uitoggle.Position = UDim2.new(0.14, 0, 0.1, 0)
		Uitoggle.Size = UDim2.new(0, 137, 0, 25)
		Uitoggle.Font = Enum.Font.GothamSemibold
		Uitoggle.Text = "Switch Hub Kaitun"
		Uitoggle.TextColor3 = Color3.fromRGB(255, 255, 255)
		Uitoggle.TextSize = 12.000
		
		Yedhee.Name = "Yedhee"
		Yedhee.Parent = ToggleFrameUi
		Yedhee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Yedhee.BackgroundTransparency = 1.000
		Yedhee.Position = UDim2.new(0.14, 0, 0.429166657, 0)
		Yedhee.Size = UDim2.new(0, 137, 0, 25)
		Yedhee.Font = Enum.Font.GothamSemibold
		Yedhee.Text = "White Screen (B)"
		Yedhee.TextColor3 = Color3.fromRGB(0, 255, 186) 
		Yedhee.TextSize = 12.000
		
		if game.CoreGui:FindFirstChild('Switch Hub C') then
			game.CoreGui:FindFirstChild('Switch Hub C'):Destroy()
		end
		local function click(a)
			game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2.5,a.AbsolutePosition.Y+50,0,true,a,1)
			game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2.5,a.AbsolutePosition.Y+50,0,false,a,1)
		end
		function CheckPhoto(vu)
			click(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.Sort)
			wait(.2)
			click(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.Sort.Dropdown[vu])
			wait(.2)
		end
		function Load_Info(Name_X,Folder)
			local keep_all_name = {}
			local kp = 0
			local old_check = 0
			local end_check = false
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition.Y-1030)
			repeat 
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetDescendants()) do
					if v.Name == 'Background' and tostring(v.BackgroundColor) == 'Bright red' and not table.find(keep_all_name,v.Parent.ItemName.Text) then 
						v.Parent:Clone().Parent = game:GetService("CoreGui")["Switch Hub C"][Folder]
						game:GetService("CoreGui")["Switch Hub C"][Folder][v.Parent.Name].Name = v.Parent.ItemName.Text
						table.insert(keep_all_name,v.Parent.ItemName.Text)
					end
				end
				if #keep_all_name > 0 then
					game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition.Y+130)
					wait(.3)
					if old_check == game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition.Y then
						end_check = true
					else
						old_check = game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition.Y
					end
				end
				kp = kp + 1
			until #keep_all_name > 0 and end_check or kp >= 3 and #keep_all_name == 0
		end
		-- Switch Hub C
		local Switch_Hub = Instance.new("ScreenGui")
		Switch_Hub.Name = "Switch Hub C"
		Switch_Hub.Parent = game:GetService("CoreGui")
		-- Fruit Inventory Backpack
		local F_FruitB = Instance.new("Frame")
		F_FruitB.Name = "FruitB"
		F_FruitB.Parent = game:GetService("CoreGui")["Switch Hub C"]
		F_FruitB.Size = UDim2.new(0.17, 0, 0, 0)
		F_FruitB.Position = UDim2.new(0.02, 0, 0.03, 0)
		F_FruitB.Transparency = 1
		local uig = Instance.new("UIGridLayout")
		uig.Parent = game:GetService("CoreGui")["Switch Hub C"].FruitB
		uig.CellSize = UDim2.new(0, 55, 0, 55)
		--[[
		click(game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton) -- open menu
		wait(.5)
		click(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryButton) -- open Beg
		wait(.5)
		CheckPhoto('Treasure')
		game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Visible = true
		Load_Info('Blox Fruit','FruitB')
		game:GetService("CoreGui")["Switch Hub C"].FruitB.Visible = true
		click(game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton) -- open menu
		]]
		wait(.5)
		if _G.Setting['Black Screen'] then
			ToggleImgUi.ImageTransparency = 0.3
			uihide = true
			game:GetService("CoreGui")["Switch Hub"].Enabled = true
			game.Lighting.ExposureCompensation = -10
			--BlurSwitch.Size = 80
			togle_up = true
			wait()
			ToggleImgUi.ImageTransparency = 0
		end
		function Set_Status_X(vu)
			game:GetService("CoreGui")["Switch Hub"].Text3.Fragments.Text = vu
		end
		--[[
		local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/alichnochi/code/main/notifycation.lua"))()
		local Notify = AkaliNotif.Notify
		Notify({
			Description = '✅ Turn on and off (White Screen "Y")',
			Title = "Switch Hub Kaitun | ". .. tostring(game.Players.LocalPlayer.Name),
			Duration = 5
		})
		Notify({
			Description = '👾 Turn on and off (Farming "B")',
			Title = "Automatic Farming",
			Duration = 5
		})
		local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/alichnochi/code/main/notification.status.lua", true))()
		status_pass = Notification.new("message", 'Switch Hub Kaitun | ', "Status: ...")
		status_pass:changeColor(Color3.fromRGB(15,15,15),Color3.fromRGB(42, 170, 138),Color3.fromRGB(255, 244, 0))
		spawn(function()
			while wait(1) do
				pcall(function()
					local scripttime=game.Workspace.DistributedGameTime
					local seconds = scripttime%60
					minutes = math.floor(scripttime/60%60)
					hours = math.floor(scripttime/3600)
					local tempo = string.format("%.0f Hr(s), %.0f Min(s), %.0f Sec(s)", hours ,minutes, seconds)
					status_pass:changeHeading(tempo)
				end) 
			end
		end)
		if getgenv().Setting['White Screen'] then
			game:GetService("RunService"):Set3dRenderingEnabled(false)
			togle_up = false
		end
		game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
			if not isTyping then
				if input.KeyCode == Enum.KeyCode.Y then
					if togle_up then
						game:GetService("RunService"):Set3dRenderingEnabled(false)
						togle_up = false
					else
						game:GetService("RunService"):Set3dRenderingEnabled(true)
						togle_up = true
					end
				end
			end
		end)
		game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)
			if not isTyping then
				if input.KeyCode == Enum.KeyCode.B then
					if togle_upx then
						Auto_Farm_Kaitun = true
						togle_upx = false
					else
						Auto_Farm_Kaitun = false
						togle_upx = true
					end
				end
			end
		end)

		]]
	else
		_G.library = loadstring(game:HttpGet("https://raw.githubusercontent.com/soulju2097/Gui/main/README.md"))()
		library = _G.library
	end
	
	local PepsisWorld = library:CreateWindow({
		Name = "Switch Hub [ Kaitun ]",
		Themeable = {	
		}
	})
	local General_T = PepsisWorld:CreateTab({
		Name = "General"
	})
	local Start_S = General_T:CreateSection({
		Name = " Farming ",
		Side = 'Right'
	})
	local Time_S = General_T:CreateSection({
		Name = " Time ",
		Side = 'Left'
	})
	
	local Set_Time = Time_S:AddLabel({
		Name = ' Title : '
	})
	local Time_Server_S = Time_S:AddLabel({
		Name = " Time Server ",
		Side = 'Left'
	})
	spawn(function()
		while wait(1) do
			pcall(function()
				local scripttime=game.Workspace.DistributedGameTime
				local seconds = scripttime%60
				minutes = math.floor(scripttime/60%60)
				hours = math.floor(scripttime/3600)
				local tempo = string.format("%.0f Hr(s), %.0f Min(s), %.0f Sec(s)", hours ,minutes, seconds)
				Set_Time:SetText(tempo)
				Time_Server_S:Set('Time Server: '. .. tostring(game:GetService("Lighting").TimeOfDay))
			end) 
		end
	end)
		
		local Status_S = General_T:CreateSection({
		Name = " Status "
		})
		Status_S:AddLabel({
			Name = ' Name : '..game.Players.LocalPlayer.Name
			})

		if Old_World then
		World_N = 1
		elseif New_World then
		World_N = 2
		elseif Three_World then
		World_N = 3
		end
		Status_S:AddLabel({
			Name = ' World : '..World_N
		})
		local Race_S = Status_S:AddLabel({
			Name = ' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)
		})
		local Fruit_S = Status_S:AddLabel({
		Name = ' Fruit : '
		})
		local Awaken_S = Status_S:AddLabel({
		Name = ' Awaken : '
		})
		
		Start_S:AddToggle({
		Name = 'Auto Farm',
		Enabled = _G.Switch_Hub_Series_R,
		Callback = function(vu)
			Auto_Farm_Kaitun = vu
		end
		})
		if _G.Switch_Hub_Series_R then
			Auto_Farm_Kaitun = true
		end
		local Status_Run = Start_S:AddLabel({
			Name = ' Status : Farm Level'
		})
		
		local Full_Moon_S = Start_S:AddLabel({
			Name = ' 🌕 Full Moon : None .. '
			})
		local Mirage_S = Start_S:AddLabel({
			Name = ' 🌴 Mirage Island : None .. '
		})
		spawn(function()
			while wait(1) do
				pcall(function()
					if Three_World then
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 100%"))
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 75%"))
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 50%"))
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 25%"))
						elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 15%"))
						else 
							Full_Moon_S:Set(tostring(" 🌕 Full Moon : 0"))
						end
						if _G.Event['Pull Lever'] and game:GetService("Workspace").Map:FindFirstChild("MysticIsland") and Evo_Race_V3_H and not Pull_Lever_H and Quest_Dough_Awaken and Valkyrie_Helmet_H then
							Mirage_S:Set(" 🌴 Mirage Island : ✅ Spawn ") 
							local result = {}
                            local x = tostring(game:GetService("Lighting").TimeOfDay)
                            local regex = ("([^%s]+)"):format(":")
                            for each in x:gmatch(regex) do
								table.insert(result, each)
							end
							if tonumber(result[1]) >= 0 and tonumber(result[1]) < 5 or tonumber(result[1]) >= 18 and tonumber(result[1]) <= 23 then
								List.Pull_Lerver = true
							end
						else
							Mirage_S:Set(' 🌴 Mirage Island : None .. ')
						end
						wait(10)
					else
						wait(10)
					end
				end)
			end
		end)
	--
	local Quest_S = General_T:CreateSection({
	Name = " Quest ",
	Side = 'Left'
	})
	local Bartlio_S = Quest_S:AddLabel({
	Name = ' ❌ : Quest Bartlio'
	})
	local Don_Swan_S = Quest_S:AddLabel({
	Name = ' ❌ : Quest Don Swan'
	})
	local Death_Step_S_Q = Quest_S:AddLabel({
	Name = ' ❌ : Quest Death Step'
	})
	local Sharkman_Karate_S_Q = Quest_S:AddLabel({
	Name = ' ❌ : Quest Sharkman Karate'
	})
	local Dragon_Talon_S_Q = Quest_S:AddLabel({
		Name = ' ❌ : Quest Dragon Talon'
	})
	local Race_V4_S_Q = Quest_S:AddLabel({
		Name = ' ❌ : Quest Pull Lever'
	})
	
	--[[
	local Time_Check = library.Notify({
		Text = ' 👊 Godhuman 👊 ,,,,,,, 🍎 Full Awaken 🍎 , 🎸 Soul Guitar 🎸 , ⚔️ CDK ⚔️ , ☠️ Hallow Scythe ☠️ , 🗡️ TTK 🗡️',
		Paused = true
	})
	]]
	
	-- Time_Check:SetText(' 👊 Godhuman 👊 , 🍩 Dough Awaken 🍩 , 🍎 Full Awaken 🍎 , 🎸 Soul Guitar 🎸 , 🎓 Dark Coat 🎓 , ⚔️ Cursed Dual Katana ⚔️ , 🗡️ True Triple Katana 🗡️ , ☠️ Hallow Scythe ☠️')
	--
	local Melee_S = General_T:CreateSection({
	Name = " Melee ",
	Side = 'Left'
	})
	local Superhuman_S = Melee_S:AddLabel({
	Name = ' ❌ : Superhuman'
	})
	local Death_Step_S = Melee_S:AddLabel({
	Name = ' ❌ : Death Step'
	})
	local Sharkman_Karate_S = Melee_S:AddLabel({
	Name = ' ❌ : Sharkman Karate'
	})
	local Electric_Claw_S = Melee_S:AddLabel({
	Name = ' ❌ : Electric Claw'
	})
	local Dragon_Talon_S = Melee_S:AddLabel({
	Name = ' ❌ : Dragon Talon'
	})
	local God_Human_S = Melee_S:AddLabel({
	Name = ' ❌ : Godhuman'
	})
	
	--
	local Information_S = General_T:CreateSection({
	Name = " Information "
	})
	local Bone_S = Information_S:AddLabel({
	Name = ' Bone : '
	})
	local Ectoplasm_S = Information_S:AddLabel({
	Name = ' Ectoplasm : '
	})
	local Elite_Hunter_S = Information_S:AddLabel({
	Name = ' Elite Hunter : '
	})
	local Cake_Prince_S = Information_S:AddLabel({
	Name = ' Cake Prince : '
	})
	--
	local Check_S = General_T:CreateSection({
	Name = " Check ",
	Side = 'Left'
	})
	local RGB_S_Q = Check_S:AddLabel({
		Name = ' RGB : '
	})
	local God_Human_C_S = Check_S:AddLabel({
	Name = ' Godhuman : '
	})
	local Soul_Guitar_C_S = Check_S:AddLabel({
	Name = ' Soul Guitar : '
	})
	local Dough_Awaken_C_S = Check_S:AddLabel({
	Name = ' Dough Aawaken : '
	})
	local Cursed_Dual_Katana_Q_S = Check_S:AddLabel({
	Name = ' Cursed Dual Katana : '
	})
	local True_Triple_Katana_S_Q = Check_S:AddLabel({
		Name = ' True Triple Katana : '
	})
	local Snow_White_S = Check_S:AddLabel({
		Name = ' ⚪ Haki Snow White : '
	})
	-- Snow_White_S:Set(' Haki Snow White : ✅')
	local Pure_Red_S = Check_S:AddLabel({
		Name = ' 🔴 Haki Pure Red : '
	})
	-- Pure_Red_S:Set(' Haki Pure Red : ✅')
	local Winter_Sky_S = Check_S:AddLabel({
		Name = ' ⭕ Haki Winter Sky : '
	})
	--
	local Tool_Special_S = General_T:CreateSection({
		Name = " Tool Special ",
		Side = 'Left'
	})
	--
	local World_S = General_T:CreateSection({
		Name = " Teleport World ",
		Side = 'Left'
	})
	World_S:AddButton({
		Name = ' Teleport Third World ',
		Callback = function(vu)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
			TleP = true
		end
	})
	World_S:AddButton({
		Name = ' Teleport Second World ',
		Callback = function(vu)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
			TleP = true
		end
	})
	World_S:AddButton({
		Name = ' Teleport Old World ',
		Callback = function(vu)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
			TleP = true
		end
	})
	--[[
	local Capcut_S = General_T:CreateSection({
		Name = " Capcut ",
		Side = 'Left'
	})
	Capcut_S:AddToggle({
		Name = ' Auto Save ',
		Callback = function(vu)
			
		end
	})
	Capcut_S:AddButton({
		Name = ' Start Capcut ',
		Callback = function()
			
		end
	})
	]]
	--
	Map_List = {}
	for i,v in next,game:GetService("Workspace").Map:GetChildren() do
	if v:IsA('Model') then
		table.insert(Map_List,v.Name)
	end
	end
	Tool_Special_S:AddDropdown({
	Name = "Select Island",
	List = Map_List, 
	Value = '...',
	MultiSelect = false,
	Callback = function(vu)
		Select_Island_X = vu
	end 
	})
	Select_Island_X = nil
	Tool_Special_S:AddToggle({
	Name = 'Teleport Tween',
	Callback = function(vu)
		Teleport_Tween = vu
		if not vu then
			if Tween ~= nil then
				Tween:Cancel()
			end
		end
	end
	})
	function TP(Pos)
		local xps = game.Players.LocalPlayer and game.Players.LocalPlayer.Character.HumanoidRootPart and  game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		if xps then
			local Distance = (Pos.Position - xps).Magnitude
			pcall(function()
				Tween = game:GetService("TweenService"):Create(
					game.Players.LocalPlayer.Character.HumanoidRootPart,
					TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),
					{CFrame = Pos}
				)
				Tween:Play()
				if Distance <= 300 then
					Tween:Cancel()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
				end
			end)
		end
	end
	spawn(function()
		while wait(.5) do
			pcall(function()
				if Teleport_Tween and Select_Island_X ~= nil then
					TP(game:GetService("Workspace").Map[Select_Island_X].WorldPivot)
				end
			end)
		end
	end)
	
	function Get_Spwan(vu)
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].PlayerSpawns.Pirates:GetChildren()) do
			if (v.Part.Position-vu.Position).Magnitude <= 2500 then
				Get_Island['Name'] = v.Name
				Get_Island['CFrame'] = v.Part.CFrame
				return
			end
		end
	end
	    
	function TPX(RealTarget)
		pcall(function()
			local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
			if Distance < 100 then
				Speed = 1500
			elseif Distance < 200 then
				Speed = 1200
			elseif Distance < 500 then
				Speed = 515
			elseif Distance < 1000 then
				Speed = 315
			elseif Distance >= 1000 then
				Speed = 300
			end
			if Distance > 3000 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if Old_World and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Old_World and (Vector3.new(-4607.82275, 872.54248, -1667.55688)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif Old_World and (Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif New_World and (Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif New_World and (Vector3.new(923.21252441406, 126.9760055542, 32852.83203125)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif Old_World and (Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)-RealTarget.Position).Magnitude <= 2000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif Old_World and (Vector3.new(-2953.31884765625, 41.01357650756836, 2099.16943359375)-RealTarget.Position).Magnitude <= 2300 then
					if Old_World and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					elseif Old_World and (Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
					TP(RealTarget)
				elseif Old_World and (Vector3.new(3876.00366, 24.6882591, -3820.21777)-RealTarget.Position).Magnitude <= 1700 then
					TP(RealTarget)
				elseif New_World and (Vector3.new(3876.00366, 24.6882591, -3820.21777)-RealTarget.Position).Magnitude <= 3000 then
					TP(RealTarget)
				elseif New_World and List.Boss and Select_List_Boss == "Darkbeard" and Start_Kill_Boss then
					TP(RealTarget)
				elseif Three_World and List.Boss and Select_List_Boss == "Cake Prince" and Start_Kill_Boss then
					TP(RealTarget)
				elseif New_World and (Vector3.new(4768.3388671875, 8.318676948547363, 2868.102294921875)-RealTarget.Position).Magnitude <= 1700 then
					TP(RealTarget)
				elseif New_World and (Vector3.new(-5219.4585, 58.2147713, 2384.21191)-RealTarget.Position).Magnitude <= 1200 then
					TP(RealTarget)
				elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then 
					local xpta = game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart
                    if xpta then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RealTarget)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        wait(7)
                    end
				end
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				TP(RealTarget)
			end
		end)
	end
	Tool_Special_S:AddButton({
		Name = ' Teleport Bypass ',
		Callback = function()
			if Select_Island_X == nil then
			else
				TPX(game:GetService("Workspace").Map[Select_Island_X].WorldPivot)
			end
		end
		})
		Tool_Special_S:AddToggle({
			Name = 'White Screen',
			KeyBind = Enum.KeyCode.Y,
			Enabled = _G.Main['White Screen'],
			Callback = function(vu)

			end
			})
	--
	local Sword_S = General_T:CreateSection({
	Name = " Sword ",
	Side = 'Right'
	})
    
    --
	local Saber_S = Sword_S:AddLabel({
	Name = ' ❌ : Saber'
	})
	local Bisento_S = Sword_S:AddLabel({
	Name = ' ❌ : Bisento'
	})
	local Soul_Cane_S = Sword_S:AddLabel({
	Name = ' ❌ : Soul Cane'
	})
	local Rengoku_S = Sword_S:AddLabel({
	Name = ' ❌ : Rengoku'
	})
	local Yama_S = Sword_S:AddLabel({
	Name = ' ❌ : Yama'
	})
	local Koko_S = Sword_S:AddLabel({
	Name = ' ❌ : Koko'
	})
	local Spikey_Trident_S = Sword_S:AddLabel({
	Name = ' ❌ : Spikey Trident'
	})
	local Buddy_Sword_S = Sword_S:AddLabel({
	Name = ' ❌ : Buddy Sword'
	})
	local Canvander_S = Sword_S:AddLabel({
	Name = ' ❌ : Canvander'
	})
	local Tushita_S = Sword_S:AddLabel({
	Name = ' ❌ : Tushita'
	})
	local Hallow_Scythe_S = Sword_S:AddLabel({
	Name = ' ❌ : Hallow Scythe'
	})
	local Midnight_Blade_S = Sword_S:AddLabel({
	Name = ' ❌ : Midnight Blade'
	})
	local Shisui_S = Sword_S:AddLabel({
	Name = ' ❌ : Shisui'
	})
	local Saddi_S = Sword_S:AddLabel({
	Name = ' ❌ : Saddi'
	})
	local Wando_S = Sword_S:AddLabel({
	Name = ' ❌ : Wando'
	})
	local Dark_Dagger_S = Sword_S:AddLabel({
	Name = ' ❌ : Dark Dagger'
	})
	local True_Triple_Katana_S = Sword_S:AddLabel({
	Name = ' ❌ : True Triple Katana'
	})
	local Cursed_Dual_Katana_S = Sword_S:AddLabel({
	Name = ' ❌ : Cursed Dual Katana'
	})
    
	--
	local Gun_S = General_T:CreateSection({
        Name = " Gun ",
        Side = 'Right'
        })
	local Soul_Guitar_S = Gun_S:AddLabel({
        Name = ' ❌ : Soul Guitar'
        })
	local Serpent_Bow_S = Gun_S:AddLabel({
	Name = ' ❌ : Serpent Bow'
	})
	local Kabucha_S = Gun_S:AddLabel({
	Name = ' ❌ : Kabucha'
	})
	local Acidum_Rifle_S = Gun_S:AddLabel({
	Name = ' ❌ : Acidum Rifle'
	})
	--
	local Accessory_S = General_T:CreateSection({
	Name = " Accessory ",
	Side = 'Right'
	})
	local Valkyrie_Helmet_S = Accessory_S:AddLabel({
	Name = ' ❌ : Valkyrie Helm'
	})
	local Holy_Crown_S = Accessory_S:AddLabel({
	Name = ' ❌ : Holy Crown'
	})
	local Pale_Scarf_S = Accessory_S:AddLabel({
	Name = ' ❌ : Pale Scarf'
	})
	local Dark_Coat_S = Accessory_S:AddLabel({
	Name = ' ❌ : Dark Coat'
	})
	local Swan_Glass_S = Accessory_S:AddLabel({
	Name = ' ❌ : Swan Glasses'
	})
	local Zebra_Cap_S = Accessory_S:AddLabel({
	Name = ' ❌ : Zebra Cap'
	})
	local Warrior_Helmet_S = Accessory_S:AddLabel({
	Name = ' ❌ : Warrior Helmet'
	})
    -- 
    local Mys_Item_P = General_T:CreateSection({
        Name = " Mysterious Item ",
        Side = 'Right'
    })
    local Mirror_Fractal_S = Mys_Item_P:AddLabel({
        Name = ' ❌ : Mirror Fractal'
    })
    local Valkyrie_Helmet_S_L = Mys_Item_P:AddLabel({
        Name = ' ❌ : Valkyrie Helmet'
    })
	-- Check Gui
	function EquipWeapon(ToolSe)
		pcall(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
				local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				wait()
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
			end
		end)
	end
	function Stop_Boat()
		for i,v in pairs(game.Workspace.Boats:GetChildren()) do
			if v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
				if TweenP == nil then
				else
					TweenP:Cancel()
				end
				return
			end
		end
	end
	function Set_Quest()
        for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
            if v.Type == 'Material' then
                if v.Name == 'Mirror Fractal' then
					Mirror_Fractal_H = true
                    Mirror_Fractal_S:Set(' ✅ : Mirror Fractal')
                end
            end
        end
		if Three_World then
			Bartlio_S:Set(' ✅ : Quest Bartlio')
			Don_Swan_S:Set(' ✅ : Quest Don Swan')
			Death_Step_S_Q:Set(' ✅ : Quest Death Step')
			Sharkman_Karate_S_Q:Set(' ✅ : Quest Sharkman Karate')
			Sharkman_Karate_Q_C = true
		elseif New_World then
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
				Bartlio_S:Set(' ✅ : Quest Bartlio')
				Bartlio_H = true
			end
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
				Don_Swan_S:Set(' ✅ : Quest Don Swan')
				Don_Swan_H = true
			end
			if not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
				Death_Step_S_Q:Set(' ✅ : Quest Death Step')
			end
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) ~= "" then
				if not string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)),"keys") or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 3 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 0 then
					Sharkman_Karate_S_Q:Set(' ✅ : Quest Sharkman Karate')
					Sharkman_Karate_Q_C = true
				end
			end
		end
		if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true) ~= '' then
			if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'Set') then
				Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
				Dragon_Talon_Q = true
			end
		end
		if Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") == true then
			Pull_Lever_H = true
			Race_V4_S_Q:Set(' ✅ : Quest Pull Lever')
		end
	end
	Set_Quest()
	local function CheckItem(matname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Material" then
					if v.Name == matname then
						return v.Count
					end
				end
			end
		end
		return 0
		end
	local function CheckItem_X(matname)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
			if type(v) == "table" then
				if v.Type == "Material" then
					if v.Name == matname then
						return v.Count
					end
				end
			end
		end
	return 0
	end
	if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
		if CheckItem('Dark Fragment') >= 1 then
			Soul_Guitar_Nom = 0
		end
	end
	function Set_Status()
	if game.Players.LocalPlayer.Data.DevilFruit.Value ~= '' then
		repeat wait()
			EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
		until game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value)
		Fruit_S:Set(' Fruit : '..game.Players.LocalPlayer.Data.DevilFruit.Value..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value))
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= '' then
			if game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dough-Dough' then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
					Name_Awaken = "Z, X, C, TAP, V, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['TAP']['Awakened'] == true then
					Name_Awaken = "Z, X, C, TAP, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
					Name_Awaken = "Z, X, C, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
					Name_Awaken = "Z, X, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F']['Awakened'] == true then
					Name_Awaken = "Z, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
					Name_Awaken = "Z"
				else
					Name_Awaken = ''
				end
				Awaken_S:Set(' Awaken : '..Name_Awaken)
			elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
					Name_Awaken = "Z, X, C, V, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
					Name_Awaken = "Z, X, C, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
					Name_Awaken = "Z, X, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F']['Awakened'] == true then
					Name_Awaken = "Z, F"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
					Name_Awaken = "Z"
				else
					Name_Awaken = ''
				end
				Awaken_S:Set(' Awaken : '..Name_Awaken)
			else
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
					Name_Awaken = "Z, X, C, V"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
					Name_Awaken = "Z, X, C"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
					Name_Awaken = "Z, X"
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
					Name_Awaken = "Z"
				else
					Name_Awaken = ''
				end
				Awaken_S:Set(' Awaken : '..Name_Awaken)
			end
		end
	end
	Bone_S:Set(' Bone : '..CheckItem('Bones'))
	Ectoplasm_S:Set(' Ectoplasm : '..CheckItem('Ectoplasm'))
	if Three_World then	
		Elite_Hunter_S:Set(' Elite Hunter : '. .. tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")))
		local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
		Cake_Prince_S:Set(' Cake Prince : '..Lp)
	end
	if Three_World and _G.Quest['RGB'] then
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == nil then
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				local name_q = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if string.find(name_q,'Stone') then
					Check_RGB_Spawn = 'Stone'
				elseif string.find(name_q,'Island Empress') then
					Check_RGB_Spawn = 'Island Empress'
				elseif string.find(name_q,'Kilo Admiral') then
					Check_RGB_Spawn = 'Kilo Admiral'
				elseif string.find(name_q,'Captain Elephant') then
					Check_RGB_Spawn = 'Captain Elephant'
				elseif string.find(name_q,'Beautiful Pirate') then
					Check_RGB_Spawn = 'Beautiful Pirate'
				end
				if Check_RGB_Spawn == nil then
				else
					if string.find(name_q,'Stone') then
						Number = 1
					elseif string.find(name_q,'Island Empress') then
						Number = 2
					elseif string.find(name_q,'Kilo Admiral') then
						Number = 3
					elseif string.find(name_q,'Captain Elephant') then
						Number = 4
					elseif string.find(name_q,'Beautiful Pirate') then
						Number = 5
					end
					RGB_S_Q:Set(' RGB : '. .. tostring(Number).."/5 "..Check_RGB_Spawn)
				end
			end
		elseif tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")) == '1' then
			RGB_H = true
			RGB_S_Q:Set(' RGB : ✅')
			Check_RGB_Spawn = nil
		end
	end
	end
	Set_Status()
	local function Check_Mastery_Melee(vu)
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA('Tool') and v.Name == vu then
				return true
			end
		end
	end
	function Set_Melee()
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") == 2 then
			Bartlio_S:Set(' ✅ : Quest Bartlio')
			repeat wait()
				EquipWeapon('Superhuman')
			until Check_Mastery_Melee('Superhuman')
			Superhuman_Buy = true
			Superhuman_S:Set(' ✅ : Superhuman'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Superhuman').Level.Value))
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild('Superhuman').Level.Value) >= 330 then
				Superhuman_H = true
			end
		end
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 2 then
			repeat wait()
				EquipWeapon('Death Step')
			until Check_Mastery_Melee('Death Step')
			Death_Step_Buy = true
			Death_Step_S_Q:Set(' ✅ : Quest Death Step')
			Death_Step_S:Set(' ✅ : Death Step'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Death Step').Level.Value))
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild('Death Step').Level.Value) >= 400 then
				Death_Step_H = true
			end
		end
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 2 then
			Sharkman_Karate_S_Q:Set(' ✅ : Quest Sharkman Karate')
			repeat wait()
				EquipWeapon('Sharkman Karate')
			until Check_Mastery_Melee('Sharkman Karate')
			Sharkman_Karate_Buy = true
			Sharkman_Karate_S:Set(' ✅ : Sharkman Karate'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate').Level.Value))
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate').Level.Value) >= 300 then
				Sharkman_Karate_H = true
			end
		end
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
			Don_Swan_S:Set(' ✅ : Quest Don Swan')
			repeat wait()
				EquipWeapon('Electric Claw')
			until Check_Mastery_Melee('Electric Claw')
			Electric_Claw_Buy = true
			Electric_Claw_S:Set(' ✅ : Electric Claw'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw').Level.Value))
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw').Level.Value) >= 330 then
				Electric_Claw_H = true
			end
		end
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") == 2 then
			repeat wait()
				EquipWeapon('Dragon Talon')
			until Check_Mastery_Melee('Dragon Talon')
			Dragon_Talon_Buy = true
			Dragon_Talon_S:Set(' ✅ : Dragon Talon'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon').Level.Value))
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon').Level.Value) >= 350 then
				Dragon_Talon_H = true
			end
		end
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") == 2 then
			God_Human_C_S:Set(' Godhuman : ✅')
			repeat wait()
				EquipWeapon('Godhuman')
			until Check_Mastery_Melee('Godhuman')
			God_Human_Buy = true
			God_Human_S:Set(' ✅ : Godhuman'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChild('Godhuman').Level.Value))
		end
	end
	Set_Melee()
	function Get_Item_Inventory(vu)
		if not game.Players.LocalPlayer.Backpack:FindFirstChild(vu) and not game.Players.LocalPlayer.Character:FindFirstChild(vu) then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",tostring(vu))
		end
	end
	local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
	for i,v in pairs(Inventory) do
		if v.Type == "Sword" then
			wait()
			if v["Name"] == 'Saber' then
				Saber_H = true
				Saber_S:Set(' ✅ : Saber'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Bisento' then
				Bisento_H = true
				Bisento_S:Set(' ✅ : Bisento'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Soul Cane' then
				Soul_Cane_H = true
				
				Soul_Cane_S:Set(' ✅ : Soul Cane'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Rengoku' then
				Rengoku_H = true
				
				Rengoku_S:Set(' ✅ : Rengoku'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Yama' then
				Yama_H = true
				if v.Mastery >= 300 then
					Yama_Mas = true
				end
				if v.Mastery >= 400 then
					Yama_M_Q = true
				end
				Yama_S:Set(' ✅ : Yama'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Koko' then
				Koko_H = true
				
				Koko_S:Set(' ✅ : Koko'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Spikey Trident' then
				Spikey_Trident_H = true
				if v.Mastery >= 300 then
					Spikey_Trident_Mas = true
				end
				Spikey_Trident_S:Set(' ✅ : Spikey Trident'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Buddy Sword' then
				Buddy_Sword_H = true
				
				Buddy_Sword_S:Set(' ✅ : Buddy Sword'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Canvander' then
				Canvander_H = true
				 -- and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character[x].ClassName == 'Tool'
				Canvander_S:Set(' ✅ : Canvander'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Tushita' then
				Tushita_H = true
				if v.Mastery >= 300 then
					Tushita_Mas = true
				end
				if v.Mastery >= 400 then
					Tushita_Mas = true
				end
				Tushita_S:Set(' ✅ : Tushita'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Hallow Scythe' then
				Hallow_Scryte_H = true
				if v.Mastery >= 350 then
					Hallow_Scryte_Mas = true
				end
				Hallow_Scythe_S:Set(' ✅ : Hallow Scythe'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Midnight Blade' then
				Midnight_Blade_H = true
				
				Midnight_Blade_S:Set(' ✅ : Midnight Blade'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Shisui' then
				Shisui_H = true
				
				Shisui_S:Set(' ✅ : Shisui'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Saddi' then
				Saddi_H = true
				
				Saddi_S:Set(' ✅ : Saddi'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Wando' then
				Wando_H = true
				
				Wando_S:Set(' ✅ : Wando'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Dark Dagger' then
				Dark_Dagger_H = true
				
				Dark_Dagger_S:Set(' ✅ : Dark Dagger'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'True Triple Katana' then
				True_Triple_Katana_H = true
				
				True_Triple_Katana_S:Set(' ✅ : True Triple Katana'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Cursed Dual Katana' then
				Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : ✅')
				Cursed_Dual_Katana_H = true
				if v.Mastery >= 350 then
					Cursed_Dual_Katana_Mas = true
				end
				Cursed_Dual_Katana_S:Set(' ✅ : Cursed Dual Katana'..' : '. .. tostring(v.Mastery))
			end
			if v['Name'] == 'Shark Anchor' then
				Shark_Anchor_H = true
				if v.Master >= 350 then
					Shark_Anchor_Mas = true
				end
			end
		end
	end
	for i,v in pairs(Inventory) do
		if v.Type == "Gun" then
			wait()
			if v["Name"] == 'Soul Guitar' then
				Soul_Guitar_C_S:Set(' Soul Guitar : ✅')
				Soul_Guitar_H = true
				if v.Mastery >= 300 then
					Soul_Guitar_Mas = true
				end
				Soul_Guitar_S:Set(' ✅ : Soul Guitar'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Kabucha' then
				Kabucha_H = true
				if v.Mastery >= 250 then
					Kabucha = true
				end
				Kabucha_S:Set(' ✅ : Kabucha'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Acidum Rifle' then
				Acidum_Rifle_H = true
				if v.Mastery >= 200 then
					Acidum_Rifle_Mas = true
				end
				Acidum_Rifle_S:Set(' ✅ : Acidum Rifle'..' : '. .. tostring(v.Mastery))
			end
			if v["Name"] == 'Serpent Bow' then
				Serpent_Bow_H = true
				
				Serpent_Bow_S:Set(' ✅ : Serpent Bow'..' : '. .. tostring(v.Mastery))
			end
		end
	end
	function Set_Accessory()
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
			if v["Name"] == 'Valkyrie Helm' then
				Valkyrie_Helmet_H = true
                Valkyrie_Helmet_S_L:Set(' ✅ : Valkyrie Helm')
				Valkyrie_Helmet_S:Set(' ✅ : Valkyrie Helm')
			end
			if v["Name"] == 'Holy Crown' then
				Holy_Crown_S:Set(' ✅ : Holy Crown')
			end
			if v["Name"] == 'Pale Scarf' then
				Pale_Scarf_S:Set(' ✅ : Pale Scarf')
			end
			if v["Name"] == 'Dark Coat' then
				Dark_Coat_S:Set(' ✅ : Dark Coat')
			end
			if v["Name"] == 'Swan Glasses' then
				Swan_Glass_S:Set(' ✅ : Swan Glasses')
			end
			if v["Name"] == 'Zebra Cap' then
				Zebra_Cap_S:Set(' ✅ : Zebra Cap')
			end
			if v["Name"] == 'Warrior Helmet' then
				Warrior_Helmet_S:Set(' ✅ : Warrior Helmet')
			end
		end
	end
	Set_Accessory()
	
	-- Luncher
	List = {
	Raid = false,
	Fruit = false,
	Boss = false,
	Quest = false
	}
	function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
	end
	function TPBoat(p,boat,speedx,stop)
		if stop == nil then
			stop = false
		end
		local Distance = (p.Position - boat.Position).Magnitude
		Speed = speedx
		TweenP = game:GetService("TweenService"):Create(boat,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
		if stop == true then
			TweenP:Cancel()
		else
			TweenP:Play()
		end
	end
	function TPZ(p)
		local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 100 then
			Speed = 50
		elseif Distance < 400 then
			Speed = 400
		elseif Distance < 1000 then
			Speed = 300
		elseif Distance < 1500 then
			Speed = 260
		elseif Distance >= 1500 then
			Speed = 300
		end
		Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
		Tween:Play()
	end
	function TPZX(p)
		local Distance = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 100 then
			Speed = 20
		elseif Distance < 400 then
			Speed = 400
		elseif Distance < 1000 then
			Speed = 300
		elseif Distance < 1500 then
			Speed = 260
		elseif Distance >= 1500 then
			Speed = 300
		end
		Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = p})
		Tween:Play()
	end
	function CheckCF(vu)
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemyRegions:GetChildren()) do
			if (v.Position-CFrameMon.Position).Magnitude <= vu then
				CFrameMon = v.CFrame
				return
			end
		end
	end
	function SpawnMon()
		for i2,v2 in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemyRegions:GetChildren()) do
			if (v2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
				game:GetService("ReplicatedStorage").Remotes.Location:FireServer(v)
				return
			end
		end
	end
	function CheckQuestBoss()
	-- Old World
		local Lv = game.Players.LocalPlayer.Data.Level.Value
		if Select_List_Boss == "Saber Expert" then
			MsBoss = "Saber Expert"
			NameBoss_X = "Saber Expert"
			CFrameBoss_X = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif Select_List_Boss == "The Saw" then
			MsBoss = "The Saw"
			NameBoss_X = "The Saw"
			CFrameBoss_X = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif Select_List_Boss == "Greybeard" then
			MsBoss = "Greybeard"
			NameBoss_X = "Greybeard"
			CFrameBoss_X = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif Select_List_Boss == "The Gorilla King" then
			MsBoss = "The Gorilla King"
			NameBoss_XNameBoss_X = "The Gorilla King"
			NameQuestBoss_X = "JungleQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 25 then
				CFrameQBoss_X = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			end
			CFrameBoss_X = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
			
		elseif Select_List_Boss == "Bobby" then
			MsBoss = "Bobby"
			NameBoss_X = "Bobby"
			NameQuestBoss_X = "BuggyQuest1"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 55 then
			CFrameQBoss_X = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			end
			CFrameBoss_X = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
			
		elseif Select_List_Boss == "Yeti" then
			MsBoss = "Yeti"
			NameBoss_X = "Yeti"
			NameQuestBoss_X = "SnowQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 110 then
			CFrameQBoss_X = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			end
			CFrameBoss_X = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
			
		elseif Select_List_Boss == "Mob Leader" then
			MsBoss = "Mob Leader"
			NameBoss_X = "Mob Leader"
			CFrameBoss_X = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif Select_List_Boss == "Vice Admiral" then
			MsBoss = "Vice Admiral"
			NameBoss_X = "Vice Admiral"
			NameQuestBoss_X = "MarineQuest2"
			QuestLvBoss_X = 2
			if game.Players.LocalPlayer.Data.Level.Value >= 130 then
			CFrameQBoss_X = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			end
			CFrameBoss_X = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
			
		elseif Select_List_Boss == "Warden" then
			MsBoss = "Warden"
			NameBoss_X = "Warden"
			NameQuestBoss_X = "ImpelQuest"
			QuestLvBoss_X = 1
			if game.Players.LocalPlayer.Data.Level.Value >= 220 then
			CFrameQBoss_X = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			end
			CFrameBoss_X = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			
		elseif Select_List_Boss == "Chief Warden" then
			MsBoss = "Chief Warden"
			NameBoss_X = "Chief Warden"
			NameQuestBoss_X = "ImpelQuest"
			QuestLvBoss_X = 2
			if game.Players.LocalPlayer.Data.Level.Value >= 230 then
			CFrameQBoss_X = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			end
			CFrameBoss_X = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			
		elseif Select_List_Boss == "Thunder God" then
			MsBoss = "Thunder God"
			NameBoss_X = "Swan"
			NameQuestBoss_X = "ImpelQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 240 then
			CFrameQBoss_X = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			end
			CFrameBoss_X = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
			
		elseif Select_List_Boss == "Magma Admiral" then
			MsBoss = "Magma Admiral"
			NameBoss_X = "Magma Admiral"
			NameQuestBoss_X = "MagmaQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 350 then
			CFrameQBoss_X = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			end
			CFrameBoss_X = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
			
		elseif Select_List_Boss == "Fishman Lord" then
			MsBoss = "Fishman Lord"
			NameBoss_X = "Fishman Lord"
			NameQuestBoss_X = "FishmanQuest"
			QuestLvBoss_X = 3
			CFrameBoss_X = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
			if game.Players.LocalPlayer.Data.Level.Value >= 425 then
				CFrameQBoss_X = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				if (CFrameQBoss_X.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			end
		elseif Select_List_Boss == "Wysper" then
			MsBoss = "Wysper"
			NameBoss_X = "Wysper"
			NameQuestBoss_X = "SkyExp1Quest"
			QuestLvBoss_X = 3
			CFrameBoss_X = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
			if game.Players.LocalPlayer.Data.Level.Value >= 425 then
			CFrameQBoss_X = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				if (CFrameQBoss_X.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			end
		elseif Select_List_Boss == "Thunder God" then
			MsBoss = "Thunder God"
			NameBoss_X = "Thunder God"
			NameQuestBoss_X = "SkyExp2Quest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 575 then
			CFrameQBoss_X = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			end
			CFrameBoss_X = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
			
		elseif Select_List_Boss == "Cyborg" then
			MsBoss = "Cyborg"
			NameBoss_X = "Cyborg"
			NameQuestBoss_X = "FountainQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 675 then
			CFrameQBoss_X = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			end
			CFrameBoss_X = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			
		-- New World
		elseif Select_List_Boss == "Diamond" then
			MsBoss = "Diamond"
			NameBoss_X = "Diamond"
			NameQuestBoss_X = "Area1Quest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 750 then
			CFrameQBoss_X = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			end
			CFrameBoss_X = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
			
		elseif Select_List_Boss == "Jeremy" then
			MsBoss = "Jeremy"
			NameBoss_X = "Jeremy"
			NameQuestBoss_X = "Area2Quest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 850 then
			CFrameQBoss_X = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			end
			CFrameBoss_X = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif Select_List_Boss == "Fajita" then
			MsBoss = "Fajita"
			NameBoss_X = "Fajita"
			NameQuestBoss_X = "MarineQuest3"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 925 then
			CFrameQBoss_X = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			end
			CFrameBoss_X = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
			
		elseif Select_List_Boss == "Don Swan" then
			MsBoss = "Don Swan"
			NameBoss_X = "Don Swan"
			CFrameBoss_X = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
			
		elseif Select_List_Boss == "Smoke Admiral" then
			MsBoss = "Smoke Admiral"
			NameBoss_X = "Smoke Admiral"
			NameQuestBoss_X = "IceSideQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1150 then
			CFrameQBoss_X = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			end
			CFrameBoss_X = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
			
		elseif Select_List_Boss == "Cursed Captain" then
			MsBoss = "Cursed Captain"
			NameBoss_X = "Cursed Captain"
			CFrameBoss_X = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif Select_List_Boss == "Darkbeard" then
			MsBoss = "Darkbeard"
			NameBoss_X = "Darkbeard"
			CFrameBoss_X = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif Select_List_Boss == "Order" then
			MsBoss = "Order"
			NameBoss_X = "Order"
			CFrameBoss_X = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif Select_List_Boss == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral"
			NameBoss_X = "Awakened Ice Admiral"
			NameQuestBoss_X = "FrostQuest"
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1400 then
			CFrameQBoss_X = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			end
			CFrameBoss_X = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
			
		elseif Select_List_Boss == "Tide Keeper" then
			MsBoss = "Tide Keeper"
			NameBoss_X = "Tide Keeper"
			NameQuestBoss_X = "ForgottenQuest"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1475 then
			CFrameQBoss_X = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			end
			CFrameBoss_X = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			
		-- Thire World
		elseif Select_List_Boss == "Stone" then
			MsBoss = "Stone"
			NameBoss_X = "Stone"
			NameQuestBoss_X = "PiratePortQuest"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1550 then
			CFrameQBoss_X = CFrame.new(-290, 44, 5577)
			end
			CFrameBoss_X = CFrame.new(-1085, 40, 6779)
			
		elseif Select_List_Boss == "Island Empress" then
			MsBoss = "Island Empress"
			NameBoss_X = "Island Empress"
			NameQuestBoss_X = "AmazonQuest2"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1675 then
			CFrameQBoss_X = CFrame.new(5443, 602, 752)
			end
			CFrameBoss_X = CFrame.new(5659, 602, 244)
			
		elseif Select_List_Boss == "Kilo Admiral" then
			MsBoss = "Kilo Admiral"
			NameBoss_X = "Kilo Admiral"
			NameQuestBoss_X = "MarineTreeIsland"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1750 then
			CFrameQBoss_X = CFrame.new(2178, 29, -6737)
			end
			CFrameBoss_X =CFrame.new(2846, 433, -7100)
			
		elseif Select_List_Boss == "Captain Elephant" then
			MsBoss = "Captain Elephant"
			NameBoss_X = "Captain Elephant"
			NameQuestBoss_X = "DeepForestIsland"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1875 then
			CFrameQBoss_X = CFrame.new(-13232, 333, -7631)
			end
			CFrameBoss_X = CFrame.new(-13221, 325, -8405)
			
		elseif Select_List_Boss == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate"
			NameBoss_X = "Beautiful Pirate"
			NameQuestBoss_X = "DeepForestIsland2"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 1950 then
			CFrameQBoss_X = CFrame.new(-12686, 391, -9902)
			end
			CFrameBoss_X = CFrame.new(5182, 23, -20)
			
		elseif Select_List_Boss == "rip_indra True Form" then
			MsBoss = "rip_indra True Form"
			NameBoss_X = "rip_indra True Form"
			CFrameBoss_X = CFrame.new(-5359, 424, -2735)
			
		elseif Select_List_Boss == "Longma" then
			MsBoss = "Longma"
			NameBoss_X = "Longma"
			CFrameBoss_X = CFrame.new(-10248.3936, 353.79129, -9306.34473)
			
		elseif Select_List_Boss == "Soul Reaper" then
			MsBoss = "Soul Reaper"
			NameBoss_X = "Soul Reaper"
			CFrameBoss_X = CFrame.new(-9515.62109, 315.925537, 6691.12012)
			
		elseif Select_List_Boss == "Cake Queen" then
			MsBoss = "Cake Queen"
			NameBoss_X = "Cake Queen"
			NameQuestBoss_X = "IceCreamIslandQuest"             
			QuestLvBoss_X = 3
			if game.Players.LocalPlayer.Data.Level.Value >= 2175 then
				CFrameQBoss_X = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
			end
			CFrameBoss_X = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
			
		end
	end
	function CheckLevel2()
		local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
		if Old_World then
			if game.Players.LocalPlayer.Data.Level.Value == 1 or game.Players.LocalPlayer.Data.Level.Value <= 9 or SelectMonster == "" then -- Bandit
				Ms = "Bandit"
				NameQuest = "BanditQuest1"
				QuestLv = 1
				NameMon = "Bandit"
				CFrameQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
				CFrameMon = CFrame.new(1353.44885, 3.40935516, 1376.92029, 0.776053488, -6.97791975e-08, 0.630666852, 6.99138596e-08, 1, 2.4612488e-08, -0.630666852, 2.49917598e-08, 0.776053488)
				Next_Level_X = 10
			elseif game.Players.LocalPlayer.Data.Level.Value == 10 or game.Players.LocalPlayer.Data.Level.Value <= 100 then
				Ms = "Shanda"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shanda"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
	
				Next_Level_X = 75
			elseif game.Players.LocalPlayer.Data.Level.Value >= 60 and game.Players.LocalPlayer.Data.Level.Value <= 75-1 or SelectMonster == "Desert Bandit" then
				Ms = "Desert Bandit"
				NameQuest = "DesertQuest"
				QuestLv = 1
				NameMon = "Desert Bandit"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(932.788818, 6.8503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
			elseif game.Players.LocalPlayer.Data.Level.Value >= 75 and game.Players.LocalPlayer.Data.Level.Value <= 90-1 or SelectMonster == "Desert Officer" then
				Ms = "Desert Officer"
				NameQuest = "DesertQuest"
				QuestLv = 2
				NameMon = "Desert Officer"
				CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
				CFrameMon = CFrame.new(1617.07886, 1.5542295, 4295.54932, -0.997540116, -2.26287735e-08, -0.070099175, -1.69377223e-08, 1, -8.17798806e-08, 0.070099175, -8.03913949e-08, -0.997540116)
				
				SelectMonster = "Desert Bandit"
				Next_Level_X = 90
			elseif game.Players.LocalPlayer.Data.Level.Value >= 90 and game.Players.LocalPlayer.Data.Level.Value <= 100-1 or SelectMonster == "Snow Bandit" then -- Snow Bandits
				Ms = "Snow Bandit"
				NameQuest = "SnowQuest"
				QuestLv = 1
				NameMon = "Snow Bandit"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1412.92346, 55.3503647, -1260.62036, -0.246266365, -0.0169920288, -0.969053388, 0.000432241941, 0.999844253, -0.0176417865, 0.969202161, -0.00476344163, -0.246220857)
				
				if SelectMonster == "Snow Bandit" then
				else
					Next_Level_X = 100
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 110 then
					SelectBoss_P = "Yeti" 
				end
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 100 or game.Players.LocalPlayer.Data.Level.Value <= 119 or SelectMonster == "Snowman" then -- Snowman
				Next_Level_X = 120
				Ms = "Snowman"
				NameQuest = "SnowQuest"
				QuestLv = 2
				NameMon = "Snowman"
				CFrameQ = CFrame.new(1389.74451, 86.6520844, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
				CFrameMon = CFrame.new(1376.86401, 97.2779999, -1396.93115, -0.986755967, 7.71178321e-08, -0.162211925, 7.71531674e-08, 1, 6.08143536e-09, 0.162211925, -6.51427134e-09, -0.986755967)
				
				
				if game.Players.LocalPlayer.Data.Level.Value >= 110 then
					SelectBoss_P = "Yeti" 
				end
				SelectMonster = "Snow Bandit"
			elseif game.Players.LocalPlayer.Data.Level.Value == 120 or game.Players.LocalPlayer.Data.Level.Value <= 174 or SelectMonster == "Chief Petty Officer" then -- Chief Petty Officer
				Ms = "Chief Petty Officer"
				NameQuest = "MarineQuest2"
				QuestLv = 1
				NameMon = "Chief Petty Officer"
				CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
				
				
				if game.Players.LocalPlayer.Data.Level.Value >= 130 then
					SelectBoss_P = "Vice Admiral"
				end
				if SelectMonster == "Chief Petty Officer" then
				else
					Next_Level_X = 175
				end
			elseif SelectMonster == "Sky Bandit" then -- Sky Bandit
				Ms = "Sky Bandit"
				NameQuest = "SkyQuest"
				QuestLv = 1
				NameMon = "Sky Bandit"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-4959.51367, 365.39267, -2974.56812, 0.964867651, 7.74418396e-08, 0.262737453, -6.95931988e-08, 1, -3.91783708e-08, -0.262737453, 1.95171506e-08, 0.964867651)
				
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 175 or game.Players.LocalPlayer.Data.Level.Value <= 190-1 or SelectMonster == "Dark Master" then -- Dark Master
				
				Ms = "Dark Master"
				NameQuest = "SkyQuest"
				QuestLv = 2
				NameMon = "Dark Master"
				CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-5079.98096, 376.477356, -2194.17139, 0.465965867, -3.69776352e-08, 0.884802461, 3.40249851e-09, 1, 4.00000886e-08, -0.884802461, -1.56281423e-08, 0.465965867)
				
				SelectMonster = "Sky Bandit"
				if SelectMonster == "Dark Master" then
				else
					Next_Level_X = 190
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 190 or game.Players.LocalPlayer.Data.Level.Value <= 209 or SelectMonster == "Prisoner" then
				
				Ms = "Prisoner"
				QuestLv = 1
				NameQuest = "PrisonerQuest"
				NameMon = "Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				if game.Players.LocalPlayer.Data.Level.Value >= 220 then
					SelectBoss_P = "Warden" 
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 232 then
					SelectBoss_P = "Chief Warden"
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 242 then
					SelectBoss_P = "Thunder God"
				end
				if SelectMonster == "Prisoner" then
				else
					Next_Level_X = 210
				end
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 210 or game.Players.LocalPlayer.Data.Level.Value <= 249 or SelectMonster == "Dangerous Prisoner" then
				if game.Players.LocalPlayer.Data.Level.Value >= 220 then
					SelectBoss_P = "Warden" 
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 232 then
					SelectBoss_P = "Chief Warden"
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 242 then
					SelectBoss_P = "Thunder God"
				end
				Ms = "Dangerous Prisoner"
				QuestLv = 2
				NameQuest = "PrisonerQuest"
				NameMon = "Dangerous Prisoner"
				CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
				CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
				SelectMonster = "Prisoner"
				Next_Level_X = 250
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 250 or game.Players.LocalPlayer.Data.Level.Value <= 274 or SelectMonster == "Toga Warrior" then -- Toga Warrior
				
				Ms = "Toga Warrior"
				NameQuest = "ColosseumQuest"
				QuestLv = 1
				NameMon = "Toga Warrior"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
				
				if SelectMonster == "Toga Warrior" then
				else
					Next_Level_X = 275
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 275 or game.Players.LocalPlayer.Data.Level.Value <= 299 or SelectMonster == "Gladiator" then -- Gladiato
				
				Ms = "Gladiator"
				NameQuest = "ColosseumQuest"
				QuestLv = 2
				NameMon = "Gladiator"
				CFrameQ = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
				CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
				
				SelectMonster = "Toga Warrior"
				Next_Level_X = 300
			elseif game.Players.LocalPlayer.Data.Level.Value == 300 or game.Players.LocalPlayer.Data.Level.Value <= 324 or SelectMonster == "Military Soldier" then -- Military Soldier
				if game.Players.LocalPlayer.Data.Level.Value >= 350 then
					SelectBoss_P = "Magma Admiral"
				end
				Ms = "Military Soldier"
				NameQuest = "MagmaQuest"
				QuestLv = 1
				NameMon = "Military Soldier"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
				
				if SelectMonster == "Military Soldier" then
				else
					Next_Level_X = 325
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 325 or game.Players.LocalPlayer.Data.Level.Value <= 374 or SelectMonster == "Military Spy" then -- Military Spy
				if game.Players.LocalPlayer.Data.Level.Value >= 350 then
					SelectBoss_P = "Magma Admiral"
				end
				Ms = "Military Spy"
				NameQuest = "MagmaQuest"
				QuestLv = 2
				NameMon = "Military Spy"
				CFrameQ = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
				CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
				
				
				SelectMonster = "Military Soldier"
				Next_Level_X = 375
			elseif game.Players.LocalPlayer.Data.Level.Value == 375 or game.Players.LocalPlayer.Data.Level.Value <= 399 or SelectMonster == "Fishman Warrior" then -- Fishman Warrior
				if game.Players.LocalPlayer.Data.Level.Value >= 425 then
					SelectBoss_P = "Fishman Lord"
				end
				Ms = "Fishman Warrior"
				NameQuest = "FishmanQuest"
				QuestLv = 1
				NameMon = "Fishman Warrior"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
				if SelectMonster == "Fishman Warrior" then
				else
					Next_Level_X = 400
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 400 or game.Players.LocalPlayer.Data.Level.Value <= 449 or SelectMonster == "Fishman Commando" then -- Fishman Commando
				if game.Players.LocalPlayer.Data.Level.Value >= 425 then
					SelectBoss_P = "Fishman Lord"
				end
				Ms = "Fishman Commando"
				NameQuest = "FishmanQuest"
				QuestLv = 2
				NameMon = "Fishman Commando"
				CFrameQ = CFrame.new(61122.5625, 18.4716396, 1568.16504)
				CFrameMon = CFrame.new(61902.7383, 18.4828358, 1478.33936, -0.803795099, 0, -0.594906271, 0, 1, 0, 0.594906271, 0, -0.803795099)
				if SelectMonster == "Fishman Commando" then
				else
					Next_Level_X = 450
				end
				SelectMonster = "Fishman Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 or SelectMonster == "God's Guard" then 
				Ms = "God's Guard"
				NameQuest = "SkyExp1Quest"
				QuestLv = 1
				NameMon = "God's Guards"
				CFrameQ = CFrame.new(-4721.71436, 845.277161, -1954.20105)
				CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
				if SelectMonster == "God's Guard" then
				else
					Next_Level_X = 475
				end
				SelectMonster = "Fishman Commando"
			elseif game.Players.LocalPlayer.Data.Level.Value == 475 or game.Players.LocalPlayer.Data.Level.Value <= 524 or SelectMonster == "Shanda" then
				Ms = "Shanda"
				NameQuest = "SkyExp1Quest"
				QuestLv = 2
				NameMon = "Shandas"
				CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
				CFrameMon = CFrame.new(-7904.57373, 5584.37646, -459.62973)
				if game.Players.LocalPlayer.Data.Level.Value >= 500 then
					SelectBoss_P = "Wysper"
				end
				if SelectMonster == "Shanda" then
				else
					Next_Level_X = 525
				end
				SelectMonster = "God's Guard"
			elseif game.Players.LocalPlayer.Data.Level.Value == 525 or game.Players.LocalPlayer.Data.Level.Value <= 549 or SelectMonster == "Royal Squad" then -- Royal Squad
				
				Ms = "Royal Squad"
				NameQuest = "SkyExp2Quest"
				QuestLv = 1
				NameMon = "Royal Squad"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7555.04199, 5606.90479, -1303.24744, -0.896107852, -9.6057462e-10, -0.443836004, -4.24974544e-09, 1, 6.41599973e-09, 0.443836004, 7.63560326e-09, -0.896107852)
				
				
				if SelectMonster == "Royal Squad" then
				else
					Next_Level_X = 550
				end
				SelectMonster = "Shanda"
			elseif game.Players.LocalPlayer.Data.Level.Value == 550 or game.Players.LocalPlayer.Data.Level.Value <= 624 or SelectMonster == "Royal Soldier" then -- Royal Soldier
				if game.Players.LocalPlayer.Data.Level.Value >= 575 then
					SelectBoss_P = "Thunder God"
				end
				Ms = "Royal Soldier"
				NameQuest = "SkyExp2Quest"
				QuestLv = 2
				NameMon = "Royal Soldier"
				CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				CFrameMon = CFrame.new(-7837.31152, 5649.65186, -1791.08582, -0.716008604, 0.0104285581, -0.698013008, 5.02521061e-06, 0.99988848, 0.0149335321, 0.69809103, 0.0106890313, -0.715928733)
				
				
				if SelectMonster == "Royal Soldier" then
				else
					Next_Level_X = 625
				end
				SelectMonster = "Royal Squad"
				
			elseif game.Players.LocalPlayer.Data.Level.Value == 625 or game.Players.LocalPlayer.Data.Level.Value <= 649 or SelectMonster == "Galley Pirate" then -- Galley Pirate
				
				Ms = "Galley Pirate"
				NameQuest = "FountainQuest"
				QuestLv = 1
				NameMon = "Galley Pirate"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5569.80518, 38.5269432, 3849.01196, 0.896460414, 3.98027495e-08, 0.443124533, -1.34262139e-08, 1, -6.26611296e-08, -0.443124533, 5.02237434e-08, 0.896460414)
				
				if SelectMonster == "Galley Pirate" then
				else
					Next_Level_X = 650
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 650 or SelectMonster == "Galley Captain" then -- Galley Captain
				if game.Players.LocalPlayer.Data.Level.Value >= 675 then
					SelectBoss_P = "Cyborg"
				end
				Ms = "Galley Captain"
				NameQuest = "FountainQuest"
				QuestLv = 2
				NameMon = "Galley Captain"
				CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
				CFrameMon = CFrame.new(5782.90186, 94.5326462, 4716.78174, 0.361808896, -1.24757526e-06, -0.932252586, 2.16989656e-06, 1, -4.96097414e-07, 0.932252586, -1.84339774e-06, 0.361808896)
				
				
				
				SelectMonster = "Galley Pirate"
				Next_Level_X = 9999
			end
		end
		if New_World then
			if game.Players.LocalPlayer.Data.Level.Value == 700 or game.Players.LocalPlayer.Data.Level.Value <= 724 or SelectMonster == "Raider" then -- Raider
				Ms = "Raider" 
				NameQuest = "Area1Quest"
				QuestLv = 1
				NameMon = "Raider"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-737.026123, 10.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
				
				if SelectMonster == "Raider" then
				else
					Next_Level_X = 725
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 725 or game.Players.LocalPlayer.Data.Level.Value <= 774 or SelectMonster == "Mercenary" then -- Mercenary
				if game.Players.LocalPlayer.Data.Level.Value >= 750 then
					SelectBoss_P = "Diamond"
				end
				Ms = "Mercenary"
				NameQuest = "Area1Quest"
				QuestLv = 2
				NameMon = "Mercenary"
				CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
				CFrameMon = CFrame.new(-1022.21271, 72.9855194, 1891.39148, -0.990782857, 0, -0.135460541, 0, 1, 0, 0.135460541, 0, -0.990782857)
				
				if SelectMonster == "Mercenary" then
				else
					Next_Level_X = 775
				end
				SelectMonster = "Raider"
			elseif game.Players.LocalPlayer.Data.Level.Value == 775 or game.Players.LocalPlayer.Data.Level.Value <= 799 or SelectMonster == "Swan Pirate" then -- Swan Pirate
				Ms = "Swan Pirate"
				NameQuest = "Area2Quest"
				QuestLv = 1
				NameMon = "Swan Pirate"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(976.467651, 111.174057, 1229.1084, 0.00852567982, -4.73897828e-08, -0.999963999, 1.12251888e-08, 1, -4.7295778e-08, 0.999963999, -1.08215579e-08, 0.00852567982)
				
				if SelectMonster == "Swan Pirate" then
				else
					Next_Level_X = 800
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 800 or game.Players.LocalPlayer.Data.Level.Value <= 874 or SelectMonster == "Factory Staff" then -- Factory Staff
				Ms = "Factory Staff"
				NameQuest = "Area2Quest"
				QuestLv = 2
				NameMon = "Factory Staff"
				CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
				CFrameMon = CFrame.new(336.74585, 73.1620483, -224.129272, 0.993632793, 3.40154607e-08, 0.112668738, -3.87658332e-08, 1, 3.99718729e-08, -0.112668738, -4.40850592e-08, 0.993632793)
				
				if SelectMonster == "Factory Staff" then
				else
					Next_Level_X = 875
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 850 then
					SelectBoss_P = "Jeremy"
				end
				SelectMonster = "Swan Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value == 875 or game.Players.LocalPlayer.Data.Level.Value <= 899 or SelectMonster == "Marine Lieutenant" then -- Marine Lieutenant
				Ms = "Marine Lieutenant"
				NameQuest = "MarineQuest3"
				QuestLv = 1
				NameMon = "Marine Lieutenant"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-2842.69922, 72.9919434, -2901.90479, -0.762281299, 0, -0.64724648, 0, 1.00000012, 0, 0.64724648, 0, -0.762281299)
				
				if SelectMonster == "Marine Lieutenant" then
				else
					Next_Level_X = 900
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 900 or game.Players.LocalPlayer.Data.Level.Value <= 949 or SelectMonster == "Marine Captain" then -- Marine Captain
				Ms = "Marine Captain"
				NameQuest = "MarineQuest3"
				QuestLv = 2
				NameMon = "Marine Captain"
				CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
				CFrameMon = CFrame.new(-1814.70313, 72.9919434, -3208.86621, -0.900422215, 7.93464423e-08, -0.435017526, 3.68856199e-08, 1, 1.06050372e-07, 0.435017526, 7.94441988e-08, -0.900422215)
				if game.Players.LocalPlayer.Data.Level.Value >= 925 then
					SelectBoss_P = "Fajita"
				end
				if SelectMonster == "Marine Captain" then
				else
					Next_Level_X = 950
				end
				SelectMonster = "Marine Lieutenant"
			elseif game.Players.LocalPlayer.Data.Level.Value == 950 or game.Players.LocalPlayer.Data.Level.Value <= 974 or SelectMonster == "Zombie" then -- Zombie
				Ms = "Zombie"
				NameQuest = "ZombieQuest"
				QuestLv = 1
				NameMon = "Zombie"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-5649.23438, 126.0578, -737.773743, 0.355238914, -8.10359282e-08, 0.934775114, 1.65461245e-08, 1, 8.04023372e-08, -0.934775114, -1.3095117e-08, 0.355238914)
				
				if SelectMonster == "Zombie" then
				else
					Next_Level_X = 975
				end
				Bypass_TP_Dis = true
			elseif game.Players.LocalPlayer.Data.Level.Value == 975 or game.Players.LocalPlayer.Data.Level.Value <= 999 or SelectMonster == "Vampire" then -- Vampire
				Ms = "Vampire"
				NameQuest = "ZombieQuest"
				QuestLv = 2
				NameMon = "Vampire"
				CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
				CFrameMon = CFrame.new(-6030.32031, 0.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
				
				if SelectMonster == "Vampire" then
				else
					Next_Level_X = 1000
				end
				Bypass_TP_Dis = true
				SelectMonster = "Zombie"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1000 or game.Players.LocalPlayer.Data.Level.Value <= 1049 or SelectMonster == "Snow Trooper" then -- Snow Trooper **
				Ms = "Snow Trooper"
				NameQuest = "SnowMountainQuest"
				QuestLv = 1
				NameMon = "Snow Trooper"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(621.003418, 391.361053, -5335.43604, 0.481644779, 0, 0.876366913, 0, 1, 0, -0.876366913, 0, 0.481644779)
				
				if SelectMonster == "Snow Trooper" then
				else
					Next_Level_X = 1050
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1050 or game.Players.LocalPlayer.Data.Level.Value <= 1099 or SelectMonster == "Winter Warrior" then -- Winter Warrior
				Ms = "Winter Warrior"
				NameQuest = "SnowMountainQuest"
				QuestLv = 2
				NameMon = "Winter Warrior"
				CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
				CFrameMon = CFrame.new(1295.62683, 429.447784, -5087.04492, -0.698032081, -8.28980049e-08, -0.71606636, -1.98835952e-08, 1, -9.63858184e-08, 0.71606636, -5.30424877e-08, -0.698032081)
				
				if SelectMonster == "Winter Warrior" then
				else
					Next_Level_X = 1100
				end
				SelectMonster = "Snow Trooper"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1100 or game.Players.LocalPlayer.Data.Level.Value <= 1124 or SelectMonster == "Lab Subordinate" then -- Lab Subordinate
				Ms = "Lab Subordinate"
				NameQuest = "IceSideQuest"
				QuestLv = 1
				NameMon = "Lab Subordinate"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
				
				if SelectMonster == "Lab Subordinate" then
				else
					Next_Level_X = 1125
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1125 or game.Players.LocalPlayer.Data.Level.Value <= 1174 or SelectMonster == "Horned Warrior" then -- Horned Warrior
				if game.Players.LocalPlayer.Data.Level.Value >= 1150 then
					SelectBoss_P = "Smoke Admiral"
				end
				Ms = "Horned Warrior"
				NameQuest = "IceSideQuest"
				QuestLv = 2
				NameMon = "Horned Warrior"
				CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
				CFrameMon = CFrame.new(-6401.27979, 15.9775667, -5948.24316, 0.388303697, 0, -0.921531856, 0, 1, 0, 0.921531856, 0, 0.388303697)
				
				if SelectMonster == "Horned Warrior" then
				else
					Next_Level_X = 1175
				end
	
				SelectMonster = "Lab Subordinate"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1175 or game.Players.LocalPlayer.Data.Level.Value <= 1199 or SelectMonster == "Magma Ninja" then -- Magma Ninja
				Ms = "Magma Ninja"
				NameQuest = "FireSideQuest"
				QuestLv = 1
				NameMon = "Magma Ninja"
				CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-5466.06445, 57.6952019, -5837.42822, -0.988835871, 0, -0.149006829, 0, 1, 0, 0.149006829, 0, -0.988835871)
				
				if SelectMonster == "Magma Ninja" then
				else
					Next_Level_X = 1200
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1200 or game.Players.LocalPlayer.Data.Level.Value <= 1249 or SelectMonster == "Lava Pirate" then 
				Ms = "Lava Pirate"
				NameQuest = "FireSideQuest"
				QuestLv = 2
				NameMon = "Lava Pirate"
				CFrameQ = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
				CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
				
				if SelectMonster == "Lava Pirate" then
				else
					Next_Level_X = 1250
				end
				SelectMonster = "Magma Ninja"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1250 or game.Players.LocalPlayer.Data.Level.Value <= 1274 or SelectMonster == "Ship Deckhand" then 
				Ms = "Ship Deckhand"
				NameQuest = "ShipQuest1"
				QuestLv = 1
				NameMon = "Ship Deckhand"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
				if SelectMonster == "Ship Deckhand" then
				else
					Next_Level_X = 1275
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1275 or game.Players.LocalPlayer.Data.Level.Value <= 1299 or SelectMonster == "Ship Engineer" then 
				Ms = "Ship Engineer"
				NameQuest = "ShipQuest1"
				QuestLv = 2
				NameMon = "Ship Engineer"
				CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
				CFrameMon = CFrame.new(921.30249023438, 125.400390625, 32937.34375)
				if SelectMonster == "Ship Engineer" then
				else
					Next_Level_X = 1300
				end
				SelectMonster = "Ship Deckhand"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1300 or game.Players.LocalPlayer.Data.Level.Value <= 1324 or SelectMonster == "Ship Steward" then 
				Ms = "Ship Steward"
				NameQuest = "ShipQuest2"
				QuestLv = 1
				NameMon = "Ship Steward"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(917.96057128906, 136.89932250977, 33343.4140625)
				if SelectMonster == "Ship Steward" then
				else
					Next_Level_X = 1325
				end
				SelectMonster = "Ship Deckhand"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1325 or game.Players.LocalPlayer.Data.Level.Value <= 1349 or SelectMonster == "Ship Officer" then 
				Ms = "Ship Officer"
				NameQuest = "ShipQuest2"
				QuestLv = 2
				NameMon = "Ship Officer"
				CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
				CFrameMon = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
				if SelectMonster == "Ship Officer" then
				else
					Next_Level_X = 1350
				end
				SelectMonster = "Ship Steward"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1350 or game.Players.LocalPlayer.Data.Level.Value <= 1374 or SelectMonster == "Arctic Warrior" then 
				Ms = "Arctic Warrior"
				NameQuest = "FrostQuest"
				QuestLv = 1
				NameMon = "Arctic Warrior"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5878.23486, 81.3886948, -6136.35596, -0.451037169, 2.3908234e-07, 0.892505825, -1.08168464e-07, 1, -3.22542007e-07, -0.892505825, -2.4201924e-07, -0.451037169)
				
				if SelectMonster == "Arctic Warrior" then
				else
					Next_Level_X = 1375
				end
			elseif game.Players.LocalPlayer.Data.Level.Value == 1375 or game.Players.LocalPlayer.Data.Level.Value <= 1424 or SelectMonster == "Snow Lurker" then -- Snow Lurker
				if game.Players.LocalPlayer.Data.Level.Value >= 1400 then
					SelectBoss_P = "Awakened Ice Admiral"
				end
				Ms = "Snow Lurker"
				NameQuest = "FrostQuest"
				QuestLv = 2
				NameMon = "Snow Lurker"
				CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
				CFrameMon = CFrame.new(5513.36865, 60.546711, -6809.94971, -0.958693981, -1.65617333e-08, 0.284439981, -4.07668654e-09, 1, 4.44854642e-08, -0.284439981, 4.14883701e-08, -0.958693981)
				
				if SelectMonster == "Snow Lurker" then
				else
					Next_Level_X = 1450
				end
			
				SelectMonster = "Arctic Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value == 1425 or game.Players.LocalPlayer.Data.Level.Value <= 1449 or SelectMonster == "Sea Soldier" then -- Sea Soldier
				Ms = "Sea Soldier"
				NameQuest = "ForgottenQuest"
				QuestLv = 1
				NameMon = "Sea Soldier"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3115.78223, 63.8785706, -9808.38574, -0.913427353, 3.11199457e-08, 0.407000452, 7.79564235e-09, 1, -5.89660658e-08, -0.407000452, -5.06883708e-08, -0.913427353)
				
				if SelectMonster == "Sea Soldier" then
				else
					Next_Level_X = 1450
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1450 or SelectMonster == "Water Fighter" then -- Water Fighter
				if game.Players.LocalPlayer.Data.Level.Value >= 1475 then
					SelectBoss_P = "Tide Keeper"
				end
				Ms = "Water Fighter"
				NameQuest = "ForgottenQuest"
				QuestLv = 2
				NameMon = "Water Fighter"
				CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
				CFrameMon = CFrame.new(-3212.99683, 263.809296, -10551.8799, 0.742111444, -5.59139615e-08, -0.670276582, 1.69155214e-08, 1, -6.46908234e-08, 0.670276582, 3.66697037e-08, 0.742111444)
				
				if SelectMonster == "Water Fighter" then
				else
					Next_Level_X = 9999
				end
				SelectMonster = "Sea Soldier"
			end
		end
		if Three_World then
			if game.Players.LocalPlayer.Data.Level.Value >= 1500 and game.Players.LocalPlayer.Data.Level.Value <= 1524 or SelectMonster == "Pirate Millionaire" then -- Pirate Millionaire
				Ms = "Pirate Millionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 1
				NameMon = "Pirate Millionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				
				if SelectMonster == "Pirate Millionaire" then
				else
					Next_Level_X = 1525
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1525 and game.Players.LocalPlayer.Data.Level.Value <= 1574 or SelectMonster == "Pistol Billionaire" then -- Pistol Billionaire
				if game.Players.LocalPlayer.Data.Level.Value >= 1550 then
					SelectBoss_P = "Stone"
				end
				Ms = "Pistol Billionaire"
				NameQuest = "PiratePortQuest"
				QuestLv = 2
				NameMon = "Pistol Billionaire"
				CFrameQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
				CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
				
				if SelectMonster == "Pistol Billionaire" then
				else
					Next_Level_X = 1575 
				end
				
				SelectMonster = "Pirate Millionaire"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1575 and game.Players.LocalPlayer.Data.Level.Value <= 1599 or SelectMonster == "Dragon Crew Warrior" then -- Dragon Crew Warrior
				Ms = "Dragon Crew Warrior"
				NameQuest = "AmazonQuest"
				QuestLv = 1
				NameMon = "Dragon Crew Warrior"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
				
				if SelectMonster == "Dragon Crew Warrior" then
				else
					Next_Level_X = 1600
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1600 and game.Players.LocalPlayer.Data.Level.Value <= 1624 or SelectMonster == "Dragon Crew Archer" then -- Dragon Crew Archer
				Ms = "Dragon Crew Archer"
				NameQuest = "AmazonQuest"
				QuestLv = 2
				NameMon = "Dragon Crew Archer"
				CFrameQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
				CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
				
				if SelectMonster == "Dragon Crew Archer" then
				else
					Next_Level_X = 1625
				end
				SelectMonster = "Dragon Crew Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1625 and game.Players.LocalPlayer.Data.Level.Value <= 1649 or SelectMonster == "Female Islander" then 
				Ms = "Female Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 1
				NameMon = "Female Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
				
				if SelectMonster == "Female Islander" then
				else
					Next_Level_X = 1650
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1650 and game.Players.LocalPlayer.Data.Level.Value <= 1699 or SelectMonster == "Giant Islander" then -- Giant Islander
				Ms = "Giant Islander"
				NameQuest = "AmazonQuest2"
				QuestLv = 2
				NameMon = "Giant Islander"
				CFrameQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
				if game.Players.LocalPlayer.Data.Level.Value >= 1675 then
					SelectBoss_P = "Island Empress"
				end
				if SelectMonster == "Giant Islander" then
				else
					Next_Level_X = 1700
				end
			
				SelectMonster = "Female Islander"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1700 and game.Players.LocalPlayer.Data.Level.Value <= 1774 or SelectMonster == "Marine Commodore" then -- Marine Commodore
				Ms = "Marine Commodore"
				NameQuest = "MarineTreeIsland"
				QuestLv = 1
				NameMon = "Marine Commodore"
				CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
				CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
				if game.Players.LocalPlayer.Data.Level.Value >= 1750 then
					SelectBoss_P = "Kilo Admiral"
				end
				if SelectMonster == "Marine Commodore" then
				else
					Next_Level_X = 1775
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1775 and game.Players.LocalPlayer.Data.Level.Value <= 1799 or SelectMonster == "Fishman Raider" then -- Fishman Raider
				Ms = "Fishman Raider"
				NameQuest = "DeepForestIsland3"
				QuestLv = 1
				NameMon = "Fishman Raider"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
				
				if SelectMonster == "Fishman Raider" then
				else
					Next_Level_X = 1800
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game.Players.LocalPlayer.Data.Level.Value <= 1824 or SelectMonster == "Fishman Captain" then -- Fishman Captain
				Ms = "Fishman Captain"
				NameQuest = "DeepForestIsland3"
				QuestLv = 2
				NameMon = "Fishman Captain"
				CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
				CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
				
				if SelectMonster == "Fishman Captain" then
				else
					Next_Level_X = 1825
				end
				SelectMonster = "Fishman Raider"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1825 and game.Players.LocalPlayer.Data.Level.Value <= 1849 or SelectMonster == "Forest Pirate" then -- Forest Pirate
				Ms = "Forest Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 1
				NameMon = "Forest Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
				
				if SelectMonster == "Forest Pirate" then
				else
					Next_Level_X = 1850
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1850 and game.Players.LocalPlayer.Data.Level.Value <= 1899 or SelectMonster == "Mythological Pirate" then -- Mythological Pirate
				Ms = "Mythological Pirate"
				NameQuest = "DeepForestIsland"
				QuestLv = 2
				NameMon = "Mythological Pirate"
				CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
				CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
				if game.Players.LocalPlayer.Data.Level.Value >= 1875 then
					SelectBoss_P = "Captain Elephant" 
				end
				if SelectMonster == "Mythological Pirate" then
				else
					Next_Level_X = 1900
				end
			
				SelectMonster = "Forest Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1900 and game.Players.LocalPlayer.Data.Level.Value <= 1924 or SelectMonster == "Jungle Pirate" then -- Jungle Pirate
				Ms = "Jungle Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 1
				NameMon = "Jungle Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
				
				if SelectMonster == "Jungle Pirate" then
				else
					Next_Level_X = 1925
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1925 and game.Players.LocalPlayer.Data.Level.Value <= 1974 or SelectMonster == "Musketeer Pirate" then -- Musketeer Pirate
				Ms = "Musketeer Pirate"
				NameQuest = "DeepForestIsland2"
				QuestLv = 2
				NameMon = "Musketeer Pirate"
				CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
				CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
				
				if SelectMonster == "Musketeer Pirate" then
				else
					Next_Level_X = 1975
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 1950 then
					SelectBoss_P = "Beautiful Pirate"
				end
				SelectMonster = "Jungle Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 1975 and game.Players.LocalPlayer.Data.Level.Value <= 1999 or SelectMonster == "Reborn Skeleton" then
				Ms = "Reborn Skeleton"
				NameQuest = "HauntedQuest1"
				QuestLv = 1
				NameMon = "Reborn Skeleton"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
				
				if SelectMonster == "Reborn Skeleton" then
				elseif not LevelMax then
					Next_Level_X = 2000
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2000 and game.Players.LocalPlayer.Data.Level.Value <= 2024 or SelectMonster == "Living Zombie" then
				Ms = "Living Zombie"
				NameQuest = "HauntedQuest1"
				QuestLv = 2
				NameMon = "Living Zombie"
				CFrameQ = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
				CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
				
				if SelectMonster == "Living Zombie" then
				elseif not LevelMax then
					Next_Level_X = 2025
				end
				SelectMonster = "Reborn Skeleton"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2025 and game.Players.LocalPlayer.Data.Level.Value <= 2049  or  SelectMonster == "Demonic Soul" then
				Ms = "Demonic Soul"
				NameQuest = "HauntedQuest2"
				QuestLv = 1
				NameMon = "Demonic"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
				
				if SelectMonster == "Demonic Soul" then
				else
					Next_Level_X = 2050
				end
				SelectMonster = "Living Zombie"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2050 and game.Players.LocalPlayer.Data.Level.Value <= 2074 or SelectMonster == "Posessed Mummy" then
				Ms = "Posessed Mummy"
				NameQuest = "HauntedQuest2"
				QuestLv = 2
				NameMon = "Posessed Mummy"
				CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
				CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
				
				if SelectMonster == "Posessed Mummy" then
				else
					Next_Level_X = 2075
				end
				SelectMonster = "Demonic Soul"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2075 and game.Players.LocalPlayer.Data.Level.Value <= 2099 or SelectMonster == "Peanut Scout" then
				Ms = "Peanut Scout"
				NameQuest = "NutsIslandQuest"
				QuestLv = 1
				NameMon = "Peanut Scout"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-2098.07544, 192.611862, -10248.8867, 0.983392298, -9.57031787e-08, 0.181492642, 8.7276355e-08, 1, 5.44169616e-08, -0.181492642, -3.76732068e-08, 0.983392298)
				
				if SelectMonster == "Peanut Scout" then
				else
					Next_Level_X = 2100
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2100 and game.Players.LocalPlayer.Data.Level.Value <= 2124 or SelectMonster == "Peanut President" then
				Ms = "Peanut President"
				NameQuest = "NutsIslandQuest"
				QuestLv = 2
				NameMon = "Peanut President"
				CFrameQ = CFrame.new(-2104.17163, 38.1299706, -10194.418, 0.758814394, -1.38604395e-09, 0.651306927, 2.85280208e-08, 1, -3.1108879e-08, -0.651306927, 4.21863646e-08, 0.758814394)
				CFrameMon = CFrame.new(-1876.95959, 192.610947, -10542.2939, 0.0553516336, -2.83836812e-08, 0.998466909, -6.89634405e-10, 1, 2.84654931e-08, -0.998466909, -2.26418861e-09, 0.0553516336)
				SelectMonster = "Peanut Scout"
				
				if SelectMonster == "Peanut President" then
				else
					Next_Level_X = 2125
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2125 and game.Players.LocalPlayer.Data.Level.Value <= 2149 or SelectMonster == "Ice Cream Chef" then
				Ms = "Ice Cream Chef"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 1
				NameMon = "Ice Cream Chef"
				CFrameQ = CFrame.new(-820.404358, 65.8453293, -10965.5654, 0.822534859, 5.24448502e-08, -0.568714678, -2.08336317e-08, 1, 6.20846663e-08, 0.568714678, -3.92184099e-08, 0.822534859)
				CFrameMon = CFrame.new(-821.614075, 208.39537, -10990.7617, -0.870096624, 3.18909272e-08, 0.492881238, -1.8357893e-08, 1, -9.71107568e-08, -0.492881238, -9.35439957e-08, -0.870096624)
				
				if SelectMonster == "Ice Cream Chef" then
				else
					Next_Level_X = 2150
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2150 and game.Players.LocalPlayer.Data.Level.Value <= 2199 or SelectMonster == "Ice Cream Commander" then 
				Ms = "Ice Cream Commander"
				NameQuest = "IceCreamIslandQuest"
				QuestLv = 2
				NameMon = "Ice Cream Commander"
				CFrameQ = CFrame.new(-819.376526, 67.4634171, -10967.2832)
				CFrameMon = CFrame.new(-610.11669921875, 208.26904296875, -11253.686523438)
				
				if SelectMonster == "Ice Cream Commander" then
				else
					Next_Level_X = 2200
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 2175 then
					SelectBoss_P = "Cake Queen"
				end
				SelectMonster = "Ice Cream Chef"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2200 and game.Players.LocalPlayer.Data.Level.Value <= 2224 or SelectMonster == "Cookie Crafter" then 
				Ms = "Cookie Crafter"
				NameQuest = "CakeQuest1"
				QuestLv = 1
				NameMon = "Cookie Crafter"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
				
				if SelectMonster == "Cookie Crafter" then
				elseif not LevelMax then
					Next_Level_X = 2225
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2225 and game.Players.LocalPlayer.Data.Level.Value <= 2249 or SelectMonster == "Cake Guard" then 
				Ms = "Cake Guard"
				NameQuest = "CakeQuest1"
				QuestLv = 2
				NameMon = "Cake Guard"
				CFrameQ = CFrame.new(-2020.6068115234375, 37.82400894165039, -12027.80859375)
				CFrameMon = CFrame.new(-1817.9747314453125, 209.5632781982422, -12288.9228515625)
				SelectMonster = "Cookie Crafter"
				
				if SelectMonster == "Cake Guard" then
				elseif not LevelMax then
					Next_Level_X = 2250
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2250 and game.Players.LocalPlayer.Data.Level.Value < 2300 or SelectMonster == "Baking Staff" then 
				Ms = "Baking Staff"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				
				if SelectMonster == "Baking Staff" then
				elseif not LevelMax then
					Next_Level_X = 2300
				end
				
				SelectMonster = "Cookie Crafter"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2300 and game.Players.LocalPlayer.Data.Level.Value < 2325 or SelectMonster == "Cocoa Warrior" then 
				Ms = "Cocoa Warrior"
				NameQuest = "ChocQuest1"
				QuestLv = 1
				NameMon = "Cocoa Warrior"
				CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
				CFrameMon = CFrame.new(24.617475509643555, 24.734342575073242, -12227.267578125)
				if SelectMonster == "Cocoa Warrior" then
				else
					Next_Level_X = 2325
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2325 and game.Players.LocalPlayer.Data.Level.Value < 2350 or SelectMonster == "Chocolate Bar Battler" then 
				Ms = "Chocolate Bar Battler"
				NameQuest = "ChocQuest1"
				QuestLv = 2
				NameMon = "Chocolate Bar Battler"
				CFrameQ = CFrame.new(230.19186401367188, 24.7342586517334, -12202.6572265625)
				CFrameMon = CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375)
				if SelectMonster == "Chocolate Bar Battler" then
				else
					Next_Level_X = 2350
				end
				SelectMonster = "Cocoa Warrior"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2350 and game.Players.LocalPlayer.Data.Level.Value < 2375 or SelectMonster == "Sweet Thief" then 
				Ms = "Sweet Thief"
				NameQuest = "ChocQuest2"
				QuestLv = 1
				NameMon = "Sweet Thief"
				CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
				CFrameMon = CFrame.new(51.61184310913086, 24.79380989074707, -12574.873046875)
				if SelectMonster == "Sweet Thief" then
				else
					Next_Level_X = 2375
				end
				SelectMonster = "Chocolate Bar Battler"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2375 and game.Players.LocalPlayer.Data.Level.Value < 2400 or SelectMonster == "Candy Rebel" then 
				Ms = "Candy Rebel" 
				NameQuest = "ChocQuest2"
				QuestLv = 2
				NameMon = "Candy Rebel"
				CFrameQ = CFrame.new(149.1439208984375, 24.7938289642334, -12775.41015625)
				CFrameMon = CFrame.new(28.345605850219727, 24.79380226135254, -12949.5029296875)
				if SelectMonster == "Candy Rebel" then
				else
					Next_Level_X = 2400
				end
				SelectMonster = "Sweet Thief"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2400 and game.Players.LocalPlayer.Data.Level.Value < 2425 or SelectMonster == "Candy Pirate"  then
				Ms = "Candy Pirate" 
				NameQuest = "CandyQuest1"
				QuestLv = 1
				NameMon = "Candy Pirate"
				CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
				CFrameMon = CFrame.new(-1333.9425048828125, 16.907636642456055, -14424.8447265625)
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2425 and game.Players.LocalPlayer.Data.Level.Value < 2550 or SelectMonster == "Snow Demon" then
				Ms = "Snow Demon"
				NameQuest = "CandyQuest1"
				QuestLv = 2
				NameMon = "Snow Demon"
				CFrameQ = CFrame.new(-1146.80810546875, 16.107254028320312, -14444.353515625)
				CFrameMon = CFrame.new(-963.0213012695312, 16.1071834564209, -14289.576171875)
				if SelectMonster == "Candy Pirate" then
				else
					Next_Level_X = 2551
				end
				SelectMonster = "Candy Pirate"
			elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 then
				Ms = "Baking Staff"
				NameQuest = "CakeQuest2"
				QuestLv = 1
				NameMon = "Baking Staff"
				CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626)
				CFrameMon = CFrame.new(-1818.347900390625, 93.41275787353516, -12887.66015625)
				
				SelectMonster = "Cookie Crafter"
				local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
				if Lp == 'nil' or Lp == nil then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
					Cake_Prince_S:Set(' Cake Prince : Boss Spawn')
				else
					Cake_Prince_S:Set(' Cake Prince : '..Lp)
				end
			end
		end
	end
	function GetSkill_C(NameW,Skill)
		for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:GetChildren()) do
			if v.Name == NameW then
				if v:FindFirstChild(Skill) and tostring(v[Skill].Title.TextColor) == 'Institutional white' and v[Skill].Cooldown.AbsoluteSize.X == 0 then
					return true
				end
			end
		end
		return false
	end
	function CheckQuestBoss_L()
		-- Old World
			if SelectBoss == "Saber Expert" then
				MsBoss = "Saber Expert"
				NameBoss = "Saber Expert"
				CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
			elseif SelectBoss == "The Saw" then
				MsBoss = "The Saw"
				NameBoss = "The Saw"
				CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
			elseif SelectBoss == "Greybeard" then
				MsBoss = "Greybeard"
				NameBoss = "Greybeard"
				CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
			elseif SelectBoss == "The Gorilla King" then
				MsBoss = "The Gorilla King"
				NameBoss = "The Gorilla King"
				NameQuestBoss = "JungleQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
				CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
				
			elseif SelectBoss == "Bobby" then
				MsBoss = "Bobby"
				NameBoss = "Bobby"
				NameQuestBoss = "BuggyQuest1"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
				CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
				
			elseif SelectBoss == "Yeti" then
				MsBoss = "Yeti"
				NameBoss = "Yeti"
				NameQuestBoss = "SnowQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
				CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
				
			elseif SelectBoss == "Mob Leader" then
				MsBoss = "Mob Leader"
				NameBoss = "Mob Leader"
				CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
			elseif SelectBoss == "Vice Admiral" then
				MsBoss = "Vice Admiral"
				NameBoss = "Vice Admiral"
				NameQuestBoss = "MarineQuest2"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
				CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
				
			elseif SelectBoss == "Warden" then
				MsBoss = "Warden"
				NameBoss = "Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 1
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				
			elseif SelectBoss == "Chief Warden" then
				MsBoss = "Chief Warden"
				NameBoss = "Chief Warden"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 2
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				
			elseif SelectBoss == "Thunder God" then
				MsBoss = "Thunder God"
				NameBoss = "Swan"
				NameQuestBoss = "ImpelQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
				CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
				
			elseif SelectBoss == "Magma Admiral" then
				MsBoss = "Magma Admiral"
				NameBoss = "Magma Admiral"
				NameQuestBoss = "MagmaQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
				CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
				
			elseif SelectBoss == "Fishman Lord" then
				MsBoss = "Fishman Lord"
				NameBoss = "Fishman Lord"
				NameQuestBoss = "FishmanQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
				CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				end
			elseif SelectBoss == "Wysper" then
				MsBoss = "Wysper"
				NameBoss = "Wysper"
				NameQuestBoss = "SkyExp1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
				CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
				if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				end
			elseif SelectBoss == "Thunder God" then
				MsBoss = "Thunder God"
				NameBoss = "Thunder God"
				NameQuestBoss = "SkyExp2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
				CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
				
			elseif SelectBoss == "Cyborg" then
				MsBoss = "Cyborg"
				NameBoss = "Cyborg"
				NameQuestBoss = "FountainQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
				CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
				
			-- New World
			elseif SelectBoss == "Diamond" then
				MsBoss = "Diamond"
				NameBoss = "Diamond"
				NameQuestBoss = "Area1Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
				CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
				
			elseif SelectBoss == "Jeremy" then
				MsBoss = "Jeremy"
				NameBoss = "Jeremy"
				NameQuestBoss = "Area2Quest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
				CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
			elseif SelectBoss == "Fajita" then
				MsBoss = "Fajita"
				NameBoss = "Fajita"
				NameQuestBoss = "MarineQuest3"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
				CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
				
			elseif SelectBoss == "Don Swan" then
				MsBoss = "Don Swan"
				NameBoss = "Don Swan"
				CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
				
			elseif SelectBoss == "Smoke Admiral" then
				MsBoss = "Smoke Admiral"
				NameBoss = "Smoke Admiral"
				NameQuestBoss = "IceSideQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
				CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
				
			elseif SelectBoss == "Cursed Captain" then
				MsBoss = "Cursed Captain"
				NameBoss = "Cursed Captain"
				CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
			elseif SelectBoss == "Darkbeard" then
				MsBoss = "Darkbeard"
				NameBoss = "Darkbeard"
				CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
			elseif SelectBoss == "Order" then
				MsBoss = "Order"
				NameBoss = "Order"
				CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
			elseif SelectBoss == "Awakened Ice Admiral" then
				MsBoss = "Awakened Ice Admiral"
				NameBoss = "Awakened Ice Admiral"
				NameQuestBoss = "FrostQuest"
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
				CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
				
			elseif SelectBoss == "Tide Keeper" then
				MsBoss = "Tide Keeper"
				NameBoss = "Tide Keeper"
				NameQuestBoss = "ForgottenQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
				CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
				
			-- Thire World
			elseif SelectBoss == "Stone" then
				MsBoss = "Stone"
				NameBoss = "Stone"
				NameQuestBoss = "PiratePortQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-290, 44, 5577)
				CFrameBoss = CFrame.new(-1085, 40, 6779)
				
			elseif SelectBoss == "Island Empress" then
				MsBoss = "Island Empress"
				NameBoss = "Island Empress"
				NameQuestBoss = "AmazonQuest2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(5443, 602, 752)
				CFrameBoss = CFrame.new(5659, 602, 244)
				
			elseif SelectBoss == "Kilo Admiral" then
				MsBoss = "Kilo Admiral"
				NameBoss = "Kilo Admiral"
				NameQuestBoss = "MarineTreeIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(2178, 29, -6737)
				CFrameBoss =CFrame.new(2846, 433, -7100)
				
			elseif SelectBoss == "Captain Elephant" then
				MsBoss = "Captain Elephant"
				NameBoss = "Captain Elephant"
				NameQuestBoss = "DeepForestIsland"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-13232, 333, -7631)
				CFrameBoss = CFrame.new(-13221, 325, -8405)
				
			elseif SelectBoss == "Beautiful Pirate" then
				MsBoss = "Beautiful Pirate"
				NameBoss = "Beautiful Pirate"
				NameQuestBoss = "DeepForestIsland2"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-12686, 391, -9902)
				CFrameBoss = CFrame.new(5182, 23, -20)
				
			elseif SelectBoss == "rip_indra True Form" then
				MsBoss = "rip_indra True Form"
				NameBoss = "rip_indra True Form"
				CFrameBoss = CFrame.new(-5359, 424, -2735)
				
			elseif SelectBoss == "Longma" then
				MsBoss = "Longma"
				NameBoss = "Longma"
				CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
				
			elseif SelectBoss == "Soul Reaper" then
				MsBoss = "Soul Reaper"
				NameBoss = "Soul Reaper"
				CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
				
			elseif SelectBoss == "Cake Queen" then
				MsBoss = "Cake Queen"
				NameBoss = "Cake Queen"
				NameQuestBoss = "IceCreamIslandQuest"             
				QuestLvBoss = 3
				CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
				CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
				
			end
	end
		local function Check_Table(vp,xp)
			for i,v in pairs(vp) do
				if v == xp then
					return true
				end
			end
		end
	CheckMonSpawn = {}
	function Click()
		local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
		local CombatFramework = debug.getupvalues(Module)[2]
		local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
		CamShake:Stop()
		CombatFramework.activeController.attacking = false
		CombatFramework.activeController.timeToNextAttack = 0
		CombatFramework.activeController.hitboxMagnitude = 60
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	end
	function GetItem(vu)
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
			if v["Name"] == vu then
				return true
			end
		end
		return false
	end
	function FarmLevel()
		if FarmPlayer then
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
				end
				local xp = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				result = {}
				local regex = ("([^%s]+)"):format(" ")
				for each in xp:gmatch(regex) do
					table.insert(result, each)
				end
				if game.Workspace.Characters:FindFirstChild(result[2]) then
					for i,v in pairs(game.Workspace.Characters:GetChildren()) do
						if v.Name == result[2] then
							time_all_p = 0
							AttackPlayers = result[2]
							Farm_P_ATTK = true
							repeat wait(.1)
								RandomFarm = math.random(1,5)
								if RandomFarm == 1 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
								elseif RandomFarm == 2 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35))
								elseif RandomFarm == 3 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -35))
								elseif RandomFarm == 4 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0))
								elseif RandomFarm == 5 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(-35, 1, 0))
								else
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
								end
								EquipWeapon(Weapon)
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
								end
								if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
									time_all_p = 0
								end
							until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay')
							AttackPlayers = 'None'
							Farm_P_ATTK = false
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'font') then
								
							end
						end
					end
				elseif not game.Workspace.Characters:FindFirstChild(result[2]) then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
					end
				end
			elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				FarmPlayer = false
			end
		elseif FarmBoss_L then
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				if game.Workspace.Enemies:FindFirstChild(SelectBoss) or game.ReplicatedStorage:FindFirstChild(SelectBoss) then
					if game.Workspace.Enemies:FindFirstChild(SelectBoss) then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == SelectBoss and v.Humanoid.Health > 0 then
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								repeat wait()
									TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
									EquipWeapon(Weapon)
								until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Kaitun
								if not v.Parent or v.Humanoid.Health <= 0 then
									v:Destroy()
								end
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild(SelectBoss) then
						TPX(game.ReplicatedStorage:FindFirstChild(SelectBoss).HumanoidRootPart.CFrame*CFrame.new(0,25,0))
					end
				elseif not game.Workspace.Enemies:FindFirstChild(SelectBoss) and not game.ReplicatedStorage:FindFirstChild(SelectBoss) then
					FarmBoss_L = false
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
			elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				FarmBoss_L = false
			end
		elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and Ms ~= nil then
			if game.Players.LocalPlayer.Data.Level.Value <= 100 then
				if game.Players.LocalPlayer.Data.Level.Value >= Next_Level_X then
					SelectMonster = nil
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
			end
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			end
			CMS = false
			if Check_Table(CheckMonSpawn,Ms) == true then
				CMS = true
			end
			if CMS == false then
				TPX(CFrameMon)
				if (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
					for i = 500,0,-100 do
						CheckCF(i)
					end
					TPX(CFrameMon*CFrame.new(0,15,0))
					SpawnMon()
					table.insert(CheckMonSpawn,Ms)
				end
			else
				if not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
					if game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:FindFirstChild(NameMon) then
						for i,v in next,game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren() do
							if v.Name == NameMon and not game.Workspace.Enemies:FindFirstChild(Ms) and not game.ReplicatedStorage:FindFirstChild(Ms) then
								repeat wait(.1)
									TPX(v.CFrame*CFrame.new(0,15,0))
								until Start_Farm_Mastery_Gun or (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 16 or game.Workspace.Enemies:FindFirstChild(Ms) or game.ReplicatedStorage:FindFirstChild(Ms)
							end
						end
					else
						TPX(CFrameMon*CFrame.new(0,10,0))
					end
				end
				if game.Workspace.Enemies:FindFirstChild(Ms) then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == Ms and v.Humanoid.Health > 0 then
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							PosMon_X = v.HumanoidRootPart.CFrame
							StatrMagnet = true
							repeat wait()
								if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 23 then
									TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
								end
								EquipWeapon(Weapon)
							until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not Auto_Farm_Kaitun or Start_Farm_Mastery_Gun or Start_Farm_Mastery_Fruit 
							TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
							StatrMagnet = false
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(Ms) then
					TPX(game.ReplicatedStorage:FindFirstChild(Ms).HumanoidRootPart.CFrame*CFrame.new(0,20,0))
				end
			end
		elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
			Check_Level = false
			SelectBoss = nil
			if Old_World then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				local x = "Yeti"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 110 and game.Players.LocalPlayer.Data.Level.Value < 160 then
						SelectBoss = x
					end
				end
				local x = "Vice Admiral"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 130 and game.Players.LocalPlayer.Data.Level.Value < 180 then
						SelectBoss = x
					end
				end
				local x = "Warden"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 220 and game.Players.LocalPlayer.Data.Level.Value < 270 then
						SelectBoss = x
					end
				end
				local x = "Chief Warden"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 230 and game.Players.LocalPlayer.Data.Level.Value < 280 then
						SelectBoss = x
					end
				end
				local x = "Thunder God"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 240 and game.Players.LocalPlayer.Data.Level.Value < 290 then
						SelectBoss = x
					end
				end
				local x = "Magma Admiral"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 350 and game.Players.LocalPlayer.Data.Level.Value < 400 then
						SelectBoss = x
					end
				end
				local x = "Fishman Lord"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 425 and game.Players.LocalPlayer.Data.Level.Value < 475 then
						SelectBoss = x
					end
				end
				local x = "Wysper"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 500 and game.Players.LocalPlayer.Data.Level.Value < 550 then
						SelectBoss = x
					end
				end
				local x = "Thunder God"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 575 and game.Players.LocalPlayer.Data.Level.Value < 625 then
						SelectBoss = x
					end
				end
				local x = "Cyborg"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 675 then
						SelectBoss = x
					end
				end
			elseif New_World then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				local x = "Diamond"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 750 and game.Players.LocalPlayer.Data.Level.Value < 800 then
						SelectBoss = x
					end
				end
				local x = "Jeremy"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 850 and game.Players.LocalPlayer.Data.Level.Value < 900 then
						SelectBoss = x
					end
				end
				local x = "Fajita"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 925 and game.Players.LocalPlayer.Data.Level.Value < 975 then
						SelectBoss = x
					end
				end
				local x = "Smoke Admiral"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 1150 and game.Players.LocalPlayer.Data.Level.Value < 1200 then
						SelectBoss = x
					end
				end
			elseif Three_World then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				local x = "Stone"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 1550 and game.Players.LocalPlayer.Data.Level.Value < 1600 then
						SelectBoss = x
					end
				end
				local x = "Kilo Admiral"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 1750 and game.Players.LocalPlayer.Data.Level.Value < 1800 then
						SelectBoss = x
					end
				end
				local x = "Captain Elephant"
				if game.Workspace.Enemies:FindFirstChild(x) or game.ReplicatedStorage:FindFirstChild(x) then
					if game.Players.LocalPlayer.Data.Level.Value >= 1875 and game.Players.LocalPlayer.Data.Level.Value < 1925 then
						SelectBoss = x
					end
				end
			end
			if SelectBoss ~= nil then
				if game.Workspace.Enemies:FindFirstChild(SelectBoss) or game.ReplicatedStorage:FindFirstChild(SelectBoss) then
					CFrameQBoss = nil
					CheckQuestBoss_L()
					if CFrameQBoss ~= nil then
						repeat wait(.1)
							TPX(CFrameQBoss)
							if (CFrameQBoss.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
								FarmBoss_L = true
							end
						until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true or not Auto_Farm_Kaitun
					elseif CFrameQBoss == nil then
						SelectBoss = nil
					end
				end
			end
			if Old_World and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				if game.Players.LocalPlayer.Data.Level.Value >= 100 and game.Players.LocalPlayer.Data.Level.Value < 650 and #game.Players:GetPlayers() > 5 then
					if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")),'We') then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							local at_time = 0
							FarmPlayer = false
							repeat wait()
								local xp = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
								result = {}
								local regex = ("([^%s]+)"):format(" ")
								for each in xp:gmatch(regex) do
									table.insert(result, each)
								end
								if #result >= 2 then
									if game.Players:FindFirstChild(result[2]) and game.Players[result[2]].Data.Level.Value >= 20 and game.Players[result[2]].Data.Level.Value <= game.Players.LocalPlayer.Data.Level.Value+200 then
										FarmPlayer = true
										at_time = 5
									else
										if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")),'We') then
											at_time = at_time+1
										end
									end
								end
							until at_time >= 5
							if not FarmPlayer and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
						end
					end
				end
			end
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				local Lv = game.Players.LocalPlayer.Data.Level.Value
				if game.Players.LocalPlayer.Data.Level.Value >= 10 and game.Players.LocalPlayer.Data.Level.Value <= 100 then
					CheckLevel2()
					game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text = NameMon
					game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible = true
				else
					CheckLevel2()
					if not First_Quest then
						if SelectMonster ~= nil then
							First_Quest = true
						end
					else
						SelectMonster = nil
						First_Quest = false
					end
					repeat wait(.1)
						TPX(CFrameQ)
						if (CFrameQ.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
					until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true or not Auto_Farm_Kaitun
				end
			end
		elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
		end
	end

	-- Attack
	local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
	Camera:Stop()
	local plr = game.Players.LocalPlayer
	local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
	local CbFw2 = CbFw[2]
	
	function GetCurrentBlade() 
	local p13 = CbFw2.activeController
	local ret = p13.blades[1]
	if not ret then return end
	while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	return ret
	end
	local time_all_x = 0
	local time_all_p = 0
	local time_x = 0
	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	time_xeg = 0
	function AttackNoCDX()
		pcall(function()
			local AC = CbFw2.activeController
			for i = 1, 1 do 
				local cac = {}
				for k,v in pairs(game.Workspace.Characters:GetChildren()) do
					if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70 then
						table.insert(cac, v.HumanoidRootPart)
					end
				end
				bladehit = cac
				if #bladehit > 0 then
					local u8 = debug.getupvalue(AC.attack, 5)
					local u9 = debug.getupvalue(AC.attack, 6)
					local u7 = debug.getupvalue(AC.attack, 4)
					local u10 = debug.getupvalue(AC.attack, 7)
					local u12 = (u8 * 798405 + u7 * 727595) % u9
					local u13 = u7 * 798405
					(function()
						u12 = (u12 * u9 + u13) % 1099511627776
						u8 = math.floor(u12 / u9)
						u7 = u12 - u8 * u9
					end)()
					u10 = u10 + 1
					debug.setupvalue(AC.attack, 5, u8)
					debug.setupvalue(AC.attack, 6, u9)
					debug.setupvalue(AC.attack, 4, u7)
					debug.setupvalue(AC.attack, 7, u10)
					time_xeg = time_xeg +1
					if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
						AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
						if time_xeg >= 50 then
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
						end
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
					end
				end
			end
		end)
	end
	function AttackNoCD()
		pcall(function()
			if FarmPlayer and Farm_P_ATTK then
				if AttackPlayers == nil then
					AttackPlayers = 'None'
				end
				local AC = CbFw2.activeController
				for i = 1, 1 do 
					--[[ 
                    local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        plr.Character,
                        {plr.Character.HumanoidRootPart},
                        60
                    )
                    ]]
                    local cac = {}
                    for k,v in pairs(game.Workspace.Characters:GetChildren()) do
                        if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and tostring(v.Name) == AttackPlayers then
                            table.insert(cac, v.HumanoidRootPart)
                        end
                    end
                    --[[
                    for k, v in pairs(bladehit) do
                        if v.Parent:FindFirstChild("HumanoidRootPart") and (v.Parent:FindFirstChild("HumanoidRootPart").Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 and v.Parent:FindFirstChild("Humanoid").Health > 0 and string.find(tostring(v.Parent),'Lv') and not hash[v.Parent] then
                            table.insert(cac, v.Parent.HumanoidRootPart)
                            hash[v.Parent] = true
                        end
                    end
                    ]]
					bladehit = cac
					if #bladehit > 0 then
						local u8 = debug.getupvalue(AC.attack, 5)
						local u9 = debug.getupvalue(AC.attack, 6)
						local u7 = debug.getupvalue(AC.attack, 4)
						local u10 = debug.getupvalue(AC.attack, 7)
						local u12 = (u8 * 798405 + u7 * 727595) % u9
						local u13 = u7 * 798405
						(function()
							u12 = (u12 * u9 + u13) % 1099511627776
							u8 = math.floor(u12 / u9)
							u7 = u12 - u8 * u9
						end)()
						u10 = u10 + 1
						debug.setupvalue(AC.attack, 5, u8)
						debug.setupvalue(AC.attack, 6, u9)
						debug.setupvalue(AC.attack, 4, u7)
						debug.setupvalue(AC.attack, 7, u10)
						if time_all_p == 0 then
							wait(2)
						end
						time_x = time_x+1
						time_all_p = time_all_p+1
						if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
							AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
							if time_x >= 2 and time_all_p >= 150 or game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
								game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
								time_x = 0
							end
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
						end
					end
				end
			else
				local AC = CbFw2.activeController
				for i = 1, 1 do
					--[[
                    local cac = {}
                    for k,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if Select_List_Boss == 'Core' and Start_Kill_Boss and v:FindFirstChild("HumanoidRootPart") then
							table.insert(cac, v.HumanoidRootPart)
						elseif List.Quest and Quest == 'Evo Race V3' then
							if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70 then
								table.insert(cac, v.HumanoidRootPart)
							end
						else
							if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 70 and string.find(tostring(v.Humanoid.DisplayName),'Lv .. ') then
								table.insert(cac, v.HumanoidRootPart)
							end
						end
                    end]]
					local L_88_ = game.Players.LocalPlayer
					local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                        L_88_.Character, {
						L_88_.Character.HumanoidRootPart
					}, 80)
					--bladehit = getAllBladeHits(80)
					if #bladehit > 0 then
						local u8 = debug.getupvalue(AC.attack, 5)
						local u9 = debug.getupvalue(AC.attack, 6)
						local u7 = debug.getupvalue(AC.attack, 4)
						local u10 = debug.getupvalue(AC.attack, 7)
						local u12 = (u8 * 798405 + u7 * 727595) % u9
						local u13 = u7 * 798405
						(function()
							u12 = (u12 * u9 + u13) % 1099511627776
							u8 = math.floor(u12 / u9)
							u7 = u12 - u8 * u9
						end)()
						u10 = u10 + 1
						debug.setupvalue(AC.attack, 5, u8)
						debug.setupvalue(AC.attack, 6, u9)
						debug.setupvalue(AC.attack, 4, u7)
						debug.setupvalue(AC.attack, 7, u10)
						time_x = time_x+1
						time_all_x = time_all_x+1
						if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
							AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
							if time_x >= 2 then
								game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
								time_x = 0
							end
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 3, "")
						end
					end
				end
			end
		end)
	end
	spawn(function()
		while task.wait() do
			pcall(function()
				if not Start_Farm_Mastery_Fruit and not Start_Farm_Mastery_Gun or Start_Farm_Bone or Start_Kill_Boss and List.Boss or List.Quest and Stop_Fast_Attack then
					if game.Players.LocalPlayer.Character.Stun.Value == 0 and Auto_Farm_Kaitun and not Stop_Attack then
						AttackNoCD()
						wait(0.17)
						--[[
						game:GetService("RunService").Stepped:wait()
						if time_all_x >= 20 then
							if not Farm_Attack then
								wait(0.05)
							end
							if time_all_x >= 22 then
								if not Farm_Attack then
									wait(0.05)
								end
								time_all_x = 0
							end
						end
						if FarmPlayer and game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
							wait(.2)
						end
						wait()
						if Farm_Bone then
							wati(.1)
						end
						]]
					end
				else
					wait(.1)
				end
			end)
		end
	end)

	-- Set Flag
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				if List.Quest and Quest == 'Evo Race V3' and Boat ~= nil and bi_zaz then
					if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
					end
				else
					if Auto_Farm_Kaitun or Teleport_Tween then
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
								local BodyVelocity = Instance.new("BodyVelocity")
								BodyVelocity.Name = "BodyVelocity"
								BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
								BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							end
						end
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true and not Quest_Start_Evo_Fishman_V3 and not Auto_Farm_Shark_Anchor then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
						end
						for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false    
							end
						end
					end
				end
			end)
		end)
	end)
	-- StatrMagnet
	spawn(function()
		while task.wait() do
			if StatrMagnet then
				pcall(function()
					if not List.Raid and not List.Quest and not List.Boss and not List.Fruit and not Start_Farm_Bone and not Start_Farm_Cake and not Start_Farm_Mastery and not Start_Farm_Mastery_Fruit and not Start_Farm_Mastery_Gun then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Ms and v.Humanoid.Health > 0 and not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
								v.HumanoidRootPart.CFrame = PosMon_X
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									--v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					else
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Humanoid.Health > 0 and not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
								v.HumanoidRootPart.CFrame = PosMon_X
								v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								if v.Humanoid:FindFirstChild("Animator") then
									--v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end)
			end
		end
	end)
	-- Add Stats
	spawn(function()
		while wait(.5) do
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Melee"].Level.Value < 2550 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", game:GetService("Players").LocalPlayer.Data.Points.Value)
				end
				if game:GetService("Players").LocalPlayer.Data.Stats["Melee"].Level.Value >= 2550 and game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Defense"].Level.Value < 2550 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", game:GetService("Players").LocalPlayer.Data.Points.Value)
				end
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end)
		end
	end)
	-- Redeem
	redeem = {
		'Sub2Fer999',
		'Enyu_is_Pro',
		'JCWK',
		'StarcodeHEO',
		'MagicBUS',
		'KittGaming',
		'Sub2CaptainMaui',
		'Sub2OfficialNoobie',
		'TheGreatAce',
		'Sub2NoobMaster123',
		'Sub2Daigrock',
		'Axiore',
		'StrawHatMaine',
		'TantaiGaming',
		'Bluxxy',
		'SUB2GAMERROBOT_EXP1',
		'GAMER_ROBOT_1M',
		'SUBGAMERROBOT_RESET',
		'RESET_5B',
		'SUB2GAMERROBOT_RESET1',
		'Sub2UncleKizaru',
		'ADMIN_TROLL ',
		'DRAGONABUSE ',
		'DEVSCOOKING '
	}
	spawn(function()
		for i,v in pairs(redeem) do
			game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
		end
	end)
	wait(1)
	game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
	-- Get Quest
	function Get_Buy_Melee(Melee,Belix,FG,True,Buy)
	if not game.Players.LocalPlayer.Backpack:FindFirstChild(Melee) and not game.Players.LocalPlayer.Character:FindFirstChild(Melee) then
		if Buy then
			result = {} 
			local regex = ("([^%s]+)"):format(" ")
			for each in Melee:gmatch(regex) do
				table.insert(result, each)
			end
			local x = 'None'
			if #result >= 2 then
				x = result[1]..result[2]
			elseif #result == 1 then
				x = result[1]
			end
			local xp = "Buy"..x
			if True then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(xp,true)
			end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(xp)
		else
			local Beli = game.Players.LocalPlayer.Data.Beli.Value
			if Beli >= Belix and game.Players.LocalPlayer.Data.Fragments.Value >= FG then
				result = {} 
				local regex = ("([^%s]+)"):format(" ")
				for each in Melee:gmatch(regex) do
					table.insert(result, each)
				end
				local x = 'None'
				if #result >= 2 then
					x = result[1]..result[2]
				elseif #result == 1 then
					x = result[1]
				end
				local xp = "Buy"..x
				if True then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(xp,true)
				end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(xp)
			end
		end
	end
	end
	function Get_Melee_Check(Melee)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(Melee) or game.Players.LocalPlayer.Character:FindFirstChild(Melee) then
		Weapon = Melee
	end
	end
	function Get_Mastery_Melee(Melee,Mastery)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(Melee) and game.Players.LocalPlayer.Backpack:FindFirstChild(Melee).Level.Value >= Mastery then
		return true
	elseif game.Players.LocalPlayer.Character:FindFirstChild(Melee) and game.Players.LocalPlayer.Character:FindFirstChild(Melee).Level.Value >= Mastery then
		return true
	end
	return false
	end
	function Buy_Chip()
		if not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') and not game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
			if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then
				Select_Map = "Dark"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
				Select_Map = "Sand"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
				Select_Map = "Magma"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
				Select_Map = "Rumble"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
				Select_Map = "Flame"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
				Select_Map = "Ice"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
				Select_Map = "Light"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
				Select_Map = "String"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
				Select_Map = "Quake"
			elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
				Select_Map = "Buddha"
			else
				Select_Map = "Flame"
			end
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map) == 1 then
				wait(.5)
			end
		end
	end
	function Check_Fruit(vu)
		for i,v in next,_G.Fruit do
			if v == vu then
				Fruit_Check = vu
				return
			end
		end
	end
	function GetFruitOneM()
		local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
		for i,v in pairs(fruit)do
			if v['Price'] >= 1000000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v['Name'])
				return true
			end
		end
		return false
	end
	function GetFruit()
		pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool'):FindFirstChild('EatRemote') then
				return
			elseif not Raid_Dough_Down then
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA('Tool') and string.find(v.Name,'Fruit') then
						EquipWeapon(v.Name)
					end
				end
				local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
				local chip = {}
				for i,v in pairs(fruit)do
					if v['Price'] < _G.Main['Lock Fruit'] then
						table.insert(chip,v['Price'])
					end
					if v['Price'] >= 1000000 then
						if not Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 and New_World and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
							Don_Swan_H = true
						elseif New_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
							Quest = 'Don Swan'
							List.Quest = true
						end
					end
				end
				if game.Players.LocalPlayer.Data.Level.Value >= 1100 and game.Players.LocalPlayer.Data.DevilFruit.Value == '' then
					Eat_Fruit = nil
					Fruit_Check = nil
					local fruitx = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
					for i,v in next,fruitx do
						Check_Fruit(v.Name)
					end
					if Fruit_Check ~= nil then
						result = {}
						local regex = ("([^%s]+)"):format("-")
						local xp = Fruit_Check
						for each in xp:gmatch(regex) do
							table.insert(result, each)
						end
						Eat_Fruit = result[2] .. " Fruit"
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",Fruit_Check)
						if Eat_Fruit ~= nil then
							wait(.5)
							if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
								repeat wait()
									EquipWeapon(Eat_Fruit)
								until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
								if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
									game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
									wait(3)
									Eat_Fruitx = true
								end
							end
						end
					end
				end
				if #chip > 0 then
					local fruit_select = math.min(unpack(chip))
					for i,v in pairs(fruit)do
						if v['Price'] == fruit_select then
							result = {}
							local regex = ("([^%s]+)"):format("-")
							for each in v["Name"]:gmatch(regex) do
								table.insert(result, each)
							end
							NameFruit = result[2] .. " Fruit"
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
						end
					end
				end
			end
		end)
	end
	Quest_Check = {}
	Mas_Superhuman = 330
	Mas_Death_Step = 400
	Mas_Sharkman_Karate = 300
	Mas_Electric_Claw = 330
	Mas_Dragon_Talon = 350
	function Load_Mastery_Melee(vu)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA('Tool') and v.Name == vu then
			return tostring(v.Level.Value)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA('Tool') and v.Name == vu then
			return tostring(v.Level.Value)
		end
	end
	end
	function GetMastery(vu)
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA('Tool') and v.Name == vu then
			return v.Level.Value
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA('Tool') and v.Name == vu then
			return v.Level.Value
		end
	end
	return 1
	end
	-- Check Gun
	function Check_Gun_H(v)
		if v == 'Soul Guitar' and Soul_Guitar_H and not Soul_Guitar_Mas then
			Gun_Attack_X = v
		elseif v == 'Kabucha' and Kabucha_H and not Kabucha_Mas then
			Gun_Attack_X = v
		elseif v == 'Acidum Rifle' and Acidum_Rifle_H and not Acidum_Rifle_Mas then
			Gun_Attack_X = v
		elseif v == 'Serpent Bow' and Serpent_Bow_H and not Serpent_Bow_Mas then
			Gun_Attack_X = v
		elseif v == 'Cannon' and not Cannon_Mas then
			Gun_Attack_X = v
		end
	end
	-- Check Sword
	function Check_Sword_H(v)
		if v == "Yama" and Yama_H and not Yama_Mas then
			Sword_Attack_X = v
		elseif v == "Tushita" and Tushita_H and not Tushita_Mas then
			Sword_Attack_X = v
		elseif v == "True Triple Katana" and True_Triple_Katana_H and not True_Triple_Katana_Mas then
			Sword_Attack_X = v
		elseif v == "Shisui" and Shisui_H and not Shisui_Mas then
			Sword_Attack_X = v
		elseif v == "Saddi" and Saddi_H and not Saddi_Mas then
			Sword_Attack_X = v
		elseif v == "Wando" and Wando_H and not Wando_Mas then
			Sword_Attack_X = v
		elseif v == "Midnight Blade" and Midnight_Blade_H and not Midnight_Blade_Mas then
			Sword_Attack_X = v
		elseif v == "Saber" and Saber_H and not Saber_Mas then
			Sword_Attack_X = v
		elseif v == "Rengoku" and Rengoku_H and not Rengoku_Mas then
			Sword_Attack_X = v
		elseif v == "Hallow Scythe" and Hallow_Scryte_H and not Hallow_Scythe_Mas then
			Sword_Attack_X = v
		elseif v == "Spikey Trident" and Spikey_Trident_H and not Spikey_Trident_Mas then
			Sword_Attack_X = v
		elseif v == "Dark Dagger" and Dark_Dagger_H and not Dark_Dagger_Mas then
			Sword_Attack_X = v
		elseif v == "Buddy Sword" and Buddy_Sword_H and not Buddy_Sword_Mas then
			Sword_Attack_X = v
		elseif v == "Canvander" and Canvander_H and not Canvander_Mas then
			Sword_Attack_X = v
		elseif v == "Twin Hooks" and Twin_Hooks_H and not Twin_Hooks_Mas then
			Sword_Attack_X = v
		elseif v == "Cursed Dual Katana" and Cursed_Dual_Katana_H and not Cursed_Dual_Katana_Mas then
			Sword_Attack_X = v
		elseif v == "Koko" and Koko_H and not Koko_Mas then
			Sword_Attack_X = v
		elseif v == "Twin Hooks" and Twin_Hooks_H and not Twin_Hooks_Mas then
			Sword_Attack_X = v
		elseif v == "Bisento" and Bisento_H and not Bisento_Mas then
			Sword_Attack_X = v
		elseif v == "Soul Cane" and Soul_Cane_H and not Soul_Cane_Mas then
			Sword_Attack_X = v
		elseif v == 'Shark Anchor' and Shark_Anchor_H and not Shark_Anchor_Mas then
			Sword_Attack_X = 'Shark Anchor'
		end
	end
	function Update_Mas(v)
	if v == 'Soul Guitar' and Soul_Guitar_H and not Soul_Guitar_Mas then
		Soul_Guitar_Mas = true
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Soul_Guitar_S:Set(' ✅ : Soul Guitar'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == 'Kabucha' and Kabucha_H and not Kabucha_Mas then
		Kabucha_Mas = true
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Kabucha_S:Set(' ✅ : Kabucha'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == 'Acidum Rifle' and Acidum_Rifle_H and not Acidum_Rifle_Mas then
		Acidum_Rifle_Mas = true
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Acidum_Rifle_S:Set(' ✅ : Acidum Rifle'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == 'Serpent Bow' and Serpent_Bow_H and not Serpent_Bow_Mas then
		Serpent_Bow_Mas = true
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Serpent_Bow_S:Set(' ✅ : Serpent Bow'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	end
	if v == "Yama" and Yama_H and not Yama_Mas then
		Yama_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Yama_S:Set(' ✅ : Yama'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Tushita" and Tushita_H and not Tushita_Mas then
		Tushita_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Tushita_S:Set(' ✅ : Tushita'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "True Triple Katana" and True_Triple_Katana_H and not True_Triple_Katana_Mas then
		True_Triple_Katana_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		True_Triple_Katana_S:Set(' ✅ : True Triple Katana'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Shisui" and Shisui_H and not Shisui_Mas then
		Shisui_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Shisui_S:Set(' ✅ : Shisui'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Saddi" and Saddi_H and not Saddi_Mas then
		Saddi_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Saddi_S:Set(' ✅ : Saddi'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Wando" and Wando_H and not Wando_Mas then
		Wando_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Wando_S:Set(' ✅ : Wando'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Midnight Blade" and Midnight_Blade_H and not Midnight_Blade_Mas then
		Midnight_Blade_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Midnight_Blade_S:Set(' ✅ : Midnight Blade'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Saber" and Saber_H and not Saber_Mas then
		Saber_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Saber_S:Set(' ✅ : Saber'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Rengoku" and Rengoku_H and not Rengoku_Mas then
		Rengoku_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Rengoku_S:Set(' ✅ : Rengoku'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Hallow Scythe" and Hallow_Scryte_H and not Hallow_Scythe_Mas then
		Hallow_Scythe_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Hallow_Scythe_S:Set(' ✅ : Hallow Scythe'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Spikey Trident" and Spikey_Trident_H and not Spikey_Trident_Mas then
		Spikey_Trident_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Spikey_Trident_S:Set(' ✅ : Spikey Trident'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Dark Dagger" and Dark_Dagger_H and not Dark_Dagger_Mas then
		Dark_Dagger_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Dark_Dagger_S:Set(' ✅ : Dark Dagger'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Buddy Sword" and Buddy_Sword_H and not Buddy_Sword_Mas then
		Buddy_Sword_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Buddy_Sword_S:Set(' ✅ : Buddy Sword'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Canvander" and Canvander_H and not Canvander_Mas then
		Canvander_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Canvander_S:Set(' ✅ : Canvander'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Cursed Dual Katana" and Cursed_Dual_Katana_H and not Cursed_Dual_Katana_Mas then
		Cursed_Dual_Katana_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Cursed_Dual_Katana_S:Set(' ✅ : Cursed Dual Katana'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == 'Shark Anchor' and Shark_Anchor_H and not Shark_Anchor_Mas then
		Shark_Anchor_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
	elseif v == "Koko" and Koko_H and not Koko_Mas then
		Koko_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Koko_S:Set(' ✅ : Koko'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Twin Hooks" and Twin_Hooks_H and not Twin_Hooks_Mas then
		Twin_Hooks_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
	elseif v == "Bisento" and Bisento_H and not Bisento_Mas then
		Bisento_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Bisento_S:Set(' ✅ : Bisento'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	elseif v == "Soul Cane" and Soul_Cane_H and not Soul_Cane_Mas then
		Soul_Cane_Mas = true
		Farm_Mastery = false
		Sword_Attack_X = nil
		Mas_Sword = nil
		repeat wait()
			Get_Item_Inventory(v)
			EquipWeapon(v)
		until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Name == v
		Soul_Cane_S:Set(' ✅ : Soul Cane'..' : '. .. tostring(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Level.Value))
	end
	end
	function FarmBone()
		Stop_Fast_Attack = false
		Start_Farm_Bone = true
		if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude >= 3000 then
			repeat wait()
				TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
			until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude <= 3
		elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude < 3000 then
			Monster = nil
			for i=1500,0,-300 do
				GetMonster(i)
			end
			if Monster ~= nil and Monster.Humanoid.Health > 0 then
				PosMon_X = Monster.HumanoidRootPart.CFrame
				StatrMagnet = true
				repeat wait()
					TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
					EquipWeapon(Weapon)
				until not Monster.Parent or Monster.Humanoid.Health <= 0
				StatrMagnet = false
			elseif Monster == nil then
				for i=1500,0,-300 do
					GetMonster(i)
				end
				if Monster == nil then
					TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
				end
			end
		end
		Start_Farm_Bone = false
	end
	if Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist","Check") == true then
		Quest_Dough_Awaken = true
		Dough_Awaken_C_S:Set(' Dough Awaken : ✅')
	end
	-- Race Evo
	if New_World or Three_World then
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
			Evo_Race_V1_H = true
		end
	end
	if New_World or Three_World then
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
			Evo_Race_V2_H = true
		end
	end
	if New_World or Three_World then
		if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
			Evo_Race_V3_H = true
		end
	end
	function GetQuestTo(vu)
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
			if v.Name:find("Chest") and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
				Chest_Drop = v
				return
			end
		end
	end
	if Evo_Race_V3_H then
		Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
	elseif Evo_Race_V2_H and Evo_Race_V1_H then
		Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
	elseif Evo_Race_V1_H then
		Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
	end
    if not table.find(getgenv().Quest['Evo Race']['Select Race'],tostring(game.Players.LocalPlayer.Data.Race.Value)) and _G.Race['Lock Race'] then
		Select_race_low  = true
    end
	-- Quest
	spawn(function()
		while wait(.1) do
			pcall(function()
				if Weapon == nil then
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
							Weapon = v.Name
						end
					end
					if Weapon == nil then
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
								Weapon = v.Name
							end
						end
					end
				else
					if not game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon) and not game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
						if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
									Weapon = v.Name
								end
							end
							for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
								if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
									Weapon = v.Name
								end
							end
						end
					end
				end
				if not List.Quest then
					if _G.Sword['Koko'] and not Koko_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 then
						if game.Players.LocalPlayer.Data.Fragments.Value >= 6000 and New_World then
							Koko_Ready = true
						elseif New_World then
							Koko_Ready = false
							if not List.Raid then
								Check_Raid = true
							elseif List.Raid and not Check_Raid then
								GetFruit()
							end
						end
					end
				end
				if Quest_Soul_Guitar and not Soul_Guitar_H then
					if game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy")
						wait(1)
						for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
							if v['Name'] == 'Soul Guitar' then
								Soul_Guitar_H = true
								Soul_Guitar_S:Set(' ✅ : Soul Guitar')
								Soul_Guitar_C_S:Set(' Soul Guitar : ✅')
							end
						end
						for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA('Tool') and v.Name == 'Soul Guitar' then
								Soul_Guitar_H = true
								Soul_Guitar_S:Set(' ✅ : Soul Guitar')
								Soul_Guitar_C_S:Set(' Soul Guitar : ✅')
							end
						end
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA('Tool') and v.Name == 'Soul Guitar' then
								Soul_Guitar_H = true
								Soul_Guitar_S:Set(' ✅ : Soul Guitar')
								Soul_Guitar_C_S:Set(' Soul Guitar : ✅')
							end
						end
					elseif not Old_World then
						if not List.Raid then
							Check_Raid = true
						elseif List.Raid and not Check_Raid then
							GetFruit()
						end
					end
				end
				if True_Triple_Katana_H then
					True_Triple_Katana_S_Q:Set(' True Triple Katana : ✅')
				elseif Shisui_Mas and Saddi_Mas and Wando_Mas then
					True_Triple_Katana_S_Q:Set(' True Triple Katana : 3/3')
				elseif Shisui_Mas and Saddi_Mas or Shisui_Mas and Wando_Mas or Wando_Mas and Saddi_Mas then
					True_Triple_Katana_S_Q:Set(' True Triple Katana : 2/3')
				elseif Shisui_Mas or Saddi_Mas or Wando_Mas then
					True_Triple_Katana_S_Q:Set(' True Triple Katana : 1/3')
				end
				if not List.Quest then -- Melee
					local Lv = game.Players.LocalPlayer.Data.Level.Value
					if _G.Melee['Superhuman'] and not Superhuman_H then
						if not Superhuman_Buy then
							if not Black_Leg_M then
								Get_Buy_Melee('Black Leg',150000,0,false)
								if Get_Mastery_Melee('Black Leg',300) then
									Black_Leg_M = true
								end
								Get_Melee_Check('Black Leg')
							elseif not Electro_M then
								Get_Buy_Melee('Electro',500000,0,false)
								if Get_Mastery_Melee('Electro',300) then
									Electro_M = true  
								end
								Get_Melee_Check('Electro')
							elseif not Fishman_Karate_M then
								Get_Buy_Melee('Fishman Karate',500000,0,false)
								if Get_Mastery_Melee('Fishman Karate',300) then
									Fishman_Karate_M = true  
								end
								Get_Melee_Check('Fishman Karate')
							elseif not Dragon_Claw_M then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and not game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') then
									if game.Players.LocalPlayer.Data.Beli.Value >= 0 and game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
										local args = {
											[1] = "BlackbeardReward",
											[2] = "DragonClaw",
											[3] = "2"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									elseif game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
										if not List.Raid then
											Check_Raid = true
										elseif List.Raid and not Check_Raid then
											GetFruit()
										end
									end
								end
								if Get_Mastery_Melee('Dragon Claw',300) then
									Dragon_Claw_M = true  
								end
								Get_Melee_Check('Dragon Claw')
							elseif Black_Leg_M and Electro_M and Fishman_Karate_M and Dragon_Claw_M then
								if game.Players.LocalPlayer.Data.Beli.Value >= 3000000 then
									local args = {
										[1] = "BuySuperhuman"
									}
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) == 2 then
										Superhuman_Buy = true
										Superhuman_S:Set(' ✅ : Superhuman'..' : '..Load_Mastery_Melee('Superhuman'))
									end
								end
							end
						elseif not Superhuman_H then
							Get_Buy_Melee('Superhuman',3000000,0,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Superhuman',Mas_Superhuman) then
								Farm_Mastery = false
								Superhuman_H = true
								Superhuman_S:Set(' ✅ : Superhuman'..' : '. .. tostring(GetMastery('Superhuman')))
							end
							Get_Melee_Check('Superhuman')
						end
					else
						if _G.Melee['Death Step'] and not Death_Step_Buy and Death_Step_M then
							if game.Players.LocalPlayer.Data.Beli.Value >= 2550000 and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
								if New_World and not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 2 then
										Death_Step_Buy = true
										Death_Step_S:Set(' ✅ : Death Step'..' : '..Load_Mastery_Melee('Death Step'))
									end
								elseif Three_World then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") == 2 then
										Death_Step_Buy = true
										Death_Step_S:Set(' ✅ : Death Step'..' : '..Load_Mastery_Melee('Death Step'))
									end
								end
							elseif game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
								if not List.Raid then
									Check_Raid = true
								elseif List.Raid and not Check_Raid then
									GetFruit()
								end
							end
						elseif _G.Melee['Sharkman Karate'] and not Sharkman_Karate_Buy and Sharkman_Karate_M then
							if game.Players.LocalPlayer.Data.Beli.Value >= 2550000 and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
								if Sharkman_Karate_Q_C then -- Quest Sharkman Karate
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") == 2 then
										Sharkman_Karate_Buy = true
										Sharkman_Karate_S:Set(' ✅ : Sharkman Karate'..' : '..Load_Mastery_Melee('Sharkman Karate'))
									end
								end
							elseif game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
								if not List.Raid then
									Check_Raid = true
								elseif List.Raid and not Check_Raid then
									GetFruit()
								end
							end
						elseif _G.Melee['Electric Claw'] and not Electric_Claw_Buy and Electric_Claw_M then
							if game.Players.LocalPlayer.Data.Beli.Value >= 3000000 and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
								if Electric_Claw_Q_C then
									game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == 2 then
										Electric_Claw_Buy = true
										Electric_Claw_S:Set(' ✅ : Electric Claw'..' : '..Load_Mastery_Melee('Electric Claw'))
									end
								elseif Three_World then
									Quest_Electric_Claw = true
								end
							elseif game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
								if not List.Raid then
									Check_Raid = true
								elseif List.Raid and not Check_Raid then
									GetFruit()
								end
							end
						elseif _G.Melee['Dragon Talon'] and not Dragon_Talon_Buy and Dragon_Talon_M then
							if game.Players.LocalPlayer.Data.Beli.Value >= 5000000 and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
								if Three_World then -- Quest Dragon Talon
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon") == 1 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon") == 2 then
										Dragon_Talon_Buy = true
										Dragon_Talon_S:Set(' ✅ : Dragon Talon'..' : '..Load_Mastery_Melee('Dragon Talon'))
									end
								end
							elseif game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
								if not List.Raid then
									Check_Raid = true
								elseif List.Raid and not Check_Raid then
									GetFruit()
								end
							end
						end
						if _G.Melee['Death Step'] and not Death_Step_Buy and not Death_Step_M then
							Get_Buy_Melee('Black Leg',150000,0,false,true)
							if Get_Mastery_Melee('Black Leg',400) then
								Death_Step_M = true
							end
							Get_Melee_Check('Black Leg')
						elseif _G.Melee['Death Step'] and Death_Step_Buy and not Death_Step_H then
							Get_Buy_Melee('Death Step',2500000,5000,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Death Step',Mas_Death_Step) then
								Farm_Mastery = false
								Start_Farm_Mastery = false
								Death_Step_H = true
								Death_Step_S:Set(' ✅ : Death Step'..' : '. .. tostring(GetMastery('Death Step')))
							end
							Get_Melee_Check('Death Step')
						elseif _G.Melee['Sharkman Karate'] and not Sharkman_Karate_Buy and not Sharkman_Karate_M then
							Get_Buy_Melee('Fishman Karate',500000,0,false,true)
							if Get_Mastery_Melee('Fishman Karate',400) then
								Sharkman_Karate_M = true
							end
							Get_Melee_Check('Fishman Karate')
						elseif _G.Melee['Sharkman Karate'] and Sharkman_Karate_Buy and not Sharkman_Karate_H then
							Get_Buy_Melee('Sharkman Karate',500000,0,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Sharkman Karate',Mas_Sharkman_Karate) then
								Farm_Mastery = false
								Start_Farm_Mastery = false
								Sharkman_Karate_H = true
								Sharkman_Karate_S:Set(' ✅ : Sharkman Karate'..' : '. .. tostring(GetMastery('Sharkman Karate')))
							end
							Get_Melee_Check('Sharkman Karate')
						elseif _G.Melee['Electric Claw'] and not Electric_Claw_Buy and not Electric_Claw_M then
							Get_Buy_Melee('Electro',500000,0,false,true)
							if Get_Mastery_Melee('Electro',400) then
								Electric_Claw_M = true
							end
							Get_Melee_Check('Electro')
						elseif _G.Melee['Electric Claw'] and Electric_Claw_Buy and not Electric_Claw_H then
							Get_Buy_Melee('Electric Claw',500000,0,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Electric Claw',Mas_Electric_Claw) then
								Farm_Mastery = false
								Start_Farm_Mastery = false
								Electric_Claw_H = true
								Electric_Claw_S:Set(' ✅ : Electric Claw'..' : '. .. tostring(GetMastery('Electric Claw')))
							end
							Get_Melee_Check('Electric Claw')
						elseif _G.Melee['Dragon Talon'] and not Dragon_Talon_Buy and not Dragon_Talon_M then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and not game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') then
								if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							if Get_Mastery_Melee('Dragon Claw',400) then
								Dragon_Talon_M = true
							end
							Get_Melee_Check('Dragon Claw')
						elseif _G.Melee['Dragon Talon'] and Dragon_Talon_Buy and not Dragon_Talon_H then
							Get_Buy_Melee('Dragon Talon',5000000,0,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Dragon Talon',Mas_Dragon_Talon) then
								Farm_Mastery = false
								Start_Farm_Mastery = false
								Dragon_Talon_H = true
								Dragon_Talon_S:Set(' ✅ : Dragon Talon'..' : '. .. tostring(GetMastery('Dragon Talon')))
							end
							Get_Melee_Check('Dragon Talon')
						elseif _G.Melee['Godhuman'] and Superhuman_H and Death_Step_H and Sharkman_Karate_H and Electric_Claw_H and Dragon_Talon_H and not God_Human_Buy then 
							if Mas_Dragon_Talon <= 350 then
								Mas_Superhuman = 400
								Mas_Death_Step = 400
								Mas_Sharkman_Karate = 400
								Mas_Electric_Claw = 400
								Mas_Dragon_Talon = 400
								Superhuman_H = false
								Death_Step_H = false
								Sharkman_Karate_H = false
								Electric_Claw_H = false
								Dragon_Talon_H = false
								God_Human_C_S:Set(' Godhuman : 1/5')
							elseif Mas_Dragon_Talon >= 400 then
								if God_Human_Q_C then
									God_Human_C_S:Set(' Godhuman : ✅')
									if game.Players.LocalPlayer.Data.Beli.Value >= 5000000 and game.Players.LocalPlayer.Data.Fragments.Value >= 5000 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") == 2 then
											God_Human_Buy = true
											God_Human_S:Set(' ✅ : Godhuman'..' : '..Load_Mastery_Melee('Godhuman'))
										end
									end
								elseif game.Players.LocalPlayer.Data.Level.Value >= 2400 then
									if CheckItem_X('Fish Tail') >= 20 and CheckItem_X('Magma Ore') >= 20 and CheckItem_X('Mystic Droplet') >= 10 and CheckItem_X('Dragon Scale') >= 10 then 
										God_Human_Q_C = true
									elseif CheckItem_X('Fish Tail') < 20 or CheckItem_X('Magma Ore') < 20 or CheckItem_X('Mystic Droplet') < 10 or CheckItem_X('Dragon Scale') < 10 then 
										Quest = 'Godhuman'
										List.Quest = true
									end
								end
							end
						elseif _G.Melee['Godhuman'] and not God_Human_H and God_Human_Buy then
							Get_Buy_Melee('Godhuman',5000000,0,false,true)
							if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
								Farm_Mastery = true
							end
							if Get_Mastery_Melee('Godhuman',350) then
								Farm_Mastery = false
								Start_Farm_Mastery = false
								God_Human_H = true
								God_Human_S:Set(' ✅ : Godhuman'..' : '. .. tostring(GetMastery('Godhuman')))
							end
							if not Three_World then
								if game.Players.LocalPlayer.Backpack:FindFirstChild('Godhuman') and game.Players.LocalPlayer.Backpack:FindFirstChild('Godhuman').Level.Value < 350 or game.Players.LocalPlayer.Character:FindFirstChild('Godhuman') and game.Players.LocalPlayer.Character:FindFirstChild('Godhuman').Level.Value < 350 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									TleP = true
									wait(50)
								end
							end
							Get_Melee_Check('Godhuman')
						elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 and _G.Mastery['Fruit'] and not Fruit_H and game.Players.LocalPlayer.Data.DevilFruit.Value ~= '' and Three_World then
							local Name_Fruit = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
							if Ms_F == nil then
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(Name_Fruit) then
									local Test_Fruit = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[Name_Fruit].V.Level.Text
									result = {}
									local regex = ("([^%s]+)"):format("Mas .. ")
									for each in Test_Fruit:gmatch(regex) do
										table.insert(result, each)
									end
									Ms_F = tonumber(result[1])
								else
									EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
								end
							else
								if game.Players.LocalPlayer.Character:FindFirstChild(Name_Fruit) and game.Players.LocalPlayer.Character:FindFirstChild(Name_Fruit).Level.Value >= Ms_F then
									Fruit_H = true
									Farm_Mastery_Fruit = false
									Start_Farm_Mastery_Fruit = false
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild(Name_Fruit) and game.Players.LocalPlayer.Backpack:FindFirstChild(Name_Fruit).Level.Value >= Ms_F then
									Fruit_H = true
									Farm_Mastery_Fruit = false
									Start_Farm_Mastery_Fruit = false
								end
								if game.Players.LocalPlayer.Character:FindFirstChild(Name_Fruit) and game.Players.LocalPlayer.Character:FindFirstChild(Name_Fruit).Level.Value < Ms_F then
									Fruit_H = false
									if not Farm_Mastery_Fruit then
										local I = {
											Point = game:GetService("Players").LocalPlayer.Data.Points.Value
										}
										if not refunx and game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value < 2000 then
											if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
											elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
												if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
												elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
													if not List.Raid then
														Check_Raid = true
													elseif List.Raid and not Check_Raid then
														GetFruit()
													end
												end
											else
												refunx = true
											end
										end
										if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value < 2550 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", game:GetService("Players").LocalPlayer.Data.Points.Value)
										elseif game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value >= 2000 then
											Farm_Mastery_Fruit = true
										end
									end
								end
								if game.Players.LocalPlayer.Backpack:FindFirstChild(Name_Fruit) and game.Players.LocalPlayer.Backpack:FindFirstChild(Name_Fruit).Level.Value < Ms_F then
									Fruit_H = false
									if not Farm_Mastery_Fruit then
										local I = {
											Point = game:GetService("Players").LocalPlayer.Data.Points.Value
										}
										if not refunx and game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
											if not kpdfkpgo then
												game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer("SUBGAMERROBOT_RESET")
												wait(1.5)
												kpdfkpgo = true
											end
											if game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
												if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
												elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
													if not List.Raid then
														Check_Raid = true
													elseif List.Raid and not Check_Raid then
														GetFruit()
													end
												end
											else
												refunx = true
											end
										end
										if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value < 2550 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", game:GetService("Players").LocalPlayer.Data.Points.Value)
										elseif game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value >= 2000 then
											Farm_Mastery_Fruit = true
										end
									end
								end
							end
						elseif _G.Sword['Koko'] and not Koko_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 and Koko_Ready then
							if game.Players.LocalPlayer.Data.Fragments.Value >= 1000 and New_World then
								Quest = 'Koko'
								List.Quest = true
							else
								Koko_Ready = false
							end
						elseif _G.Sword['Cursed Dual Katana'] and Yama_H and Tushita_H and not Cursed_Dual_Katana_H and Three_World and tonumber(game.Players.LocalPlayer.Data.Level.Value) >= 2200 then
							if not opdskfgdf then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor") == 'opened' then
									local CheckQuest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress") 
									if CheckQuest['Good'] == 2 or CheckQuest['Good'] == -5 then
										Cake_Quest = true
									end
								end
								opdskfgdf = true
							end
							if not Tushita_M_Q then
								Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 1/10')
								CDK_Q_S_C = 1
								if game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
									for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if v:IsA('Tool') and v.Name == 'Tushita' then
											if v.Level.Value >= 400 then
												Farm_Mastery = false
												Tushita_M_Q = true
											elseif v.Level.Value <= 400 then
												if not Three_World and New_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
													TleP = true
													wait(50)
												end
												local I = {
													Point = game:GetService("Players").LocalPlayer.Data.Points.Value
												}
												if not refunxzyz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
													if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
													elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
														if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
														elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
															if not List.Raid then
																Check_Raid = true
															elseif List.Raid and not Check_Raid then
																GetFruit()
															end
														end
													else
														refunxzyz = true
													end
												end
												if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
												elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
													Farm_Mastery = true
													Weapon = 'Tushita'
												end
											end
										end
									end
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA('Tool') and v.Name == 'Tushita' then
											if v.Level.Value >= 350 then
												Farm_Mastery = false
												Tushita_M_Q = true
											elseif v.Level.Value <= 350 then
												if not Three_World and New_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
													TleP = true
													wait(50)
												end
												local I = {
													Point = game:GetService("Players").LocalPlayer.Data.Points.Value
												}
												if not refunxzyz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
													if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
													elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
														if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
														elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
															if not List.Raid then
																Check_Raid = true
															elseif List.Raid and not Check_Raid then
																GetFruit()
															end
														end
													else
														refunxzyz = true
													end
												end
												if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
												elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
													Farm_Mastery = true
													Weapon = 'Tushita'
												end
											end
										end
									end
								elseif not game.Players.LocalPlayer.Character:FindFirstChild('Tushita') and not game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
									Get_Item_Inventory('Tushita')
								end
							elseif not Yama_M_Q then
								Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 2/10')
								CDK_Q_S_C = 2
								if game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
									for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if v:IsA('Tool') and v.Name == 'Yama' then
											if v.Level.Value >= 350 then
												Farm_Mastery = false
												Yama_M_Q = true
											elseif v.Level.Value <= 350 then
												local I = {
													Point = game:GetService("Players").LocalPlayer.Data.Points.Value
												}
												if not refunxzyz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
													if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
													elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
														if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
														elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
															if not List.Raid then
																Check_Raid = true
															elseif List.Raid and not Check_Raid then
																GetFruit()
															end
														end
													else
														refunxzyz = true
													end
												end
												if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
												elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
													Farm_Mastery = true
													Weapon = 'Yama'
												end
											end
										end
									end
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA('Tool') and v.Name == 'Yama' then
											if v.Level.Value >= 400 then
												Farm_Mastery = false
												Yama_M_Q = true
											elseif v.Level.Value <= 400 then
												local I = {
													Point = game:GetService("Players").LocalPlayer.Data.Points.Value
												}
												if not refunxzyz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
													if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
													elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
														if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
														elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
															if not List.Raid then
																Check_Raid = true
															elseif List.Raid and not Check_Raid then
																GetFruit()
															end
														end
													else
														refunxzyz = true
													end
												end
												if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
												elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
													Farm_Mastery = true
													Weapon = 'Yama'
												end
											end
										end
									end
								elseif not game.Players.LocalPlayer.Character:FindFirstChild('Yama') and not game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
									Get_Item_Inventory('Yama')
								end
							else
								Quest = 'CDK'
								List.Quest = true
							end
						elseif not Check_Quest_Soul_Guitar and game.Players.LocalPlayer.Data.Level.Value >= 2550 and _G.Gun['Soul Guitar'] == true and not Soul_Guitar_H and Three_World then
							if not kpdfohk then
								if CheckItem('Dark Fragment') >= 1 and not Quest_Soul_Guitar then
									Quest = 'Soul Guitar'
									List.Quest = true
								elseif not Quest_Soul_Guitar then
									Check_Quest_Soul_Guitar = true
								end
								kpdfohk = true
							end
						elseif update_new and game.Players.LocalPlayer.Data.Level.Value >= 2550 and _G.Mastery['Gun'] and not Max_Gun and Three_World then
							if check_old == nil then
								check_it = {}
								check_old = {}
							end
							if Farm_Gun_Go == nil then
								for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
									if v.Type == 'Gun' then
										if tonumber(v.Mastery) >= tonumber(v.MasteryRequirements.X) and not table.find(check_it,v.Name) then
											table.insert(check_it,v.Name)
										elseif tonumber(v.Mastery) < tonumber(v.MasteryRequirements.X) and not table.find(check_old,v.Name) then
											table.insert(check_old,v.Name)
										end
									end
								end
								if #check_old > 0 then
									for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
										if v.Type == 'Gun' and v.Name == check_old[1] then
											Farm_Gun_Go = tonumber(v.MasteryRequirements.X)
										end
									end
								elseif #check_old == 0 then
									Max_Gun = true
								end
							else
								if not game.Players.LocalPlayer.Backpack:FindFirstChild(check_old[1]) and not game.Players.LocalPlayer.Character:FindFirstChild(check_old[1]) then
									Get_Item_Inventory(check_old[1])
								else
									if Mastery_Max == nil then
										Mastery_Max = Farm_Gun_Go
									else
										for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v:IsA('Tool') and v.Name == check_old[1] then
												if v.Level.Value >= Mastery_Max then
													Update_Mas(v.Name)
													Weapon_Gun = nil
													Start_Farm_Mastery_Gun = false
													Mastery_Max = nil
													Farm_Gun_Go = nil
													for i,v in pairs(check_old) do
														if v == v.Name then
															table.remove(check_old,i)
														end
													end
												elseif v.Level.Value < Mastery_Max then
													local I = {
														Point = game:GetService("Players").LocalPlayer.Data.Points.Value
													}
													if not refunxzy and game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
														if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
														elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
															if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
															elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
																if not List.Raid then
																	Check_Raid = true
																elseif List.Raid and not Check_Raid then
																	GetFruit()
																end
															end
														else
															refunxzy = true
														end
													end
													if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value < 2550 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", game:GetService("Players").LocalPlayer.Data.Points.Value)
													elseif game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value >= 2000 then
														Weapon_Gun = v.Name
														Start_Farm_Mastery_Gun = true
													end
												end
											end
										end
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v:IsA('Tool') and v.Name == check_old[1] then
												if v.Level.Value >= Mastery_Max then
													Update_Mas(v.Name)
													Weapon_Gun = nil
													Start_Farm_Mastery_Gun = false
													Mastery_Max = nil
													Farm_Gun_Go = nil
													for i,v in pairs(check_old) do
														if v == v.Name then
															table.remove(check_old,i)
														end
													end
												elseif v.Level.Value < Mastery_Max then
													local I = {
														Point = game:GetService("Players").LocalPlayer.Data.Points.Value
													}
													if not refunxzy and game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
														if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
														elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
															if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
															elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
																if not List.Raid then
																	Check_Raid = true
																elseif List.Raid and not Check_Raid then
																	GetFruit()
																end
															end
														else
															refunxzy = true
														end
													end
													if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value < 2550 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", game:GetService("Players").LocalPlayer.Data.Points.Value)
													elseif game:GetService("Players").LocalPlayer.Data.Stats["Gun"].Level.Value >= 2000 then
														Weapon_Gun = v.Name
														Start_Farm_Mastery_Gun = true
													end
												end
											end
										end
									end
								end
							end
						elseif update_new and God_Human_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 and getgenv().Sword['Shark Anchor'] and not Shark_Anchor_H and Three_World then
							Auto_Farm_Shark_Anchor = true
							List.Quest = true
						elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 and _G.Mastery['Sword'] and Three_World then
							if Shisui_Mas and Saddi_Mas and Wando_Mas and game:GetService("Players").LocalPlayer.Data.Beli.Value >= 3000000 and not True_Triple_Katana_H then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","1")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("MysteriousMan","2")
								True_Triple_Katana_H = true
								True_Triple_Katana_S:Set(" ✅ : True Triple Katana")
							end
							if Sword_Attack_X == nil then
								for i,v in pairs(_G.Mastery['Setting Sword']) do
									Check_Sword_H(v)
								end
							else
								if Mas_Sword == nil then
									if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(Sword_Attack_X) then
										local Test_Sword = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[Sword_Attack_X].X.Level.Text
										result = {}
										local regex = ("([^%s]+)"):format("Mas .. ")
										for each in Test_Sword:gmatch(regex) do
											table.insert(result, each)
										end
										Mas_Sword = tonumber(result[1])
									elseif not game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X) and not game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X) then
										Get_Item_Inventory(Sword_Attack_X)
									else
										EquipWeapon(Sword_Attack_X)
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X) or game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X) then
										if game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X) and game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X).Level.Value >= Mas_Sword then
											Update_Mas(Sword_Attack_X)
										elseif game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X) and game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X).Level.Value < Mas_Sword then
											local I = {
												Point = game:GetService("Players").LocalPlayer.Data.Points.Value
											}
											if not refunxz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
												if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
												elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
													if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
													elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
														if not List.Raid then
															Check_Raid = true
														elseif List.Raid and not Check_Raid then
															GetFruit()
														end
													end
												else
													refunxz = true
												end
											end
											if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
											elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
												Weapon = Sword_Attack_X
												Farm_Mastery = true
											end
										end
										if game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X) and game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X).Level.Value >= Mas_Sword then
											Update_Mas(Sword_Attack_X)
										elseif game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X) and game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X).Level.Value < Mas_Sword then
											local I = {
												Point = game:GetService("Players").LocalPlayer.Data.Points.Value
											}
											if not refunxz and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2000 and game:GetService("Players").LocalPlayer.Data.Points.Value < 2000 then
												if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value >= 1 then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("redeemRefundPoints","Refund Points")
												elseif game:GetService("Players").LocalPlayer.Data.Points.Value == I.Point then
													if game.Players.LocalPlayer.Data.Fragments.Value >= 2550 then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
													elseif game.Players.LocalPlayer.Data.Fragments.Value < 2500 then
														if not List.Raid then
															Check_Raid = true
														elseif List.Raid and not Check_Raid then
															GetFruit()
														end
													end
												else
													refunxz = true
												end
											end
											if game:GetService("Players").LocalPlayer.Data.Points.Value > 0 and game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value < 2550 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", game:GetService("Players").LocalPlayer.Data.Points.Value)
											elseif game:GetService("Players").LocalPlayer.Data.Stats["Sword"].Level.Value >= 2000 then
												Weapon = Sword_Attack_X
												Farm_Mastery = true
											end
										end
									elseif not game.Players.LocalPlayer.Backpack:FindFirstChild(Sword_Attack_X) and not game.Players.LocalPlayer.Character:FindFirstChild(Sword_Attack_X) then
										Get_Item_Inventory(Sword_Attack_X)
									end
								end	
							end
						end
					end
				end
				if not List.Quest then -- Sword
					local Lv = game.Players.LocalPlayer.Data.Level.Value
					if _G.Sword['Saber'] and not Saber_Q_C and game.Players.LocalPlayer.Data.Level.Value >= 200 and Old_World then
						Quest = 'Saber'
						List.Quest = true
					elseif game.Players.LocalPlayer.Data.Level.Value >= 700 and not God_Human_Buy and _G.Melee['Godhuman'] and game.Players.LocalPlayer.Data.Level.Value < 2550 and Old_World and not Check_Fish_Tail then
						if CheckItem('Fish Tail') >= 20 then
							Check_Fish_Tail = true
						else
							Quest = 'Q Fish Tail'
							List.Quest = true
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 700 and game.Players.LocalPlayer.Data.Level.Value < 2550 and Old_World then
						Quest = 'Second World'
						List.Quest = true
					elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and not Bartlio_H and New_World then -- Set Value
						Quest = 'Bartlio'
						List.Quest = true
					elseif game.Players.LocalPlayer.Data.Level.Value >= 1500 and _G.Gun['Soul Guitar'] and not Soul_Guitar_H and New_World and not Check_Ectoplasm then
						if CheckItem('Ectoplasm') >= 250 then
							Check_Ectoplasm = true
						else
							Quest = 'Q Ectoplasm'
							List.Quest = true
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 1500 and not God_Human_Buy and _G.Melee['Godhuman'] and not Check_Magma_Ore and New_World then
						if CheckItem('Magma Ore') >= 20 then
							Check_Magma_Ore = true
						else
							Quest = 'Q Magma Ore'
							List.Quest = true
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 1500 and not God_Human_Buy and _G.Melee['Godhuman'] and not Check_Mystic_Droplet and New_World then
						if CheckItem('Mystic Droplet') >= 10 then
							Check_Mystic_Droplet = true
						else
							Quest = 'Q Mystic Droplet'
							List.Quest = true
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 and Select_race_low and God_Human_H then
						if table.find(getgenv().Quest['Evo Race']['Select Race'],tostring(game.Players.LocalPlayer.Data.Race.Value)) then
							Select_race_low = false
							Evo_Race_V1_H = false
							Evo_Race_V2_H = false
							Evo_Race_V3_H = false
							if New_World or Three_World then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then -- V1
									Evo_Race_V1_H = true
								end
							end
							if New_World or Three_World then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil and Evo_Race_V1_H then -- V2
									Evo_Race_V2_H = true
								end
							end
							if New_World or Three_World then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
									Evo_Race_V3_H = true
								end
							end
							if Evo_Race_V3_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
							elseif Evo_Race_V2_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
							else
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value))
							end
							if not Evo_Race_V3_H and Three_World then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								TleP = true
							elseif New_World then
								if not Evo_Race_V1_H then
									if game.Players.LocalPlayer.Data.Beli.Value >= 500000 then
										Quest = 'Evo Race V1'
										List.Quest = true
									end
								elseif not Evo_Race_V2_H then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
										Evo_Race_V2_H = true
										if Evo_Race_V3_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
										elseif Evo_Race_V2_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
										elseif Evo_Race_V1_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
										end
										if _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World then
											if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
												Quest = 'Evo Race V3'
												List.Quest = true
											end
										end
									elseif Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == nil then
										Quest = 'Evo Race V2'
										List.Quest = true
									elseif Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil then
										Evo_Race_V2_H = true
										if Evo_Race_V3_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
										elseif Evo_Race_V2_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
										elseif Evo_Race_V1_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
										end
										if _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World then
											if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
												Quest = 'Evo Race V3'
												List.Quest = true
											end
										end
									end
								elseif not Evo_Race_V3_H then
									if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
										Quest = 'Evo Race V3'
										List.Quest = true
									end
								end
							end
						else
							if game.Players.LocalPlayer.Data.Fragments.Value >= 3000 then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "Reroll",
									[3] = "2"
								}
								
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								wait(4)
							else
								if not List.Raid then
									Check_Raid = true
								elseif List.Raid and not Check_Raid then
									GetFruit()
								end
							end
						end
					elseif _G.Quest['Evo Race V1'] and not Evo_Race_V1_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 and New_World then
						if game.Players.LocalPlayer.Data.Beli.Value >= 500000 then
							Quest = 'Evo Race V1'
							List.Quest = true
						end
					elseif _G.Quest['Evo Race V2'] and not Evo_Race_V2_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 and New_World then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
							Evo_Race_V2_H = true
							if Evo_Race_V3_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
							elseif Evo_Race_V2_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
							elseif Evo_Race_V1_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
							end
							if _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World then
								if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
									Quest = 'Evo Race V3'
									List.Quest = true
								end
							end
						elseif Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == nil then
							Quest = 'Evo Race V2'
							List.Quest = true
						elseif Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil then
							Evo_Race_V2_H = true
							if Evo_Race_V3_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
							elseif Evo_Race_V2_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
							elseif Evo_Race_V1_H then
								Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
							end
							if _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World then
								if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
									Quest = 'Evo Race V3'
									List.Quest = true
								end
							end
						end
					elseif _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 and God_Human_H then
						if not New_World then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							TleP = true
							wait(50)
						else
							if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
								Quest = 'Evo Race V3'
								List.Quest = true
							end
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 2550 and Evo_Race_V3_H and New_World then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
							TleP = true
							wait(50)
						end
					elseif game.Players.LocalPlayer.Data.Level.Value >= 1500 and Don_Swan_H and New_World and not save_wait then
						if game.Players.LocalPlayer.Data.Level.Value >= 2550 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
								if not string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)),"keys") or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 3 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 0 or Sharkman_Karate_Buy then
									if not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
										Quest = 'Third World'
										List.Quest = true
									end
								end
							else
								save_wait = true
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
							if not string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)),"keys") or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 3 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 0 or Sharkman_Karate_Buy then
								if not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
									Quest = 'Third World'
									List.Quest = true
								end
							end
						end
					end
				end
				if _G.Fruit_Main['Quest Dough Awaken'] == true and game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dough-Dough' and Quest_Dough_Awaken then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakeneddAbilities") ~= '' then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == false then
							if not List.Raid then
								Quest_Dough_Awaken_EX = true
								Check_Raid = true
							elseif List.Raid and not Check_Raid then
								GetFruit()
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
							Quest_Dough_Awaken_EX = false
						end
					end
				elseif game.Players.LocalPlayer.Data.DevilFruit.Value ~= 'Dough-Dough' then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= '' then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == false then
							if not List.Raid then
								Check_Raid = true
							elseif List.Raid and not Check_Raid then
								GetFruit()
							end
						end
					end
				end
			end)
		end
	end)
	-- Check Boss Spawn
	spawn(function()
		while wait(.5) do
			if Select_List_Boss == nil and not Cake_Quest then
				if New_World then
					if game.Workspace.Enemies:FindFirstChild("Core") or game.ReplicatedStorage:FindFirstChild("Core") then
						Select_List_Boss = "Core"
					end
					if game.Workspace.Enemies:FindFirstChild("Tide Keeper") or game.ReplicatedStorage:FindFirstChild("Tide Keeper") then
						Select_List_Boss = "Tide Keeper"
					end
					if game.Workspace.Enemies:FindFirstChild("Awakened Ice Admiral") or game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral") then
						Select_List_Boss = "Awakened Ice Admiral"
					end
					if game.Workspace.Enemies:FindFirstChild("Darkbeard") or game.ReplicatedStorage:FindFirstChild("Darkbeard") then
						Select_List_Boss = "Darkbeard"
					end
					if Don_Swan_H then
						if game.Workspace.Enemies:FindFirstChild("Don Swan") or game.ReplicatedStorage:FindFirstChild("Don Swan") then
							Select_List_Boss = "Don Swan"
						end
					end
				end
				if _G.Gun['Serpent Bow'] then
					if game.Workspace.Enemies:FindFirstChild("Island Empress") or game.ReplicatedStorage:FindFirstChild("Island Empress") then
						Select_List_Boss = "Island Empress"
					end
				end
				if _G.Sword['Saber'] then
					if game.Workspace.Enemies:FindFirstChild('Saber Expert') or game.ReplicatedStorage:FindFirstChild('Saber Expert') then
						if Saber_Q_C and not Saber_H then
							Select_List_Boss = 'Saber Expert'
						end
					end
				end
				if _G.Sword['Koko'] then
					if Spawn_Order then -- Visible Spawn
						if game.Workspace.Enemies:FindFirstChild("Order") or game.ReplicatedStorage:FindFirstChild("Order") then
							Select_List_Boss = "Order"
						end
					end
				end
				if _G.Sword['Rengoku'] then
					if game.Workspace.Enemies:FindFirstChild("Awakened Ice Admiral") or game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral") then
						Select_List_Boss = "Awakened Ice Admiral"
					end
				end
				if _G.Sword['Canvander'] then
					if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") or game.ReplicatedStorage:FindFirstChild("Beautiful Pirate") then
						Select_List_Boss = "Beautiful Pirate"
					end
				end
				if _G.Sword['Buddy Sword'] then
					if game.Workspace.Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
						Select_List_Boss = "Cake Queen"
					end
				end
				if _G.Sword['Twin Hooks'] then  
					if game.Workspace.Enemies:FindFirstChild("Captain Elephant") or game.ReplicatedStorage:FindFirstChild("Captain Elephant") then
						Select_List_Boss = "Captain Elephant"
					end
				end
				if _G.Sword['SpikeyTrident'] then
					if game.Workspace.Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
						Select_List_Boss = "Cake Prince"
					end
				end
				if not Valkyrie_Helmet_H or not Yama_H or not Quest_Dough_Awaken then
					if game.Workspace.Enemies:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Deandre") then
						Select_List_Boss = 'Deandre'
					end
					if game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Diablo") then
						Select_List_Boss = 'Diablo'
					end
					if game.Workspace.Enemies:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Urban") then
						Select_List_Boss = 'Urban'
					end
				end
				if _G.Sword['Hallow Scryte'] then
					if game.Workspace.Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
						Select_List_Boss = "Soul Reaper"
					end
				end
				if _G.Sword['Dark Dagger'] or _G.Sword['Tushita'] then
					if game.Workspace.Enemies:FindFirstChild("rip_indra True Form") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
						Select_List_Boss = "rip_indra True Form"
					end
				end
				if _G.Sword['Tushita'] then
					if Unlock_Tushita_Quest and not Tushita_H then
						if game.Workspace.Enemies:FindFirstChild("Longma") or game.ReplicatedStorage:FindFirstChild("Longma") then
							Select_List_Boss = "Longma"
						end
					end
				end
				if _G.Fruit_Main['Quest Dough Awaken'] then
					if not Quest_Dough_Awaken then
						if game.Workspace.Enemies:FindFirstChild('Dough King') or game.ReplicatedStorage:FindFirstChild('Dough King') then
							List.Quest = true
							Quest_Istand = 'God Dough Awaken'
						end
					end
				end
				if Check_RGB_Spawn ~= nil and Check_RGB_Spawn == 'Stone' then
					if game.Workspace.Enemies:FindFirstChild("Stone") or game.ReplicatedStorage:FindFirstChild("Stone") then
						Select_List_Boss = "Stone"
					end
				end
				if Check_RGB_Spawn ~= nil and Check_RGB_Spawn == 'Kilo Admiral' then
					if game.Workspace.Enemies:FindFirstChild("Kilo Admiral") or game.ReplicatedStorage:FindFirstChild("Kilo Admiral") then
						Select_List_Boss = "Kilo Admiral"
					end
				end
				if Check_RGB_Spawn ~= nil and Check_RGB_Spawn == 'Captain Elephant' then
					if game.Workspace.Enemies:FindFirstChild("Captain Elephant") or game.ReplicatedStorage:FindFirstChild('Captain Elephant') then
						Select_List_Boss = 'Captain Elephant'
					end
				end
				if Check_RGB_Spawn ~= nil and Check_RGB_Spawn == 'Beautiful Pirate' then
					if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") or game.ReplicatedStorage:FindFirstChild('Beautiful Pirate') then
						Select_List_Boss = 'Beautiful Pirate'
					end
				end
				if Check_RGB_Spawn ~= nil and Check_RGB_Spawn == 'Island Empress' then
					if game.Workspace.Enemies:FindFirstChild("Island Empress") or game.ReplicatedStorage:FindFirstChild('Island Empress') then
						Select_List_Boss = 'Island Empress'
					end
				end
			elseif Select_List_Boss ~= nil then
				if Check_RGB_Spawn ~= nil and string.find(Select_List_Boss,Check_RGB_Spawn) then
					Start_Quest_RGB = true
				end
				List.Boss = true
				repeat wait(.5)
				until Select_List_Boss == nil
				Start_Kill_Boss = false
				if Start_Quest_RGB then
					Start_Quest_RGB = false
					Check_RGB_Spawn = nil
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == nil then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							local name_q = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
							if string.find(name_q,'Stone') then
								Check_RGB_Spawn = 'Stone'
							elseif string.find(name_q,'Island Empress') then
								Check_RGB_Spawn = 'Island Empress'
							elseif string.find(name_q,'Kilo Admiral') then
								Check_RGB_Spawn = 'Kilo Admiral'
							elseif string.find(name_q,'Captain Elephant') then
								Check_RGB_Spawn = 'Captain Elephant'
							elseif string.find(name_q,'Beautiful Pirate') then
								Check_RGB_Spawn = 'Beautiful Pirate'
							end
							if Check_RGB_Spawn == nil then
							else
								if string.find(name_q,'Stone') then
									Number = 1
								elseif string.find(name_q,'Island Empress') then
									Number = 2
								elseif string.find(name_q,'Kilo Admiral') then
									Number = 3
								elseif string.find(name_q,'Captain Elephant') then
									Number = 4
								elseif string.find(name_q,'Beautiful Pirate') then
									Number = 5
								end
								RGB_S_Q:Set(' RGB : '. .. tostring(Number).."/5 "..Check_RGB_Spawn)
							end
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == 1 then
						RGB_H = true
						RGB_S_Q:Set(' RGB : ✅')
						Check_RGB_Spawn = nil
					end
				end
			end
		end
	end)
	-- Get Fruit
	spawn(function()
	while wait(1) do
		pcall(function()
			for i,v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
					List.Fruit = true
				end
			end
			if List.Fruit then
				repeat wait(.5)
				until not List.Fruit
			end
		end)
	end
	end)
	-- Raid
	spawn(function()
		while wait() do
			pcall(function()
				if List.Raid then -- Kill Aura
					if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
							end
						end
					end
				else
					wait(2)
				end
			end)
		end
	end)
	-- Buy Random Fruit
	spawn(function()
		while wait(5) do
			pcall(function()
				Random_Fruit = true
				wait(200)
			end)
		end
	end)
	-- Buy Legendary Sword and Buy Ability
	spawn(function()
	while wait() do
		pcall(function()
			if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 and New_World then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
			end
			if not Kabucha_H and game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2") == 1 then
					Kabucha_H = true
					Kabucha_S:Set(' ✅ : Kabucha')
				end
			end
			if game.Players.LocalPlayer.Data.Beli.Value >= 3000000 then
				if not Bisento_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento") == 1 then
					Bisento_H = true
					Bisento_S:Set(' ✅ : Bisento')
				end
				if not Soul_Cane_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane") == 1 then
					Soul_Cane_H = true
					Soul_Cane_S:Set(' ✅ : Soul Cane')
				end
			end
			if _G.Sword['Midnight Blade'] and not Midnight_Blade_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check") >= 100 then
				local args = {
					[1] = "Ectoplasm",
					[2] = "Buy",
					[3] = 3
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				Ectoplasm_S:Set(' Ectoplasm : '..CheckItem('Ectoplasm'))
			end
			if not klmdlkgf and game.Players.LocalPlayer.Data.Level.Value >= 2000 then
				local args = {
					[1] = "BuyHaki",
					[2] = "Geppo"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "BuyHaki",
					[2] = "Soru"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "KenTalk",
					[2] = "Buy"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				klmdlkgf = true
			end
			if not klmdlkgfx and game.Players.LocalPlayer.Data.Level.Value >= 1000 then
				local args = {
					[1] = "BuyHaki",
					[2] = "Buso"
				}
		
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
				klmdlkgfx = true
			end
			wait(100)
		end)
	end
	end)
	-- Get Monster
	local function GetMonster(vu)
		pcall(function()
			for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v:IsA('Model') and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= vu then
					Monster = v
					return
				end
			end
		end)
	end
	-- Get Island
	local function GetRaid(vu,mag)
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
			if v:IsA('Part') or v:IsA('BasePart') then
				if v.Name == vu and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= mag then
					return v
				end
			end
		end
		return nil
	end
	-- Get Sword
	function GetLoadSword()
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
		if not Saber_H then
			if v["Name"] == 'Saber' then
				Saber_S:Set(' ✅ : Saber')
				Saber_H = true
			end
		end
		if not Bisento_H then
			if v["Name"] == 'Bisento' then
				Bisento_S:Set(' ✅ : Bisento')
				Bisento_H = true
			end
		end
		if not Soul_Cane_H then
			if v["Name"] == 'Soul Cane' then
				Soul_Cane_S:Set(' ✅ : Soul Cane')
				Soul_Cane_H = true
			end
		end
		if not Rengoku_H then
			if v["Name"] == 'Rengoku' then
				Rengoku_S:Set(' ✅ : Rengoku')
				Rengoku_H = true
			end
		end
		if not Yama_H then
			if v["Name"] == 'Yama' then
				Yama_S:Set(' ✅ : Yama')
				Yama_H = true
			end
		end
		if not Koko_H then
			if v["Name"] == 'Koko' then
				Koko_S:Set(' ✅ : Koko')
				Koko_H = true
			end
		end
		if not Spikey_Trident_H then
			if v["Name"] == 'Spikey Trident' then
				Spikey_Trident_S:Set(' ✅ : Spikey Trident')
				Spikey_Trident_H = true
			end
		end
		if not Buddy_Sword_H then
			if v["Name"] == 'Buddy Sword' then
				Buddy_Sword_S:Set(' ✅ : Buddy Sword')
				Buddy_Sword_H = true
			end
		end
		if not Canvander_H then
			if v["Name"] == 'Canvander' then
				Canvander_S:Set(' ✅ : Canvander')
				Canvander_H = true
			end
		end
		if not Tushita_H then
			if v["Name"] == 'Tushita' then
				Tushita_S:Set(' ✅ : Tushita')
				Tushita_H = true
			end
		end
		if not Hallow_Scryte_H then
			if v["Name"] == 'Hallow Scythe' then
				Hallow_Scythe_S:Set(' ✅ : Hallow Scythe')
				Hallow_Scryte_H = true
			end
		end
		if not Midnight_Blade_H then
			if v["Name"] == 'Midnight Blade' then
				Midnight_Blade_S:Set(' ✅ : Midnight Blade')
				Midnight_Blade_H = true
			end
		end
		if not Shisui_H then
			if v["Name"] == 'Shisui' then
				Shisui_S:Set(' ✅ : Shisui')
				Shisui_H = true
			end
		end
		if not Saddi_H then
			if v["Name"] == 'Saddi' then
				Saddi_S:Set(' ✅ : Saddi')
				Saddi_H = true
			end
		end
		if not Wando_H then
			if v["Name"] == 'Wando' then
				Wando_S:Set(' ✅ : Wando')
				Wando_H = true
			end
		end
		if not Dark_Dagger_H then
			if v["Name"] == 'Dark Dagger' then
				Dark_Dagger_S:Set(' ✅ : Dark Dagger')
				Dark_Dagger_H = true
			end
		end
		if not True_Triple_Katana_H then
			if v["Name"] == 'True Triple Katana' then
				True_Triple_Katana_S:Set(' ✅ : True Triple Katana')
				True_Triple_Katana_H = true
			end
		end
		if not Cursed_Dual_Katana_H then
			if v["Name"] == 'Cursed Dual Katana' then
				Cursed_Dual_Katana_S:Set(' ✅ : Cursed Dual Katana')
				Cursed_Dual_Katana_H = true
			end
		end
	
		if not Soul_Cane_H then
			if v["Name"] == 'Soul Guitar' then
				Soul_Guitar_S:Set(' ✅ : Soul Guitar')
				Soul_Cane_H = true
			end
		end
		if not Kabucha_H then
			if v["Name"] == 'Kabucha' then
				Kabucha_S:Set(' ✅ : Kabucha')
				Kabucha_H = true
			end
		end
		if not Acidum_Rifle_H then
			if v["Name"] == 'Acidum Rifle' then
				Acidum_Rifle_S:Set(' ✅ : Acidum Rifle')
				Acidum_Rifle_H = true
			end
		end
		if not Serpent_Bow_H then
			if v["Name"] == 'Serpent Bow' then
				Serpent_Bow_S:Set(' ✅ : Serpent Bow')
				Serpent_Bow_H = true
			end
		end
	
		if v["Name"] == 'Valkyrie Helm' then
			Valkyrie_Helmet_H = true
            Valkyrie_Helmet_S_L:Set(' ✅ : Valkyrie Helm')
			Valkyrie_Helmet_S:Set(' ✅ : Valkyrie Helm')
		end
		if v["Name"] == 'Holy Crown' then
			Holy_Crown_S:Set(' ✅ : Holy Crown')
		end
		if v["Name"] == 'Pale Scarf' then
			Pale_Scarf_S:Set(' ✅ : Pale Scarf')
		end
		if v["Name"] == 'Dark Coat' then
			Dark_Coat_S:Set(' ✅ : Dark Coat')
		end
		if v["Name"] == 'Swan Glasses' then
			Swan_Glass_S:Set(' ✅ : Swan Glasses')
		end
		if v["Name"] == 'Zebra Cap' then
			Zebra_Cap_S:Set(' ✅ : Zebra Cap')
		end
		if v["Name"] == 'Warrior Helmet' then
			Warrior_Helmet_S:Set(' ✅ : Warrior Helmet')
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA('Tool') then
			local v = {
				['Name'] = v.Name
			}
			if not Saber_H then
				if v["Name"] == 'Saber' then
					Saber_S:Set(' ✅ : Saber')
					Saber_H = true
				end
			end
			if not Bisento_H then
				if v["Name"] == 'Bisento' then
					Bisento_S:Set(' ✅ : Bisento')
					Bisento_H = true
				end
			end
			if not Soul_Cane_H then
				if v["Name"] == 'Soul Cane' then
					Soul_Cane_S:Set(' ✅ : Soul Cane')
					Soul_Cane_H = true
				end
			end
			if not Rengoku_H then
				if v["Name"] == 'Rengoku' then
					Rengoku_S:Set(' ✅ : Rengoku')
					Rengoku_H = true
				end
			end
			if not Yama_H then
				if v["Name"] == 'Yama' then
					Yama_S:Set(' ✅ : Yama')
					Yama_H = true
				end
			end
			if not Koko_H then
				if v["Name"] == 'Koko' then
					Koko_S:Set(' ✅ : Koko')
					Koko_H = true
				end
			end
			if not Spikey_Trident_H then
				if v["Name"] == 'Spikey Trident' then
					Spikey_Trident_S:Set(' ✅ : Spikey Trident')
					Spikey_Trident_H = true
				end
			end
			if not Buddy_Sword_H then
				if v["Name"] == 'Buddy Sword' then
					Buddy_Sword_S:Set(' ✅ : Buddy Sword')
					Buddy_Sword_H = true
				end
			end
			if not Canvander_H then
				if v["Name"] == 'Canvander' then
					Canvander_S:Set(' ✅ : Canvander')
					Canvander_H = true
				end
			end
			if not Tushita_H then
				if v["Name"] == 'Tushita' then
					Tushita_S:Set(' ✅ : Tushita')
					Tushita_H = true
				end
			end
			if not Hallow_Scryte_H then
				if v["Name"] == 'Hallow Scythe' then
					Hallow_Scythe_S:Set(' ✅ : Hallow Scythe')
					Hallow_Scryte_H = true
				end
			end
			if not Midnight_Blade_H then
				if v["Name"] == 'Midnight Blade' then
					Midnight_Blade_S:Set(' ✅ : Midnight Blade')
					Midnight_Blade_H = true
				end
			end
			if not Shisui_H then
				if v["Name"] == 'Shisui' then
					Shisui_S:Set(' ✅ : Shisui')
					Shisui_H = true
				end
			end
			if not Saddi_H then
				if v["Name"] == 'Saddi' then
					Saddi_S:Set(' ✅ : Saddi')
					Saddi_H = true
				end
			end
			if not Wando_H then
				if v["Name"] == 'Wando' then
					Wando_S:Set(' ✅ : Wando')
					Wando_H = true
				end
			end
			if not Dark_Dagger_H then
				if v["Name"] == 'Dark Dagger' then
					Dark_Dagger_S:Set(' ✅ : Dark Dagger')
					Dark_Dagger_H = true
				end
			end
			if not True_Triple_Katana_H then
				if v["Name"] == 'True Triple Katana' then
					True_Triple_Katana_S:Set(' ✅ : True Triple Katana')
					True_Triple_Katana_H = true
				end
			end
			if not Cursed_Dual_Katana_H then
				if v["Name"] == 'Cursed Dual Katana' then
					Cursed_Dual_Katana_S:Set(' ✅ : Cursed Dual Katana')
					Cursed_Dual_Katana_H = true
				end
			end
		
			if not Soul_Cane_H then
				if v["Name"] == 'Soul Guitar' then
					Soul_Guitar_S:Set(' ✅ : Soul Guitar')
					Soul_Cane_H = true
				end
			end
			if not Kabucha_H then
				if v["Name"] == 'Kabucha' then
					Kabucha_S:Set(' ✅ : Kabucha')
					Kabucha_H = true
				end
			end
			if not Acidum_Rifle_H then
				if v["Name"] == 'Acidum Rifle' then
					Acidum_Rifle_S:Set(' ✅ : Acidum Rifle')
					Acidum_Rifle_H = true
				end
			end
			if not Serpent_Bow_H then
				if v["Name"] == 'Serpent Bow' then
					Serpent_Bow_S:Set(' ✅ : Serpent Bow')
					Serpent_Bow_H = true
				end
			end
		
			if v["Name"] == 'Valkyrie Helm' then
				Valkyrie_Helmet_H = true
                Valkyrie_Helmet_S_L:Set(' ✅ : Valkyrie Helm')
				Valkyrie_Helmet_S:Set(' ✅ : Valkyrie Helm')
			end
			if v["Name"] == 'Holy Crown' then
				Holy_Crown_S:Set(' ✅ : Holy Crown')
			end
			if v["Name"] == 'Pale Scarf' then
				Pale_Scarf_S:Set(' ✅ : Pale Scarf')
			end
			if v["Name"] == 'Dark Coat' then
				Dark_Coat_S:Set(' ✅ : Dark Coat')
			end
			if v["Name"] == 'Swan Glasses' then
				Swan_Glass_S:Set(' ✅ : Swan Glasses')
			end
			if v["Name"] == 'Zebra Cap' then
				Zebra_Cap_S:Set(' ✅ : Zebra Cap')
			end
			if v["Name"] == 'Warrior Helmet' then
				Warrior_Helmet_S:Set(' ✅ : Warrior Helmet')
			end
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA('Tool') then
			local v = {
				['Name'] = v.Name
			}
			if not Saber_H then
				if v["Name"] == 'Saber' then
					Saber_S:Set(' ✅ : Saber')
					Saber_H = true
				end
			end
			if not Bisento_H then
				if v["Name"] == 'Bisento' then
					Bisento_S:Set(' ✅ : Bisento')
					Bisento_H = true
				end
			end
			if not Soul_Cane_H then
				if v["Name"] == 'Soul Cane' then
					Soul_Cane_S:Set(' ✅ : Soul Cane')
					Soul_Cane_H = true
				end
			end
			if not Rengoku_H then
				if v["Name"] == 'Rengoku' then
					Rengoku_S:Set(' ✅ : Rengoku')
					Rengoku_H = true
				end
			end
			if not Yama_H then
				if v["Name"] == 'Yama' then
					Yama_S:Set(' ✅ : Yama')
					Yama_H = true
				end
			end
			if not Koko_H then
				if v["Name"] == 'Koko' then
					Koko_S:Set(' ✅ : Koko')
					Koko_H = true
				end
			end
			if not Spikey_Trident_H then
				if v["Name"] == 'Spikey Trident' then
					Spikey_Trident_S:Set(' ✅ : Spikey Trident')
					Spikey_Trident_H = true
				end
			end
			if not Buddy_Sword_H then
				if v["Name"] == 'Buddy Sword' then
					Buddy_Sword_S:Set(' ✅ : Buddy Sword')
					Buddy_Sword_H = true
				end
			end
			if not Canvander_H then
				if v["Name"] == 'Canvander' then
					Canvander_S:Set(' ✅ : Canvander')
					Canvander_H = true
				end
			end
			if not Tushita_H then
				if v["Name"] == 'Tushita' then
					Tushita_S:Set(' ✅ : Tushita')
					Tushita_H = true
				end
			end
			if not Hallow_Scryte_H then
				if v["Name"] == 'Hallow Scythe' then
					Hallow_Scythe_S:Set(' ✅ : Hallow Scythe')
					Hallow_Scryte_H = true
				end
			end
			if not Midnight_Blade_H then
				if v["Name"] == 'Midnight Blade' then
					Midnight_Blade_S:Set(' ✅ : Midnight Blade')
					Midnight_Blade_H = true
				end
			end
			if not Shisui_H then
				if v["Name"] == 'Shisui' then
					Shisui_S:Set(' ✅ : Shisui')
					Shisui_H = true
				end
			end
			if not Saddi_H then
				if v["Name"] == 'Saddi' then
					Saddi_S:Set(' ✅ : Saddi')
					Saddi_H = true
				end
			end
			if not Wando_H then
				if v["Name"] == 'Wando' then
					Wando_S:Set(' ✅ : Wando')
					Wando_H = true
				end
			end
			if not Dark_Dagger_H then
				if v["Name"] == 'Dark Dagger' then
					Dark_Dagger_S:Set(' ✅ : Dark Dagger')
					Dark_Dagger_H = true
				end
			end
			if not True_Triple_Katana_H then
				if v["Name"] == 'True Triple Katana' then
					True_Triple_Katana_S:Set(' ✅ : True Triple Katana')
					True_Triple_Katana_H = true
				end
			end
			if not Cursed_Dual_Katana_H then
				if v["Name"] == 'Cursed Dual Katana' then
					Cursed_Dual_Katana_S:Set(' ✅ : Cursed Dual Katana')
					Cursed_Dual_Katana_H = true
				end
			end
		
			if not Soul_Cane_H then
				if v["Name"] == 'Soul Guitar' then
					Soul_Guitar_S:Set(' ✅ : Soul Guitar')
					Soul_Cane_H = true
				end
			end
			if not Kabucha_H then
				if v["Name"] == 'Kabucha' then
					Kabucha_S:Set(' ✅ : Kabucha')
					Kabucha_H = true
				end
			end
			if not Acidum_Rifle_H then
				if v["Name"] == 'Acidum Rifle' then
					Acidum_Rifle_S:Set(' ✅ : Acidum Rifle')
					Acidum_Rifle_H = true
				end
			end
			if not Serpent_Bow_H then
				if v["Name"] == 'Serpent Bow' then
					Serpent_Bow_S:Set(' ✅ : Serpent Bow')
					Serpent_Bow_H = true
				end
			end
		
			if v["Name"] == 'Valkyrie Helm' then
				Valkyrie_Helmet_H = true
                Valkyrie_Helmet_S_L:Set(' ✅ : Valkyrie Helm')
				Valkyrie_Helmet_S:Set(' ✅ : Valkyrie Helm')
			end
			if v["Name"] == 'Holy Crown' then
				Holy_Crown_S:Set(' ✅ : Holy Crown')
			end
			if v["Name"] == 'Pale Scarf' then
				Pale_Scarf_S:Set(' ✅ : Pale Scarf')
			end
			if v["Name"] == 'Dark Coat' then
				Dark_Coat_S:Set(' ✅ : Dark Coat')
			end
			if v["Name"] == 'Swan Glasses' then
				Swan_Glass_S:Set(' ✅ : Swan Glasses')
			end
			if v["Name"] == 'Zebra Cap' then
				Zebra_Cap_S:Set(' ✅ : Zebra Cap')
			end
			if v["Name"] == 'Warrior Helmet' then
				Warrior_Helmet_S:Set(' ✅ : Warrior Helmet')
			end
		end
	end	
	end
	-- Get Quest CDK
	function GetQuest(vu)
	if (Vector3.new(-12379.1406, 601.433167, -6543.60742)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 30 then
		TPX(CFrame.new(-12379.1406, 601.433167, -6543.60742))
	elseif (Vector3.new(-12379.1406, 601.433167, -6543.60742)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 30 then
		if vu == 'Good' then
			repeat wait(.1)
				TPZ(CFrame.new(-12392.5068, 603.319763, -6596.00586))
			until (Vector3.new(-12392.5068, 603.319763, -6596.00586)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
		elseif vu == 'Evil' then
			repeat wait(.1)
				TPZ(CFrame.new(-12392.2637, 603.319763, -6503.27832))
			until (Vector3.new(-12392.2637, 603.319763, -6503.27832)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
			wait(1)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
		end
	end
	end
	-- Aimbot
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if Tejao and tostring(method) == "FireServer" and PositionSkillMasteryDevilFruit ~= nil or Start_Farm_Mastery_Fruit and tostring(method) == "FireServer" and PositionSkillMasteryDevilFruit ~= nil or Start_Farm_Mastery_Gun and tostring(method) == "FireServer" and PositionSkillMasteryDevilFruit ~= nil then
				if tostring(args[1]) == "RemoteEvent" then 
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						args[2] = PositionSkillMasteryDevilFruit
						return old(unpack(args))
					end
				end
			end
			return old(...)
		end)
		end)
	if Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")['OpenedDoor'] == true then
	Unlock_Tushita_Quest = true
	end
	-- Get Torch
	function GetTorch(vu)
		repeat wait()
			TPZ(game:GetService("Workspace").Map.HeavenlyDimension[vu].CFrame)
		until (game:GetService("Workspace").Map.HeavenlyDimension[vu].Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
		fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension[vu].ProximityPrompt,5)
		wait(0.5)
	end
	function GetTorchX(vu)
		repeat wait()
			TPZ(game:GetService("Workspace").Map.HellDimension[vu].CFrame)
		until (game:GetService("Workspace").Map.HellDimension[vu].Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
		fireproximityprompt(game:GetService("Workspace").Map.HellDimension[vu].ProximityPrompt,5)
		wait(0.5)
	end
	function GetMon_Soul()
		for i,v in next,game:GetService("Workspace").Enemies:GetChildren() do
			if v.Name == "Living Zombie" then
				table.insert(get_mon,v.Name)
			end
		end
	end
	-- Check CDK
	if Three_World and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor") == 'opened' then
		local CheckQuest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")
		if CheckQuest['Evil'] == 2 or CheckQuest['Evil'] == -5 then
			CDK_Quest = true
		end
	end
	-- Loader Bone
	spawn(function()
		while wait(1) do
			if Three_World then
				if game.Players.LocalPlayer.Data.Level.Value >= 2000 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") == 0 and tonumber(CheckItem('Bones')) > 0 then
						Farm_Bone = false
						Check_Bone = false
						Start_Farm_Bone = false
					else
						local Bone = CheckItem('Bones')
						if Bone < 500 then
							Farm_Bone = true
						elseif Bone > 500 and not CDK_Quest then
							Check_Bone = true
						end
						Bone_S:Set(' Bone : '. .. tostring(Bone)..' (00:00:00)')
					end
					if not Farm_Bone then
						local Bone_T = table.pack(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
						if Bone_T.n >= 4 then
							local Bone = CheckItem('Bones')
							ping = 60
							repeat 
								wait(1)
								Bone_S:Set(' Bone : '. .. tostring(Bone)..' ('..Bone_T[4]..':'..ping..')')
								ping = ping-1
							until ping <= 0
						end
					end
				end
			end
		end
	end)
	-- Rejoin
	game.Players.PlayerRemoving:connect(function (plr)
		if plr == game.Players.LocalPlayer and not TleP then
		  	game:GetService('TeleportService'):Teleport(game.PlaceId)
		end
	end)


	--[[
	C_Position = {
	[1] = nil
	}
	if _G.Main['AFK Check'] == nil then
		_G.Main['AFK Check'] = 150
	end
	
	spawn(function()
		while wait() do
			pcall(function()
				C_Position[1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				local time_check = 0 
				repeat wait(1)
					time_check = time_check + 1
				until time_check >= 6000 or game.Players.LocalPlayer.Character.HumanoidRootPart.Position ~= C_Position[1]
				if time_check >= 6000 and not AFK_Not_Check then
					HopLowServer()
					wait(50)
				end
			end)
		end
	end)
	]]
	
	Tool_Special_S:AddButton({
		Name = ' Send Best Sheet ',
		Callback = function()
			library.Notify({
				Text = 'Send Api Sheet Best ',
				Time = 2
			})
			SheetSend()
		end
	})
	
	Tool_Special_S:AddButton({
		Name = ' Send Description RAM ',
		Callback = function(vu)
			if getgenv().RAM['Enabled'] then
				--SetAlias(GetAlias())
				--SetDescription(GetAll())
			end
		end
	})
	spawn(function()
		while wait(10) do
			pcall(function()
				-- Main
				local ris_text = ''
				if God_Human_H then
					ris_text = ris_text..'👊'
				end
				if Cursed_Dual_Katana_H then
					ris_text = ris_text..' ⚔️'
				end
				if Soul_Guitar_H then
					ris_text = ris_text..' 🎸'
				end 
				if Shark_Anchor_H then
					ris_text = ris_text..' ⚓'
				end
				if ris_text ~= '' then
					if Mirror_Fractal_H then
						ris_text = ris_text..' 🧩'
					end
					if Valkyrie_Helmet_H then
						ris_text = ris_text..' 🎩'
					end
					if Quest_Race_V4_H then
						ris_text = ris_text..' 🕹️'
					end
					game:GetService("CoreGui")["Switch Hub"].Text4.Fragments.Text  = ris_text
				end
				local ris_text = ''
				if RGB_H then
					ris_text = 'RGB Aura'
				end
				if Evo_Race_V3_H then
					ris_text = ris_text..' | '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' V3'
				elseif Evo_Race_V2_H then
					ris_text = ris_text..' | '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' V2'
				elseif Evo_Race_V1_H then
					ris_text = ris_text..' | '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' V1'
				else
					ris_text = ris_text..' | '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)
				end
				if tostring(game.Players.LocalPlayer.Data.DevilFruit.Value) ~= '' then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") == nil then
						Name_Awaken = 'x'
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= nil then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
							Name_Awaken = "Z, X, C, V, F"
							Max_Skill = true
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
							Name_Awaken = "Z, X, C, F"
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
							Name_Awaken = "Z, X, F"
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F']['Awakened'] == true then
							Name_Awaken = "Z, F"
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
							Name_Awaken = "Z"
						else
							Name_Awaken = ''
						end 
					end
					result = {}
					local x = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
					local regex = ("([^%s]+)"):format("-")
					for each in x:gmatch(regex) do
						table.insert(result, each)
					end
					if result[1] == 'Buddha-Buddha' then
						result[1] = 'Buddha'
					elseif result[1] == 'Bird-Bird: Phoenix' then
						result[1] = 'Phoenix'
					end
					if Max_Skill then
						ris_text = ris_text..' | Full '..result[1]
					elseif Name_Awaken == 'x' then
						ris_text = ris_text..result[1]
					end
				end
				game:GetService("CoreGui")["Switch Hub"].Text5.Fragments.Text = ris_text
				wait(300)
			end)
		end
	end)
	if table.find(_G.Fruit_Main['Main'],game.Players.LocalPlayer.Data.DevilFruit.Value) then
		Fruit_Eat = true
	end
	-- Check Fruit Main
	if _G.Fruit_Main['Main'] ~= nil and not Fruit_Eat then
		local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
		for i,v in next,fruit do
			if table.find(_G.Fruit_Main['Main'],v['Name']) and not Eat_FruitxZ then
				result = {}
				local regex = ("([^%s]+)"):format("-")
				for each in v["Name"]:gmatch(regex) do
					table.insert(result, each)
				end
				Eat_Fruit = result[2] .. " Fruit"
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
			end
		end
		if Eat_Fruit ~= nil then
			wait(.5)
			if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
				repeat wait()
					EquipWeapon(Eat_Fruit)
				until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
				if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
					wait(3)
					Eat_FruitxZ = true
					Fruit_Eat = true
				end
			end
		end
	end
	-- Sniper Fruit
	spawn(function()
		while wait(5) do
			pcall(function()
				if _G.Fruit_Main['Main'] ~= nil and not Fruit_Eat then
					local Check_Sell_Fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
					for i,v in next,Check_Sell_Fruit do
						if v.OnSale and table.find(_G.Fruit_Main['Main'],v.Name) and not Fruit_Eat then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", v.Name)
							wait(2)
							if table.find(_G.Fruit_Main['Main'],game.Players.LocalPlayer.Data.DevilFruit.Value) then
								Fruit_Eat = true
							end
						end
					end
					wait(150)
				else
					wait(2)
				end			    
			end)
		end
	end)
	-- Run
	spawn(function()
		while wait(.1) do
			pcall(function()
				if Three_World and Auto_Farm_Shark_Anchor then
					local Shark_Tooth_I = CheckItem_X('Shark Tooth')
					local Fool_Gold_I = CheckItem_X("Fool's Gold")
					local Mutant_Tooth_I = CheckItem_X('Mutant Tooth')
					local Terror_Eye_I = CheckItem_X('Terror Eyes')
					local Electric_Wings_I = CheckItem_X('Electric Wing')
					if not Shark_Tooth_Necklace_H then
						if Mutant_Tooth_I >= 1 and Shark_Tooth_I >= 5 then
							local args = {
								[1] = "CraftItem",
								[2] = "PossibleHardcode",
								[3] = "SharkAnchor"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							
							local args = {
								[1] = "CraftItem",
								[2] = "Check",
								[3] = "ToothNecklace"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							
							local args = {
								[1] = "CraftItem",
								[2] = "Craft",
								[3] = "ToothNecklace"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(1)
						end
						if GetItem('Shark Tooth Necklace') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
							Shark_Tooth_Necklace_H = true
							wait(1)
						end
					end
					if not Terror_Jaw_H then
						if Shark_Tooth_I >= 5 and Fool_Gold_I >= 10 and Mutant_Tooth_I >= 2 and Terror_Eye_I >= 1 then
							local args = {
								[1] = "CraftItem",
								[2] = "PossibleHardcode",
								[3] = "SharkAnchor"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							
							local args = {
								[1] = "CraftItem",
								[2] = "Check",
								[3] = "TerrorJaw"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							
							local args = {
								[1] = "CraftItem",
								[2] = "Craft",
								[3] = "TerrorJaw"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(1)
						end
						if GetItem('Terror Jaw') then
							Terror_Jaw_H = true
							wait(1)
						end
					end
					if CheckItem_X('Monster Magnet') >= 1 then
						Monster_Magnet_H = true
						wait(1)
					elseif CheckItem_X('Monster Magnet') == 0 then
						Monster_Magnet_H = false
						Auto_Farm_Monster_Magnet = true
						if Terror_Eye_I >= 2 and Electric_Wings_I >= 8 and Fool_Gold_I >= 20 and Shark_Tooth_I >= 10 then 
							local args = {
								[1] = "CraftItem",
								[2] = "Check",
								[3] = "SharkAnchor"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							local args = {
								[1] = "CraftItem",
								[2] = "Craft",
								[3] = "SharkAnchor"
							}
							
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(1)
							if CheckItem_X('Monster Magnet') >= 1 then
								Monster_Magnet_H = true
								wait(1)
							end
						end
					end
					if not Shark_Tooth_Necklace_H then
						if GetItem('Shark Tooth Necklace') or game.Players.LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
							Shark_Tooth_Necklace_H = true
							wait(1)
						end
					end
					wait(10)
					if GetItem('Shark Anchor') then
						Auto_Farm_Shark_Anchor = false
						Shark_Anchor_H = true
						List.Quest = false
					end
				else
					wait(2)
				end
			end)
		end
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if Auto_Farm_Kaitun then
					if List.Raid then
						Set_Status_X(' Status : Farm Raid')
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == false then
							if game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
								if New_World then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector, 1)
									local pt = 0
									repeat 
										pt = pt+1
										wait(1)
									until pt >= 20 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true
								elseif Three_World then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,150,0)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector, 1)
									local pt = 0
									repeat 
										pt = pt+1
										wait(1)
									until pt >= 20 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true
								end
							else
								List.Raid = false
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
							Check_Raid = false
							if Select_Map == "Magma" then
								for i,v in pairs(game.Workspace:GetDescendants()) do
									if v.Name == "Lava" then
										v:Destroy()
									end
								end
							end
							repeat wait(.1)
								if GetRaid('Island 5',2500) ~= nil then
									TPX(GetRaid('Island 5',2500).CFrame*CFrame.new(0,15,0))
								elseif GetRaid('Island 4',2500) ~= nil then
									if Select_Map == "Magma" then
										TPX(GetRaid('Island 4',2500).CFrame*CFrame.new(0,120,0))
									else
										TPX(GetRaid('Island 4',2500).CFrame*CFrame.new(0,15,0))
									end
								elseif GetRaid('Island 3',2500) ~= nil then
									TPX(GetRaid('Island 3',2500).CFrame*CFrame.new(0,15,0))
								elseif GetRaid('Island 2',2500) ~= nil then
									TPX(GetRaid('Island 2',2500).CFrame*CFrame.new(0,15,0))
								elseif GetRaid('Island 1',2500) ~= nil then
									TPX(GetRaid('Island 1',2500).CFrame*CFrame.new(0,15,0))
								end
							until game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
							wait(5)
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= '' then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							end
							if not Raid_Dough_Down then
								Buy_Chip()
							end
							Raid_Dough_Down = false
							wait(1)
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities") ~= '' then
								if game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dough-Dough' then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
										Name_Awaken = "Z, X, C, TAP, V, F"
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['TAP']['Awakened'] == true then
										Name_Awaken = "Z, X, C, TAP, F"
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
										Name_Awaken = "Z, X, C, F"
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
										Name_Awaken = "Z, X, F"
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F']['Awakened'] == true then
										Name_Awaken = "Z, F"
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
										Name_Awaken = "Z"
									else
										Name_Awaken = ''
									end
									Awaken_S:Set(' Awaken : '..Name_Awaken)
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
											Name_Awaken = "Z, X, C, V, F"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
											Name_Awaken = "Z, X, C, F"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
											Name_Awaken = "Z, X, F"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F'] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['F']['Awakened'] == true then
											Name_Awaken = "Z, F"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
											Name_Awaken = "Z"
										else
											Name_Awaken = ''
										end
										Awaken_S:Set(' Awaken : '..Name_Awaken)
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['V']['Awakened'] == true then
											Name_Awaken = "Z, X, C, V"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['C']['Awakened'] == true then
											Name_Awaken = "Z, X, C"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['X']['Awakened'] == true then
											Name_Awaken = "Z, X"
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getAwakenedAbilities")['Z']['Awakened'] == true then
											Name_Awaken = "Z"
										else
											Name_Awaken = ''
										end
										Awaken_S:Set(' Awaken : '..Name_Awaken)
									end
								end
							end
						end
					elseif List.Quest and Quest_Istand == 'Admin' then
						if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') or game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
							if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == 'rip_indra True Form' and v.Humanoid.Health > 0 then
										repeat wait(.1)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
											TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,-30,0))
											EquipWeapon(Weapon)
										until not v.Parent or v.Humanoid.Health <= 0
										List.Quest = false 
										Quest_Istand = nil
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
								TPX(game.ReplicatedStorage:FindFirstChild('rip_indra True Form').HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
							Oyster_H = false
							Hot_pink_H = false
							Really_red_H = false
							for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' and tostring(v.Part.BrickColor) == 'Lime green' then
									Oyster_H = true
								end
							end
							for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' and tostring(v.Part.BrickColor) == 'Lime green' then
									Hot_pink_H = true
								end
							end
							for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' and tostring(v.Part.BrickColor) == 'Lime green' then
									Really_red_H = true
								end
							end
							if Oyster_H and Hot_pink_H and Really_red_H then
								repeat wait(.1)
									EquipWeapon("God's Chalice")
									TP(CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, 0.952628076, 0.000226983335, 0.999996245, 0.00273981248, -0.952631414, 0.00104948215, -0.304125458))
								until (Vector3.new(-5561.06738, 314.375793, -2663.88892)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
								wait(1)
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
									repeat wait(.1)
										EquipWeapon("God's Chalice")
										TP(CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, 0.952628076, 0.000226983335, 0.999996245, 0.00273981248, -0.952631414, 0.00104948215, -0.304125458))
									until (Vector3.new(-5561.06738, 314.375793, -2663.88892)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
									if Snow_White and not Oyster_H then
										for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' then
												if tostring(v.Part.BrickColor) ~= 'Lime green' then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
													wait(1)
													repeat wait()
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
														TP(v.Part.CFrame)
													until  tostring(v.Part.BrickColor) == 'Lime green'
													Oyster_H = true
												end
											end
										end
									end 
									if Pure_Red_H and not Really_red_H then
										for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' then
												if tostring(v.Part.BrickColor) ~= 'Lime green' then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
													wait(1)
													repeat wait()
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
														TP(v.Part.CFrame)
													until  tostring(v.Part.BrickColor) == 'Lime green'
													Really_red_H = true
												end
											end
										end
									end 
									if Winter_Sky and not Hot_pink_H then
										for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
											if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' then
												if tostring(v.Part.BrickColor) ~= 'Lime green' then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
													wait(1)
													repeat wait()
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
														TP(v.Part.CFrame)
													until  tostring(v.Part.BrickColor) == 'Lime green'
													Hot_pink_H = true
												end
											end
										end
									end
									EquipWeapon("God's Chalice")
                                    TP(CFrame.new(-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, 0.952628076, 0.000226983335, 0.999996245, 0.00273981248, -0.952631414, 0.00104948215, -0.304125458))
                                    if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
                                        TimeLoaderx = tick()
                                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I have God Chalice. I Can't Spawn Boss Admin","All")
                                    end
								end
							end
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
							wait(3)
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and not game.Workspace.Enemies:FindFirstChild('rip_indra True Form') and not game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
								game.StarterGui:SetCore("SendNotification", {
									Title = "Check Boss Spawn", 
									Text = '99/10',
									Icon = "rbxassetid://17002601075",
									Duration = 15
								})
								List.Quest = false 
								Quest_Istand = nil
							end
						end
					elseif List.Pull_Lerver then
						if not ExSeb then
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 1 then
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Check"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Begin"
                                }
                                
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 2 then
                                local args = {
                                    [1] = "RaceV4Progress",
                                    [2] = "Check"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                repeat wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2959.87231, 2282.42139, -7216.23193)
                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Teleport"
                                    }
                                    
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(28286.35546875, 14896.5078125, 102.62469482421875)).Magnitude <= 15
                            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 3 then
                                ExSeb = true
                                if not ujihfdg then
                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Check"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    wait(1)

                                    local args = {
                                        [1] = "RaceV4Progress",
                                        [2] = "Continue"
                                    }
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    ujihfdg = true
                                end
                            elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress","Check") == 4 then
                                ExSeb = true
                            end
                        else
                            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                Status_T:Set('Status: Go to Mystic Island')
                                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    wait(0.5)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
                                    wait(1)
                                else
                                    local pointer = game:GetService("Workspace").Map:FindFirstChild("MysticIsland").WorldPivot*CFrame.new(0,500,0)
                                    if (pointer.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 25 then
                                        if not Pull_Lever_H then
                                            wait(1)
                                            local result = {}
                                            local x = tostring(game:GetService("Lighting").TimeOfDay)
                                            local regex = ("([^%s]+)"):format(":")
                                            for each in x:gmatch(regex) do
                                                table.insert(result, each)
                                            end
                                            local load_tag = false
                                            if tonumber(result[1]) >= 18 and tonumber(result[1]) < 20 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(256.224945, 10.0014305, 7402.05225, -0.86680156, -0.285385847, -0.408913255, 0, 0.820035219, -0.57231313, 0.498653352, -0.496081918, -0.710807681)
												wait(.3)
												workspace.CurrentCamera.CFrame = CFrame.new(256.224945, 10.0014305, 7402.05225, -0.86680156, -0.285385847, -0.408913255, 0, 0.820035219, -0.57231313, 0.498653352, -0.496081918, -0.710807681)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 20 and tonumber(result[1]) < 23 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(276.224945, 10.0014305, 7402.05225, -0.86680156, -0.285385847, -0.408913255, 0, 0.820035219, -0.57231313, 0.498653352, -0.496081918, -0.710807681)
                                                wait(.3)
												workspace.CurrentCamera.CFrame = CFrame.new(276.224945, 10.0014305, 7402.05225, -0.86680156, -0.285385847, -0.408913255, 0, 0.820035219, -0.57231313, 0.498653352, -0.496081918, -0.710807681)
												load_tag = true
                                            elseif tonumber(result[1]) >= 23 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(280.220398, 10.0163631, 7398.78711, -0.99949348, 0.0149384635, 0.028100336, 9.31322464e-10, 0.882983506, -0.469404191, -0.0318243057, -0.469166428, -0.882536292)
												wait(.3)
												workspace.CurrentCamera.CFrame = CFrame.new(280.220398, 10.0163631, 7398.78711, -0.99949348, 0.0149384635, 0.028100336, 9.31322464e-10, 0.882983506, -0.469404191, -0.0318243057, -0.469166428, -0.882536292)
                                                load_tag = true
                                            elseif tonumber(result[1]) >= 0 and tonumber(result[1]) < 2 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(187.110519, 311.094543, 7251.67285, -0.983385324, 0.120902099, 0.135410622, -7.4505806e-09, 0.745938301, -0.666015029, -0.181530595, -0.654949427, -0.733544707)
                                                wait(.3)
												workspace.CurrentCamera.CFrame = CFrame.new(187.110519, 311.094543, 7251.67285, -0.983385324, 0.120902099, 0.135410622, -7.4505806e-09, 0.745938301, -0.666015029, -0.181530595, -0.654949427, -0.733544707)
												load_tag = true
                                            elseif tonumber(result[1]) >= 2 and tonumber(result[1]) <= 5 then
                                                game.Lighting.Sky.MoonAngularSize = 60
                                                workspace.CurrentCamera.CFrame = CFrame.new(17.9850445, 541.176575, 6902.08154, -0.866957009, 0.111039586, 0.485855788, 0, 0.974864244, -0.222799659, -0.498383105, -0.193157732, -0.845165253)
												wait(.3)
												workspace.CurrentCamera.CFrame = CFrame.new(17.9850445, 541.176575, 6902.08154, -0.866957009, 0.111039586, 0.485855788, 0, 0.974864244, -0.222799659, -0.498383105, -0.193157732, -0.845165253)
                                                load_tag = true
											else
												List.Pull_Lerver = false
                                            end
                                            if load_tag then
                                                wait(1)
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
                                                wait(1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
                                                wait(17)
                                                for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                                                    if v.ClassName == 'MeshPart' and v.Name == 'Part' and v.Transparency == 0 then
                                                        repeat wait(.2)
                                                            TP(v.CFrame)
                                                            wait(0.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                                            wait(0.5)
                                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                                        until v.Transparency == 1
                                                        wait(0.5)
                                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") == true then
                                                            Pull_Lever_H = true
                                                            Race_V4_S_Q:Set(' ✅ : Quest Pull Lever')
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        TP(pointer)
                                    end
                                end
                            elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                                List.Pull_Lerver = false
                            end
                        end
					elseif Auto_Farm_Shark_Anchor and List.Quest and SelectBoss ~= 'rip_indra True Form' or Monster_Magnet_H and Auto_Farm_Shark_Anchor and List.Quest then
						Set_Status_X(' Status : Farm Shark Anchor')
						if not kmldgf and Shark_Tooth_Necklace_H and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild('Shark Tooth Necklace') then
							local args = {
								[1] = "LoadItem",
								[2] = "Shark Tooth Necklace"
							}
		
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							kmldgf = true
						end
						local Farming_Tril = false
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == 'Terrorshark' or v.Name == 'Piranha' or v.Name == 'Shark' then
								if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
									Set_Status_X(' Status : Farm '. .. tostring(v.Name))
									game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
									wait(0.5)
									game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
									wait(0.5)
									game.Players.LocalPlayer.Character.Humanoid.Sit = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
									Farming_Tril = true
									Attack = true
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									postis = 30
									postx = 20
									if v.Name == 'Terrorshark' then
										postis = 30
										postx = 50
									end
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
											Weapon = v.Name
										end
									end
									if v.Name == 'Terrorshark' then
										spawn(function()
											local time_hos = 0
											repeat wait(1)
												time_hos = time_hos+1
												if Evo_Race_V3_H and time_hos >= 4 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
													wait(0.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
												end
												if time_hos >= 4 then
													time_hos = 0
												end
											until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
										end)
									end
									repeat wait()
										EquipWeapon(Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,postx,30))
									until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
									Attack = false
								end
							end
						end
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == 'Terrorshark' then
								if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 700 then
									Set_Status_X(' Status : Farm '. .. tostring(v.Name))
									game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
									wait(0.5)
									game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
									wait(0.5)
									game.Players.LocalPlayer.Character.Humanoid.Sit = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
									Farming_Tril = true
									Attack = true
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
									postis = 30
									postx = 20
									if v.Name == 'Terrorshark' then
										postis = 30
										postx = 50
									end
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA('Tool') and tostring(v.ToolTip) == 'Melee' then
											Weapon = v.Name
										end
									end
									if v.Name == 'Terrorshark' then
										spawn(function()
											local time_hos = 0
											repeat wait(1)
												time_hos = time_hos+1
												if Evo_Race_V3_H and time_hos >= 4 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "T", false, game)
													wait(0.5)
													game:service('VirtualInputManager'):SendKeyEvent(false, "T", false, game)
												end
												if time_hos >= 4 then
													time_hos = 0
												end
											until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
										end)
									end
									repeat wait()
										EquipWeapon(Weapon)
										TP(v.HumanoidRootPart.CFrame*CFrame.new(0,postx,30))
									until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Shark_Anchor
									Attack = false
								end
							end
						end
						if CheckItem_X("Fool's Gold") <= 19 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == 'FishBoat' and not Monster_Magnet_H then
									if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
										Stop_Boat()
										Set_Status_X(' Status : Farm '. .. tostring(v.Name))
										game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
										game.Players.LocalPlayer.Character.Humanoid.Sit = false
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
										Weapon = 'Sharkman Karate'
										Weapon2 = 'Sharkman Karate'
										if game.Players.LocalPlayer.Data.Stats['Demon Fruit'].Level.Value >= 2000 then
											Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
										elseif game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value >= 2000 then
											for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
													Weapon2 = vx.Name
												end
											end	
											for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
													Weapon2 = vx.Name
												end
											end	
										elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value >= 2000 then
											for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
													Weapon2 = vx.Name
												end
											end	
											for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
													Weapon2 = vx.Name
												end
											end	
										end
										Aimbot_On = true
										PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
										Weapon_Att = Weapon
										repeat wait(.1)
											if v.Health.Value > 0 then 
												TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
											end
											if GetSkill_C(Weapon_Att,'Z') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'X') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'C') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'V') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											end
											if Weapon_Att == Weapon then
												Weapon_Att = Weapon2
												EquipWeapon(Weapon2)
											elseif Weapon_Att == Weapon2 then
												Weapon_Att = Weapon
												EquipWeapon(Weapon)
											end
										until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
										if Tween == nil then
										else
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
										end
										Aimbot_On = false
										
									elseif (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 800 then
										Stop_Boat()
										if Tween == nil then
										else
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
										end
									end
								end
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == 'FishBoat' and not Monster_Magnet_H or v.Name == 'PirateGrandBrigade' and not Monster_Magnet_H or v.Name == 'PirateBrigade' and not Monster_Magnet_H then
									if v:FindFirstChild('Health') and v.Health.Value > 0 and (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 800 then
										Stop_Boat()
										Set_Status_X(' Status : Farm '. .. tostring(v.Name))
										game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
										game.Players.LocalPlayer.Character.Humanoid.Sit = false
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
										Weapon = 'Sharkman Karate'
										Weapon2 = 'Sharkman Karate'
										if game.Players.LocalPlayer.Data.Stats['Demon Fruit'].Level.Value >= 2000 then
											Weapon2 = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
										elseif game.Players.LocalPlayer.Data.Stats['Sword'].Level.Value >= 2000 then
											for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
													Weapon2 = vx.Name
												end
											end	
											for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Sword' then
													Weapon2 = vx.Name
												end
											end	
										elseif game.Players.LocalPlayer.Data.Stats['Gun'].Level.Value >= 2000 then
											for ix,vx in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
													Weapon2 = vx.Name
												end
											end	
											for ix,vx in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if vx:IsA('Tool') and tostring(vx.ToolTip) == 'Gun' then
													Weapon2 = vx.Name
												end
											end	
										end
										Aimbot_On = true
										PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
										Weapon_Att = Weapon
										repeat wait(.1)
											if v.Health.Value > 0 then 
												TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
											end
											if GetSkill_C(Weapon_Att,'Z') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'X') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'C') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											elseif GetSkill_C(Weapon_Att,'V') and v.Health.Value > 0 then
												PositionSkillMasteryDevilFruit = v.VehicleSeat.Position
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												wait(.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												wait()
												if v.Health.Value > 0 then 
													TP(v.VehicleSeat.CFrame*CFrame.new(0,10,0))
												end
											end
											if Weapon_Att == Weapon then
												Weapon_Att = Weapon2
												EquipWeapon(Weapon2)
											elseif Weapon_Att == Weapon2 then
												Weapon_Att = Weapon
												EquipWeapon(Weapon)
											end
										until not v.Parent or tonumber(v.Health.Value) <= 0 or not Auto_Farm_Shark_Anchor
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,50,0)
										if Tween == nil then
										else
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
										end
										Aimbot_On = false
									elseif (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 800 then
										Stop_Boat()
										if Tween == nil then
										else
											TP(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
										end
									end
								end
							end
						end
						if not Farming_Tril then
							local Check_Boat_H = false 
							for i,v in pairs(game.Workspace.Boats:GetChildren()) do
								if Check_Boat_H == false and v.Name == 'PirateBrigade' and v:FindFirstChild('Owner') and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
									Check_Boat_H = true
									if position_boat == nil then
										position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
									end
									--Status_Win:Set('Status: Go to monster .. ')
									if (v.VehicleSeat.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 18000 then
										TPBoat(position_boat,v.VehicleSeat,280)
										TP(position_boat)
										game.Players.LocalPlayer.Character.Humanoid.Sit = false
									else
										if (v.VehicleSeat.Position-position_boat.Position).Magnitude <= 50 then
											Stop_Boat()
											if Monster_Magnet_H then
												if (position_boat.Position-Vector3.new(-40887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
													position_boat = CFrame.new(-45887.2265625, 40.741893768310547, -658.2794799804688)
												elseif (position_boat.Position-Vector3.new(-45887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
													position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
												else
													position_boat = CFrame.new(-40887.2265625, 40.741893768310547, -658.2794799804688)
												end
											else
												if (position_boat.Position-Vector3.new(-37887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
													position_boat = CFrame.new(-50887.2265625, 40.741893768310547, -658.2794799804688)
												elseif (position_boat.Position-Vector3.new(-50887.2265625, 40.741893768310547, -658.2794799804688)).Magnitude <= 100 then
													position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
												else
													position_boat = CFrame.new(-37887.2265625, 40.741893768310547, -658.2794799804688)
												end
											end
											wait(0.5)
										elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
											if (v.VehicleSeat.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 13 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
												wait(0.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
												wait(0.5)
											else
												TPBoat(position_boat,v.VehicleSeat,230)
											end
										else
											Stop_Boat()
											TP(v.VehicleSeat.CFrame,150) 
										end
									end
								end
							end
							if not Check_Boat_H then
								if not Farming_Tril then
									if not Check_Boat_H then
										--Status_Win:Set('Status: Get boat .. ')
										if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude <= 10 then
											wait(1)
											local args = {
												[1] = "BuyBoat",
												[2] = 'PirateBrigade'
											}
											
											game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
										elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-998.3510131835938, 4.5834879875183105, -14038.31640625)).Magnitude > 10 then
											TPX(CFrame.new(-998.3510131835938, 4.5834879875183105, -14038.31640625))
										end
									end
								end
							end
						end
					elseif List.Fruit and _G.Main['Bring Fruit'] and not Koko_Quest and Quest_Istand ~= 'God Dough Awaken' and not Not_Farm_Boss and not game:GetService("Workspace").Map:FindFirstChild('HellDimension') and not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
						Set_Status_X(' Status : Bring Fruit')
						iojdijfgo = false
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') and not List.Raid then
								repeat wait(.1)
									if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2550 then
										TPX(v.Handle.CFrame*CFrame.new(0,0,80))
									elseif (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
										TPZ(v.Handle.CFrame)
									end
								until (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
								wait(3)
								for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
										result = {} 
										local regex = ("([^%s]+)"):format(" ")
										for each in v2.Name:gmatch(regex) do
											table.insert(result, each)
										end
										local x = result[1].."-"..result[1]
										if v2.Name == 'Bird: Phoenix Fruit' then
											x = 'Bird-Bird: Phoenix' 
										end
										if v2.Name == "Bird: Falcon Fruit" then
											x = "Bird-Bird: Falcon"
										end
										local time_check = 0
										repeat wait(.1)
											EquipWeapon(v2.Name)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
											wait(.5)
											time_check = time_check+1
										until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
										if time_check >= 3 then
											if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
												if New_World or Three_World then
													if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
														List.Raid = true
														Buy_Chip()
													else
														v2:Destroy()
													end
												elseif Old_World then
													v2:Destroy()
													wait(0.5)
												end
											end
										end
									end
								end
								for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
									if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
										result = {} 
										local regex = ("([^%s]+)"):format(" ")
										for each in v2.Name:gmatch(regex) do
											table.insert(result, each)
										end
										local x = result[1].."-"..result[1]
										if v2.Name == 'Bird: Phoenix Fruit' then
											x = 'Bird-Bird: Phoenix' 
										end
										if v2.Name == "Bird: Falcon Fruit" then
											x = "Bird-Bird: Falcon"
										end
										local time_check = 0
										repeat wait(.1)
											EquipWeapon(v2.Name)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
											wait(1)
											time_check = time_check+1
										until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
										if time_check >= 3 then
											if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
												if New_World or Three_World then
													if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
														List.Raid = true
														Buy_Chip()
													else
														v2:Destroy()
													end
												elseif Old_World then
													v2:Destroy()
													wait(0.5)
												end
											end
										end
									end
								end
								v:Destroy()
							end
						end
						List.Fruit = false
						for i,v in pairs(game.Workspace:GetChildren()) do
							if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
								List.Fruit = true
							end
						end
						-- Eat Fruit
						if game.Players.LocalPlayer.Data.Level.Value >= 1100 and game.Players.LocalPlayer.Data.DevilFruit.Value == '' then
							Eat_Fruit = nil
							Fruit_Check = nil
							local fruitx = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
							for i,v in next,fruitx do
								Check_Fruit(v.Name)
							end
							if Fruit_Check ~= nil then
								result = {}
								local regex = ("([^%s]+)"):format("-")
								local xp = Fruit_Check
								for each in xp:gmatch(regex) do
									table.insert(result, each)
								end
								Eat_Fruit = result[2] .. " Fruit"
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",Fruit_Check)
								if Eat_Fruit ~= nil then
									wait(.5)
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
										repeat wait()
											EquipWeapon(Eat_Fruit)
										until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
										if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
											game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
											wait(3)
											Eat_Fruitx = true
										end
									end
								end
							end
						end
						-- Don Swan
						if game.Players.LocalPlayer.Data.Level.Value >= 1100 and not Don_Swan_H and New_World then -- Set Value
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
								Don_Swan_H = true
							else
								local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
								for i,v in pairs(fruit)do
									if v['Price'] >= 1000000 then
										Quest = 'Don Swan'
										List.Quest = true
									end
								end
							end
						end
					elseif List.Boss and _G.Main['Kill Boss'] and not Koko_Quest and CDK_Q_S_C ~= 8 and Quest_Istand ~= 'God Dough Awaken' and CDK_Q_S_C ~= 9 and CDK_Q_S_C ~= 10 and not Not_Farm_Boss then
						if Select_List_Boss ~= nil then
							Set_Status_X(' Status : Farm Boss '..Select_List_Boss)
						end
						if Select_List_Boss == "rip_indra True Form" and not Unlock_Tushita_Quest and game.Players.LocalPlayer.Data.Level.Value >= 2000 then
							local Q_Tushita = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress")
							if Q_Tushita['OpenedDoor'] == false then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
									EquipWeapon("Holy Torch")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
										EquipWeapon("Holy Torch")
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
										spawn(function()
											repeat wait()
												game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
												wait(0.3)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
											until game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") or not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form")
										end)
										repeat wait()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5148.7265625, 141.91177368164062, 910.8010864257812)
										until game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") or not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form")
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
											EquipWeapon("Holy Torch")
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",1)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",2)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",3)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",4)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress","Torch",5)
										end
									elseif not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
										bit = false
										List.Boss = false
										Select_List_Boss = nil
									end
								elseif not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") and not game.Workspace.Enemies:FindFirstChild("rip_indra True Form") then
									bit = false
									List.Boss = false
									Select_List_Boss = nil
								end
							elseif Q_Tushita['OpenedDoor'] == true then
								Unlock_Tushita_Quest = true
							end
						elseif game.Workspace.Enemies:FindFirstChild(Select_List_Boss) or game.ReplicatedStorage:FindFirstChild(Select_List_Boss) then
							if Start_Quest_RGB then
								Set_Status_X(' Status : RGB Quest')
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
							else
								CFrameQBoss_X = nil
								CheckQuestBoss()
								if CFrameQBoss_X ~= nil and not bit then
									Set_Status_X(' Status : Get Quest Boss')
									repeat wait(.1)
										TPX(CFrameQBoss_X)
										if (CFrameQBoss_X.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss_X, QuestLvBoss_X)
											bit = true
										end
									until game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and bit
									Set_Status_X(' Status : Farm Boss')
								end
							end
							if game.Workspace.Enemies:FindFirstChild(Select_List_Boss) then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == Select_List_Boss and v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 then
										if Select_List_Boss == "Deandre" or Select_List_Boss == "Urban" or Select_List_Boss == "Diablo" then
											if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
										end
										Start_Kill_Boss = true
										repeat wait()
											TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											EquipWeapon(Weapon)
										until not v.Parent or v.Humanoid.Health <= 0
										Start_Kill_Boss = false
									end
								end
								Set_Status_X(' Status : Check Quest')
                                if Three_World then
									if getgenv().Faster['CDK Super Fast'] and not Unlock_Tushita_Quest then
										for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'Admin'
											end
										end
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'Admin'
											end
										end
									elseif _G.Fruit_Main['Quest Dough Awaken'] == true and not Quest_Dough_Awaken then
										for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'God Dough Awaken'
											end
										end
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'God Dough Awaken'
											end
										end
									elseif getgenv().Faster['CDK Super Fast'] and not Valkyrie_Helmet_H then
										for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'Admin'
											end
										end
										for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
											if v.Name == "God's Chalice" then
												List.Quest = true
												Quest_Istand = 'Admin'
											end
										end
									end
									if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 and not Yama_H then
										Quest = 'Yama'
										List.Quest = true
									end
									Elite_Hunter_S:Set(' Elite Hunter : '. .. tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress")))
								end
								if New_World then
									if Select_List_Boss == "Awakened Ice Admiral" then
										if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
											if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
												repeat wait(.1)
													EquipWeapon("Library Key")
													TP(CFrame.new(6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, 0.508615494, -5.8594928e-08, -0.860993743))
												until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(6377.12549, 296.634735, -6843.76025)).Magnitude <= 1 or not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole')
												wait(1)
												if not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
													Death_Step_S_Q:Set(' ✅ : Quest Death Step')
												end
											end
										end
										if not Rengoku_H then
											if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
												repeat wait(.3)
													EquipWeapon("Hidden Key")
													TP(CFrame.new(6572.29248, 295.712677, -6966.09961, 0.803500533, -3.27515153e-08, 0.595304072, 3.97485422e-08, 1, 1.36659384e-09, -0.595304072, 2.25644108e-08, 0.803500533))
												until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(6572.29248, 295.712677, -6966.09961)).Magnitude <= 1
												wait(1)
											end
										end
									elseif Select_List_Boss == "Don Swan" then
										Kill_Don = true
									elseif Select_List_Boss == 'Core' then
										wait(1)
										Random_Fruit = true
									elseif Select_List_Boss == "Tide Keeper" then
										if game.Players.LocalPlayer.Backpack:FindFirstChild('Water Key') or game.Players.LocalPlayer.Character:FindFirstChild('Water Key') then
											if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)),"keys") then
												EquipWeapon("Water Key")
												wait(1)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
												Sharkman_Karate_S_Q:Set(' ✅ : Quest Sharkman Karate')
												Sharkman_Karate_Q_C = true
											end
										end
									end
								end
								Set_Status_X(' Status : Load Sword')
								GetLoadSword()
							elseif game.ReplicatedStorage:FindFirstChild(Select_List_Boss) then
								Start_Kill_Boss = true
								TPX(game.ReplicatedStorage:FindFirstChild(Select_List_Boss).HumanoidRootPart.CFrame*CFrame.new(0,15,0))
							end
						elseif not game.Workspace.Enemies:FindFirstChild(Select_List_Boss) and not game.ReplicatedStorage:FindFirstChild(Select_List_Boss) then
							bit = false
							List.Boss = false
							Select_List_Boss = nil
						end
                    
					elseif List.Quest and Quest_Istand == 'God Dough Awaken' then
						Set_Status_X(' Status : Quest Dough Awaken')
						if game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
							Dough_Awaken_C_S:Set(' Dough Awaken : 4/4')
							EquipWeapon('Red Key')
							TP(CFrame.new(-2681.51099, 64.3663483, -12852.7773))
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist","Check") == true then
								Quest_Istand = nil
								List.Quest = false
								Dough_Awaken_C_S:Set(' Dough Awaken : ✅')
								Quest_Dough_Awaken = true
							end
						elseif game.Workspace.Enemies:FindFirstChild('Dough King') or game.ReplicatedStorage:FindFirstChild('Dough King') then
							Dough_Awaken_C_S:Set(' Dough Awaken : 3/4') 
							if game.Workspace.Enemies:FindFirstChild('Dough King') then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == 'Dough King' and v.Humanoid.Health > 0 then
										repeat wait(.1)
											TP(v.HumanoidRootPart.CFrame*CFrame.new(0,-30,0))
											EquipWeapon(Weapon)
										until not v.Parent or v.Humanoid.Health <= 0
										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
											if v.Type == 'Material' then
												if v.Name == 'Mirror Fractal' then
													Mirror_Fractal_H = true
													Mirror_Fractal_S:Set(' ✅ : Mirror Fractal')
												end
											end
										end
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild('Dough King') then
								TP(game.ReplicatedStorage:FindFirstChild('Dough King').HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							end
						elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
							Dough_Awaken_C_S:Set(' Dough Awaken : 2/4')
							Stop_Fast_Attack = false
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude >= 1800 then
								repeat wait()
									TP(CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375))
								until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude <= 3
							elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude < 1800 then
								Monster = nil
								for i=1500,0,-300 do
									GetMonster(i)
								end
								if Monster ~= nil and Monster.Humanoid.Health > 0 then
									PosMon_X = Monster.HumanoidRootPart.CFrame
									StatrMagnet = true
									repeat wait()
										TP(Monster.HumanoidRootPart.CFrame*CFrame.new(0,-17,0))
										EquipWeapon(Weapon)
									until not Monster.Parent or Monster.Humanoid.Health <= 0
									StatrMagnet = false
									local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
									if Lp == 'nil' or Lp == nil then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
										Cake_Prince_S:Set(' Cake Prince : Boss Spawn')
									else
										Cake_Prince_S:Set(' Cake Prince : '..Lp)
									end
								elseif Monster == nil then
									for i=1500,0,-300 do
										GetMonster(i)
									end
									if Monster == nil then
										TP(CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375))
									end
								end
							end
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
								Dough_Awaken_C_S:Set(' Dough Awaken : 1/4')
								if CheckItem('Conjured Cocoa') >= 10 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
								elseif CheckItem('Conjured Cocoa') < 10 then
									Stop_Fast_Attack = false
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude >= 1800 then
										repeat wait()
											TP(CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(658.2230224609375, 24.7342586517334, -12541.9912109375)).Magnitude < 1800 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TP(Monster.HumanoidRootPart.CFrame*CFrame.new(0,-17,0))
												EquipWeapon(Weapon)
											until not Monster.Parent or Monster.Humanoid.Health <= 0
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TP(CFrame.new(658.2230224609375, 24.7342586517334, -12541.9912109375))
											end
										end
									end
								end	
							elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
								Quest_Istand = nil
							end
						end
					elseif List.Quest and Quest ~= nil then
						Set_Status_X(' Status : Quest '..Quest)
						if Quest == 'Saber' then
							local Q_Saber = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress")
							if Q_Saber["UsedTorch"] == false then
								for i,v in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
									if v.Name == "Plate1" then
										v.Button.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									end
									if v.Name == "Plate2" then
										v.Button.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									end
									if v.Name == "Plate3" then
										v.Button.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									end
									if v.Name == "Plate4" then
										v.Button.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									end
									if v.Name == "Plate5" then
										v.Button.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
									end
								end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetTorch")
								EquipWeapon("Torch")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","DestroyTorch")
							elseif Q_Saber["UsedCup"] == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
								EquipWeapon("Cup")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
							elseif Q_Saber["KilledMob"] == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								if game.Workspace.Enemies:FindFirstChild("Mob Leader") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Mob Leader" then
											repeat wait()
												EquipWeapon(Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
											until not v.Parent or v.Humanoid.Health <= 0
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
										end
									end
								else
									TP(CFrame.new(-2848.59399, 7.4272871, 5342.44043))
								end
							elseif Q_Saber["UsedRelic"] == false then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								EquipWeapon("Relic")
								TPX(CFrame.new(-1406.60925, 29.8520069, 4.5805192, 0.882920146, 3.62382622e-08, 0.469523162, -3.61928865e-09, 1, -7.03750587e-08, -0.469523162, 6.04362143e-08, 0.882920146))
							elseif Q_Saber["KilledShanks"] == false then
								Saber_Q_C = true
								List.Quest = false
							elseif Q_Saber["KilledShanks"] == true then
								Saber_Q_C = true
								List.Quest = false
							end
						elseif Quest == 'Evo Race V1' then
							Not_Farm_Boss = true
							if Start_Quest_Evo_V1 then 
                                if not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 3') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 3') then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-Vector3.new(976.467651, 111.174057, 1229.1084)).Magnitude <= 800 then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                                Attack = true
                                                repeat wait(.1)
                                                    EquipWeapon(Weapon)
                                                    TP(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
                                                until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 3') or game.Players.LocalPlayer.Character:FindFirstChild('Flower 3')
                                                Attack = false
                                            end
                                        end
                                    else
                                        TP(CFrame.new(976.467651, 111.174057, 1229.1084))
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 2') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 2') then
                                    if game:GetService("Workspace"):FindFirstChild('Flower2') then
                                        TP(game:GetService("Workspace").Flower2.CFrame)
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").Flower2.Position).Magnitude <= 5 then
                                            game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                            game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                        end
                                    end
                                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild('Flower 1') and not game.Players.LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    TP(game:GetService("Workspace").Flower1.CFrame)
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").Flower1.Position).Magnitude <= 5 and game:GetService("Workspace").Flower1.Transparency == 0 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
                                            wait(0.5)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
                                    end
                                    wait(1)
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                                    wait(1)
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3") == -2 then
                                        Evo_Race_V1_H = true
                                        if Evo_Race_V3_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
                                        elseif Evo_Race_V2_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
                                        elseif Evo_Race_V1_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
                                        end
										List.Quest = false
										if _G.Quest['Evo Race V2'] and not Evo_Race_V2_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World then
											if Don_Swan_H and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == nil then
												Quest = 'Evo Race V2'
												List.Quest = true
											end
										end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                                    Start_Quest_Evo_V1 = true
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
						elseif Quest == 'Evo Race V2' then
							Not_Farm_Boss = true
							if not game.Workspace.Enemies:FindFirstChild("Don Swan") then
								TPX(CFrame.new(2288.802, 15.1870775, 863.034607))
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Don Swan" and v.Humanoid.Health > 0 then
									repeat wait()
										TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										EquipWeapon(Weapon)
									until not v.Parent or v.Humanoid.Health <= 0 or not Auto_Farm_Kaitun
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") ~= nil then
										Evo_Race_V2_H = true
										if Evo_Race_V3_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
										elseif Evo_Race_V2_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
										elseif Evo_Race_V1_H then
											Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
										end
										List.Quest = false
										Not_Farm_Boss = false
										if _G.Quest['Evo Race V3'] and not Evo_Race_V3_H and game.Players.LocalPlayer.Data.Level.Value >= 1500 and New_World and not checkput then
											if game.Players.LocalPlayer.Data.Beli.Value >= 2000000 then
												Quest = 'Evo Race V3'
												List.Quest = true
											end
										end
									end
								end
							end
						elseif Quest == 'Evo Race V3' then
							Not_Farm_Boss = true
							if game.Players.LocalPlayer.Data.Race.Value == 'Mink' then
								if Quest_Start_Evo_Mink_V3 then
									Chest_Drop = nil
									for i=5000,0,-500 do
										GetQuestTo(i)
									end
									if kpoethkrt == nil then
										kpoethkrt = 0
									end
									if Chest_Drop ~= nil then
										repeat wait()
											TP(Chest_Drop.CFrame)
											if (Chest_Drop.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "Space", false, game)
												wait(0.5)
												game:service('VirtualInputManager'):SendKeyEvent(false, "Space", false, game)
											end
										until not Chest_Drop.Parent or not Chest_Drop
										kpoethkrt = kpoethkrt+1
									end
									if kpoethkrt >= 30 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
										wait(1)
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
											Evo_Race_V3_H = true
											if Evo_Race_V3_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
											elseif Evo_Race_V2_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
											elseif Evo_Race_V1_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
											end
											Not_Farm_Boss = false
											List.Quest = false
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
									wait(1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
										Quest_Start_Evo_Mink_V3 = true
									end
								end
							elseif game.Players.LocalPlayer.Data.Race.Value == 'Human' then
								if Quest_Start_Evo_Human_V3 then
									if Kill_Jeremy and Kill_Diamond and Kill_Fajita then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
											Evo_Race_V3_H = true
											if Evo_Race_V3_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
											elseif Evo_Race_V2_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
											elseif Evo_Race_V1_H then
												Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
											end
											Not_Farm_Boss = false
											List.Quest = false
										end
									end
									if game.Workspace.Enemies:FindFirstChild("Fajita") or game.ReplicatedStorage:FindFirstChild("Fajita") then
										if game.Workspace.Enemies:FindFirstChild("Fajita") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == 'Fajita' and v.Humanoid.Health > 0 then
													repeat wait()
														TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
														EquipWeapon(Weapon)
													until not v.Parent or v.Humanoid.Health <= 0
													Kill_Diamond = true
												end
											end
										elseif game.ReplicatedStorage:FindFirstChild("Fajita") then
											TPX(game.ReplicatedStorage:FindFirstChild("Fajita").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										end
									elseif game.Workspace.Enemies:FindFirstChild("Jeremy") or game.ReplicatedStorage:FindFirstChild("Jeremy") then
										if game.Workspace.Enemies:FindFirstChild("Jeremy") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == 'Jeremy' and v.Humanoid.Health > 0 then
													repeat wait()
														TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
														EquipWeapon(Weapon)
													until not v.Parent or v.Humanoid.Health <= 0
													Kill_Jeremy = true
												end
											end
										elseif game.ReplicatedStorage:FindFirstChild("Jeremy") then
											TP(game.ReplicatedStorage:FindFirstChild("Jeremy").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										end
									elseif game.Workspace.Enemies:FindFirstChild("Diamond") or game.ReplicatedStorage:FindFirstChild("Diamond") then
										if game.Workspace.Enemies:FindFirstChild("Diamond") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == 'Diamond' and v.Humanoid.Health > 0 then
													repeat wait()
														TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
														EquipWeapon(Weapon)
													until not v.Parent or v.Humanoid.Health <= 0
													Kill_Fajita = true
												end
											end
										elseif game.ReplicatedStorage:FindFirstChild("Diamond") then
											TP(game.ReplicatedStorage:FindFirstChild("Diamond").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
										end
									else
										TP(CFrame.new(-358.2200927734375, 155.2202911376953, 308.691650390625))
										wait(1)
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
									wait(1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
										Quest_Start_Evo_Human_V3 = true
									end
								end
							elseif game.Players.LocalPlayer.Data.Race.Value == 'Fishman' then
								if Quest_Start_Evo_Fishman_V3 then
									local check_seabest = false
									local check_boat = false
									for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
										if v:FindFirstChild('Health') and v.Health.Value > 0 and (Vector3.new(-3823.920654296875, 76.97933959960938, -11685.7734375)-v.HumanoidRootPart.Position).Magnitude >= 1500 then
											check_seabest = true
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
											Tejao = true
											PositionSkillMasteryDevilFruit = v.HumanoidRootPart.CFrame
											game.Players.LocalPlayer.Character.Humanoid.Sit = false
											wait(1)
											if game.Players.LocalPlayer.Character.Humanoid.Sit == false then 
												Boat = nil
											end
											repeat wait()
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,3,0))
											until (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
											repeat wait()
												EquipWeapon('Fishman Karate')
												if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild('Fishman Karate') and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].Z.Cooldown.AbsoluteSize.X == 0 then
													EquipWeapon('Fishman Karate')
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,3,0))
													wait(0.5)
													PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
													if v.Health.Value > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
														wait(.2)
													end
												elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild('Fishman Karate') and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].X.Cooldown.AbsoluteSize.X == 0 then
													EquipWeapon('Fishman Karate')
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,3,0))
													wait(0.5)
													PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
													if v.Health.Value > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
														wait(.2)
													end
												elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild('Fishman Karate') and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].C.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills['Fishman Karate'].C.Cooldown.AbsoluteSize.X == 0 then
													EquipWeapon('Fishman Karate')
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,3,0))
													wait(0.5)
													PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
													if v.Health.Value > 0 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
														wait(.5)
														game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
														wait(.2)
													end
												end
											until not v.Parent or v.Health.Value <= 0
											Tejao = false
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
											wait(1)
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
												Evo_Race_V3_H = true
												if Evo_Race_V3_H then
													Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
												elseif Evo_Race_V2_H then
													Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
												elseif Evo_Race_V1_H then
													Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
												end
												Quest_Start_Evo_Fishman_V3 = false
												List.Quest = false
												Not_Farm_Boss = false 
											end
										end
									end
									if not check_seabest then
										for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
											if v.Name == 'PirateBasic' and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
												check_boat = true
												if (Vector3.new(3017.20068359375, -4.25, -2686.33251953125)-v.VehicleSeat.Position).Magnitude >= 30 then
													if game.Players.LocalPlayer.Character.Humanoid.Sit == true then	
														Boat = 'Bit'
														TPBoat(CFrame.new(3017.20068359375, -4.25, -2686.33251953125),v.VehicleSeat,200)
													elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude >= 10 then
														Boat = nil
														TP(v.VehicleSeat.CFrame)
													else
														Boat = 'Bit'
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame*CFrame.new(0,2,0)
														wait(1)
													end
												else
													if game.Players.LocalPlayer.Character.Humanoid.Sit == true then	
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
														wait(1)
													elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.VehicleSeat.Position).Magnitude >= 10 then
														Boat = nil
														TP(v.VehicleSeat.CFrame)
													else
														Boat = 'Bit'
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame*CFrame.new(0,2,0)
														wait(1)
													end
												end
											end
										end
									end
									if not check_boat and not check_seabest then
										TP(CFrame.new(-1967.2530517578125, 9.2692289352417, -2579.33154296875))
										if (Vector3.new(-1967.2530517578125, 9.2692289352417, -2579.33154296875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateBasic")
											wait(1)
											Boat = 'bit'
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
									wait(1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
										Quest_Start_Evo_Fishman_V3 = true
									end
								end
							elseif game.Players.LocalPlayer.Data.Race.Value == 'Skypiea' then
								if Quest_Start_Evo_Skypiea_V3 then
									local select_attack = nil
									for i,v in pairs(game.Players:GetChildren()) do
                                        if v:FindFirstChild('Data') and v.Name ~= 'Bitx' and v.Data.Race.Value == 'Skypiea' and v.Name ~= tostring(game.Players.LocalPlayer.Name) then
                                            select_attack = v.Name
											v.Name = 'Bitx'
											Set_Status_X(' Status : Kill '. .. tostring(v.Name))
                                        end
                                    end
									if select_attack == nil then
									else
										for i,v in pairs(game.Workspace.Characters:GetChildren()) do
                                            if v.Name == select_attack then
												AttackPlayers = v.Name
												FarmPlayer = true
                                                Farm_P_ATTK = true
												time_xeg = 0
												Stop_Attack = true
												repeat wait()
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                    end
                                                    RandomFarm = math.random(1,5)
                                                    if RandomFarm == 1 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
														AttackNoCDX()
                                                    elseif RandomFarm == 2 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 35))
														AttackNoCDX()
                                                    elseif RandomFarm == 3 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -35))
														AttackNoCDX()
                                                    elseif RandomFarm == 4 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(35, 1, 0))
														AttackNoCDX()
                                                    elseif RandomFarm == 5 then
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(-35, 1, 0))
														AttackNoCDX()
                                                    else
                                                        TPX(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 1))
														AttackNoCDX()
                                                    end
                                                    EquipWeapon(Weapon)
                                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                                    end
                                                until not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text,'lay')
												Stop_Attack = false
											end
										end
									end
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3") == -2 then
										Evo_Race_V3_H = true 
										Lsit.Quest = false
										Quest = nil
										if Evo_Race_V3_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 3')
                                        elseif Evo_Race_V2_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 2')
                                        elseif Evo_Race_V1_H then
                                            Race_S:Set(' Race : '. .. tostring(game.Players.LocalPlayer.Data.Race.Value)..' : 1')
                                        end
									end
                                    TP(CFrame.new(638.43811, 71.769989, 918.282898))
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                    end
                                    if not Evo_Race_V3_H then
                                        local select_attack = nil
										for i,v in pairs(game.Players:GetChildren()) do
											if v:FindFirstChild('Data') and v.Name ~= 'Bitx' and v.Data.Race.Value == 'Skypiea' and v.Name ~= tostring(game.Players.LocalPlayer.Name) then
												select_attack = v.Name
												v.Name = 'Bitx'
												Set_Status_X(' Status : Kill '. .. tostring(v.Name))
											end
										end
										if select_attack == nil then
											HopLowServer()
											wait(200)
										end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1")
                                    wait(1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 2 then
                                        Quest_Start_Evo_Skypiea_V3 = true
                                    end
                                end
							end
						elseif Quest == 'Q Fish Tail' then
							if CheckItem('Fish Tail') >= 20 then
								List.Quest = false
							else
								local Select_Monster_1 = nil
								local Select_Monster_2 = nil
								local CFrame_Monster_1 = nil
								local CFrame_Monster_2 = nil
								
								Select_Monster_1 = "Fishman Warrior" 
								Select_Monster_2 = "Fishman Commando"
								CFrame_Monster_1 = CFrame.new(60946.6094, 65.6735229, 1525.91687)
								CFrame_Monster_2 = CFrame.new(61902.7383, 32.4828358, 1478.33936)
									
								if Select_Monster_1 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_1)
									until (CFrame_Monster_1.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_1) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_1 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
								if Select_Monster_2 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_2)
									until (CFrame_Monster_2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_2) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_2 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
							end
						elseif Quest == 'Second World' then
							local Q_New = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress")
							if Q_New['UsedKey'] == false then
								TPX(CFrame.new(1347.32947, 37.349369, -1325.44922, 0.538348913, 8.57539106e-08, 0.842722058, 8.61935634e-10, 1, -1.0230886e-07, -0.842722058, 5.58042359e-08, 0.538348913))
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
								EquipWeapon("Key")
							elseif Q_New['KilledIceBoss'] == false then
								if game.workspace.Enemies:FindFirstChild("Ice Admiral") then
									for i,v in pairs(game.workspace.Enemies:GetChildren()) do
										if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
											repeat wait(.1)
												EquipWeapon(Weapon)
												TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,15))
											until not v.Parent or v.Humanoid.Health <= 0
											wait(2)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
											TleP = true
											wait(25)
										end
									end
								elseif game.ReplicatedStorage:FindFirstChild("Ice Admiral") then
									TPX(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
								end
							elseif Q_New['KilledIceBoss'] == true then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								TleP = true
								wait(25)
							end
						elseif Quest == 'Bartlio' then
							local Q_Bar = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress")
							if Q_Bar['KilledBandits'] == false then
								if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") then
									if game.workspace.Enemies:FindFirstChild("Swan Pirate") then
										for i,v in pairs(game.workspace.Enemies:GetChildren()) do
											if v.Name == "Swan Pirate" and v.Humanoid.Health > 0 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait(.1)
													EquipWeapon(Weapon)
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									else
										TPX(CFrame.new(976.467651, 111.174057, 1229.1084))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
								end
							elseif Q_Bar['KilledSpring'] == false then
								if game.workspace.Enemies:FindFirstChild("Jeremy") then
									for i,v in pairs(game.workspace.Enemies:GetChildren()) do
										if v.Name == "Jeremy" then
											repeat wait(.1)
												EquipWeapon(Weapon)
												TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
											until not v.Parent or v.Humanoid.Health <= 0
										end
									end
								elseif game.ReplicatedStorage:FindFirstChild("Jeremy") then
									TP(game.ReplicatedStorage:FindFirstChild("Jeremy").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								elseif not game.workspace.Enemies:FindFirstChild("Jeremy") and not game.ReplicatedStorage:FindFirstChild("Jeremy") then
									FarmLevel()
								end
							elseif Q_Bar['DidPlates'] == false then
								repeat wait(.3)
									TPX(CFrame.new(-1836, 11, 1714))
								until (Vector3.new(-1836, 11, 1714)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","DidPlates")
							elseif Q_Bar['KilledBandits'] == true and Q_Bar['DidPlates'] == true then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									Bartlio_S:Set(' ✅ : Quest Bartlio')
								end
								Bartlio_H = true
								List.Quest = false
							end
						elseif Quest == 'Don Swan' then
							local bitx = false
							local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
							for i,v in pairs(fruit)do
								if v['Price'] >= 1000000 and not bitx then
									result = {}
									local regex = ("([^%s]+)"):format("-")
									for each in v["Name"]:gmatch(regex) do
										table.insert(result, each)
									end
									local NameFruit = result[2] .. " Fruit"
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
									wait(1)
									for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA('Tool') and v.Name == NameFruit then
											EquipWeapon(v.Name)
											wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
										end
									end
									for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if v:IsA('Tool') and v.Name == NameFruit then
											EquipWeapon(v.Name)
											wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
										end
									end
									bitx = true
								end
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
								List.Quest = false
								Don_Swan_H = true
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
								Don_Swan_S:Set(' ✅ : Quest Don Swan')
							end
							if not bit then
								List.Quest = false
							end
						elseif Quest == 'Q Ectoplasm' then
							if CheckItem('Ectoplasm') >= 250 then
								List.Quest = false
							else
								local Select_Monster_1 = nil
								local Select_Monster_2 = nil
								local CFrame_Monster_1 = nil
								local CFrame_Monster_2 = nil
								
								Select_Monster_1 = "Ship Steward"
								Select_Monster_2 = "Ship Officer"
								CFrame_Monster_1 = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
								CFrame_Monster_2 = CFrame.new(944.44964599609, 181.40081787109, 33278.9453125)
									
								if Select_Monster_1 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_1)
									until (CFrame_Monster_1.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_1) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_1 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
								if Select_Monster_2 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_2)
									until (CFrame_Monster_2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_2) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_2 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
							end
						elseif Quest == 'Q Magma Ore' then
							if CheckItem('Magma Ore') >= 20 then
								List.Quest = false
							else
								local Select_Monster_1 = nil
								local Select_Monster_2 = nil
								local CFrame_Monster_1 = nil
								local CFrame_Monster_2 = nil
								
								Select_Monster_1 = "Magma Ninja"
								Select_Monster_2 = "Lava Pirate"
								CFrame_Monster_1 = CFrame.new(-5466.06445, 77.6952019, -5837.42822)
								CFrame_Monster_2 = CFrame.new(-5169.71729, 54.1234779, -4669.73633)
									
								if Select_Monster_1 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_1)
									until (CFrame_Monster_1.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_1) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_1 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
								if Select_Monster_2 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_2)
									until (CFrame_Monster_2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_2) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_2 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
							end
						elseif Quest == 'Q Mystic Droplet' then
							if CheckItem('Mystic Droplet') >= 20 then
								List.Quest = false
							else
								local Select_Monster_1 = nil
								local Select_Monster_2 = nil
								local CFrame_Monster_1 = nil
								local CFrame_Monster_2 = nil
								
								Select_Monster_1 = "Sea Soldier"
								Select_Monster_2 = "Water Fighter"
								CFrame_Monster_1 = CFrame.new(-3115.78223, 63.8785706, -9808.38574)
								CFrame_Monster_2 = CFrame.new(-3212.99683, 263.809296, -10551.8799)
									
								if Select_Monster_1 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_1)
									until (CFrame_Monster_1.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_1) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_1 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
								if Select_Monster_2 ~= nil then
									repeat wait()
										TPX(CFrame_Monster_2)
									until (CFrame_Monster_2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game.Workspace.Enemies:FindFirstChild(Select_Monster_2) then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == Select_Monster_2 and v.Humanoid.Health > 0 then
												PosMon_X = v.HumanoidRootPart.CFrame
												StatrMagnet = true
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
												StatrMagnet = false
											end
										end
									end
								end
							end
						elseif Quest == 'Third World' then
							if Kill_Don then
								if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "rip_indra" and v.Humanoid.Health > 0 then
											if v.Humanoid:FindFirstChild("Animator") then
												v.Humanoid.Animator:Destroy()
											end
											repeat wait(.1)
												EquipWeapon(Weapon)
												TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
											until v.Humanoid.Health <= 0 or not v.Parent or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1 then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
												TleP = true
												wait(30)
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									TleP = true
									wait(30)
								elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									wait(3)
								end
							elseif not oijdfg then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
								wait(3)
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == 'rip_indra' then
										Kill_Don = true
									end
								end
								oijdfg = true
							else
								FarmLevel()
							end
						elseif Quest == 'Yama' then
							if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
								if game.Workspace.Enemies:FindFirstChild("Ghost") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Ghost" and v.Humanoid.Health > 0 then
											if v.Humanoid:FindFirstChild("Animator") then
												v.Humanoid.Animator:Destroy()
											end
											repeat wait(.1)
												EquipWeapon(Weapon)
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,15,0))
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
											until not v.Parent or v.Humanoid.Health <= 0 
										end
									end
								elseif game.ReplicatedStorage:FindFirstChild("Ghost") then
									TPX(game.ReplicatedStorage:FindFirstChild("Ghost").HumanoidRootPart.CFrame)
								elseif not game.Workspace.Enemies:FindFirstChild("Ghost") and not game.ReplicatedStorage:FindFirstChild("Ghost") then
									TPX(game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
									for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
										if v:IsA('Tool') then
											v.Parent = game.Players.LocalPlayer.Backpack
										end
									end
									fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector, 1)
									for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
										if v["Name"] == 'Yama' then
											List.Quest = false
											Yama_H = true
											Yama_S:Set(" ✅ : Yama")
										end
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') or game.Players.LocalPlayer.Character:FindFirstChild('Yama') then
										Yama_H = true
										Yama_S:Set(" ✅ : Yama")
										List.Quest = false
									end
								end
							else
								TPX(game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
							end
						elseif Quest == 'Godhuman' then
							if CheckItem_X('Fish Tail') >= 20 and CheckItem_X('Magma Ore') >= 20 and CheckItem_X('Mystic Droplet') >= 10 and CheckItem_X('Dragon Scale') >= 10 then 
								List.Quest = false
								God_Human_Q_C = true
								if not Three_World then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									TleP = true
									wait(50)
								end
							end
							local Select_Monster_1 = nil
							local Select_Monster_2 = nil
							local CFrame_Monster_1 = nil
							local CFrame_Monster_2 = nil
							if CheckItem_X('Fish Tail') < 20 then
								God_Human_C_S:Set(' Godhuman : 2/5')
								Select_Monster_1 = "Fishman Warrior" 
								Select_Monster_2 = "Fishman Commando"
								CFrame_Monster_1 = CFrame.new(60946.6094, 65.6735229, 1525.91687)
								CFrame_Monster_2 = CFrame.new(61902.7383, 32.4828358, 1478.33936)
								if not Old_World then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
									TleP = true
									wait(50)
								end
							elseif CheckItem_X('Magma Ore') < 20 then
								God_Human_C_S:Set(' Godhuman : 3/5')
								Select_Monster_1 = "Magma Ninja"
								Select_Monster_2 = "Lava Pirate"
								CFrame_Monster_1 = CFrame.new(-5466.06445, 77.6952019, -5837.42822)
								CFrame_Monster_2 = CFrame.new(-5169.71729, 54.1234779, -4669.73633)
								if not New_World then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									TleP = true
									wait(50)
								end
							elseif CheckItem_X('Mystic Droplet') < 10 then
								God_Human_C_S:Set(' Godhuman : 4/5')
								Select_Monster_1 = "Sea Soldier"
								Select_Monster_2 = "Water Fighter"
								CFrame_Monster_1 = CFrame.new(-3115.78223, 63.8785706, -9808.38574)
								CFrame_Monster_2 = CFrame.new(-3212.99683, 263.809296, -10551.8799)
								if not New_World then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									TleP = true
									wait(50)
								end
							elseif CheckItem_X('Dragon Scale') < 10 then
								God_Human_C_S:Set(' Godhuman : 5/5')
								Select_Monster_1 = "Dragon Crew Warrior"
								Select_Monster_2 = "Dragon Crew Archer"
								CFrame_Monster_1 = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
								CFrame_Monster_2 = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
								if not Three_World then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									TleP = true
									wait(50)
								end
							end
							if Select_Monster_1 ~= nil then
								repeat wait()
									TPX(CFrame_Monster_1)
								until (CFrame_Monster_1.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
								if game.Workspace.Enemies:FindFirstChild(Select_Monster_1) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Select_Monster_1 and v.Humanoid.Health > 0 then
											PosMon_X = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not v.Parent or v.Humanoid.Health <= 0
											StatrMagnet = false
										end
									end
								end
							end
							if Select_Monster_2 ~= nil then
								repeat wait()
									TPX(CFrame_Monster_2)
								until (CFrame_Monster_2.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
								if game.Workspace.Enemies:FindFirstChild(Select_Monster_2) then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == Select_Monster_2 and v.Humanoid.Health > 0 then
											PosMon_X = v.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not v.Parent or v.Humanoid.Health <= 0
											StatrMagnet = false
										end
									end
								end
							end
						elseif Quest == 'Koko' then
							if not Koko_H then
								if Start_Kill_Koko and game.Workspace.Enemies:FindFirstChild("Order") or Start_Kill_Koko and game.ReplicatedStorage:FindFirstChild("Order") then
									if game.Workspace.Enemies:FindFirstChild("Order") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Order" and v.Humanoid.Health > 0 then
												repeat wait()
													TPX(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													EquipWeapon(Weapon)
												until not v.Parent or v.Humanoid.Health <= 0
											end
										end
									elseif game.ReplicatedStorage:FindFirstChild("Order") then
										TPX(game.ReplicatedStorage:FindFirstChild("Order").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									end
								elseif not game.Workspace.Enemies:FindFirstChild("Order") and not game.ReplicatedStorage:FindFirstChild("Order") then
									Start_Kill_Koko = false
									if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") then
										fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector, 1)
										local time_add = 0
										repeat wait(1)
											time_add = time_add+1
										until time_add >= 10 or game.Workspace.Enemies:FindFirstChild("Order") or game.ReplicatedStorage:FindFirstChild("Order")
										if game.Workspace.Enemies:FindFirstChild("Order") or game.ReplicatedStorage:FindFirstChild("Order") then
											Start_Kill_Koko = true
											wait(2)
										end
									elseif New_World then
										local args = {
											[1] = "BlackbeardReward",
											[2] = "Microchip",
											[3] = "2"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										wait(1)
										Koko_Quest = false
										if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") then
											Koko_Quest = true
										end
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") then
											List.Quest = false
										end
									end
								end
							else
								List.Quest = false
							end
						elseif Quest == 'CDK' then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor") == 'opened' then
								local CheckQuest = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")
								if CheckQuest['Good'] == 0 or CheckQuest['Good'] == -3 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 3/10')
									CDK_Q_S_C = 3
									if CheckQuest['Good'] == 0 then
										GetQuest('Good')
									elseif CheckQuest['Good'] == -3 then
										repeat wait()
											TP(CFrame.new(-4600.37, 15.1245, -2881.18))
											if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4600.37, 15.1245, -2881.18)).Magnitude <= 3 then
												wait(1)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
												wait(0.5)
												Q_Boat_1 = true
											end 
										until Q_Boat_1
										repeat wait()
											TP(CFrame.new(-2068.63, 3.37222, -9887.08))
											if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2068.63, 3.37222, -9887.08)).Magnitude <= 3 then
												wait(1)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
												wait(0.5)
												Q_Boat_2 = true
											end 
										until Q_Boat_2
										repeat wait()
											TP(CFrame.new(-9531.19, 5.91675, -8377.75))
											if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9531.19, 5.91675, -8377.75)).Magnitude <= 3 then
												wait(1)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"), "Check")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables")
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
												wait(0.5)
												Q_Boat_3 = true
											end 
										until Q_Boat_3
										Q_Boat_1 = false
										Q_Boat_2 = false
										Q_Boat_3 = false
									end
								elseif CheckQuest['Evil'] == 0 or CheckQuest['Evil'] == -3 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 4/10')
									CDK_Q_S_C = 4
									if CheckQuest['Evil'] == 0 then
										GetQuest('Evil')
									elseif CheckQuest['Evil'] == -3 then
										Stop_Fast_Attack = true
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v:FindFirstChild('HumanoidRootPart') and (v.HumanoidRootPart.Position-Vector3.new(-13347.6982, 332.378143, -7652.27783)).Magnitude > 10 then
												v.HumanoidRootPart.CFrame = CFrame.new(-13347.6982, 332.378143, -7652.27783)
												sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
											end
										end
										TPX(CFrame.new(-13347.6982, 332.378143, -7652.27783, -0.97929436, 4.50812898e-08, -0.202441484, 4.58302409e-08, 1, 9.8789521e-10, 0.202441484, -8.31050162e-09, -0.97929436))
									end
								elseif CheckQuest['Evil'] == 1 or CheckQuest['Evil'] == -4 then
									Stop_Fast_Attack = false
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 5/10')
									CDK_Q_S_C = 5
									if CheckQuest['Evil'] == 1 then
										GetQuest('Evil')
									elseif CheckQuest['Evil'] == -4 then
										if game:GetService("Players").LocalPlayer:FindFirstChild('QuestHaze') then
											if Quest_Kill == nil then
												for i,v in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
													if tonumber(v.Value) > 0 and Quest_Kill == nil then
														SelectMonster = v.Name
														CFrameMon = nil
														CheckLevel2()
														if CFrameMon ~= nil then
															Quest_Kill = v.Name
														end
													end
												end
											elseif game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill) and tonumber(game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill).Value) <= 0 then
												Quest_Kill = nil
											elseif game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill) and tonumber(game:GetService("Players").LocalPlayer.QuestHaze:FindFirstChild(Quest_Kill).Value) > 0 then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and v:FindFirstChild('HazeESP') then
														repeat wait(.1)
															Click()
															TP(v.HumanoidRootPart.CFrame*CFrame.new(0,25,0))
															EquipWeapon(Weapon)
														until not v.Parent or v.Humanoid.Health <= 0 
													end
												end
												TPX(CFrameMon)
											else
												Quest_Kill = nil
											end
										end
									end
								elseif CheckQuest['Good'] == 1 or CheckQuest['Good'] == -4 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 6/10')
									CDK_Q_S_C = 6
									if CheckQuest['Good'] == 1 then
										GetQuest('Good')
									elseif CheckQuest['Good'] == -4 then
										TPX(CFrame.new(-5543.08056640625, 313.7655029296875, -2969.484619140625))
										if (Vector3.new(-5543.08056640625, 313.7655029296875, -2969.484619140625)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v:FindFirstChild('Humanoid') and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
													repeat wait(.3)
														Click()
														EquipWeapon(Weapon)
														TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													until not v.Parent or v.Humanoid.Health <= 0 
												end
											end
										end
									end
								elseif CheckQuest['Good'] == 2 or CheckQuest['Good'] == -5 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 7/10')
									CDK_Q_S_C = 7
									Cake_Quest = true
									if CheckQuest['Good'] == 2 then
										GetQuest('Good')
									elseif CheckQuest['Good'] == -5 then
										if not Kill_Boss_Cake then
											if game:GetService("Workspace").Enemies:FindFirstChild('Cake Queen') then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == 'Cake Queen' and v.Humanoid.Health > 0 and not Kill_Boss_Cake then
														repeat wait(.3)
															Click()
															TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
															EquipWeapon(Weapon)
														until not v.Parent or v.Humanoid.Health <= 0
														Kill_Boss_Cake = true
													end
												end
											else
												TPX(CFrame.new(-714.643066, 381.565613, -11021.0566))
											end
										else
											if game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
												if not Ceyma_HeavenlyDimension then
													repeat wait(.1)
														TP(game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot)
													until (game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
													wait(1)
													Ceyma_HeavenlyDimension = true
												elseif Ceyma_HeavenlyDimension then
													EquipWeapon(Weapon)
													if game.Workspace.Enemies:FindFirstChildOfClass('Model') then
														for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
															if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and (game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension').WorldPivot.Position-v.HumanoidRootPart.Position).Magnitude <= 1000 then
																if v.Humanoid.Health > 0 then
																	repeat wait()
																		Click()
																		TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
																		EquipWeapon(Weapon)
																	until not v.Parent or v.Humanoid.Health <= 0
																end
															end
														end
													elseif not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
														GetTorch('Torch1')
														if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
															GetTorch('Torch2')
															if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
																GetTorch('Torch3')
																if not game.Workspace.Enemies:FindFirstChildOfClass('Model') and game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
																	game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
																	wait(1)
																end
															end
														end
													end
												end
											elseif not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
												wait(5)
												if not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
													Kill_Boss_Cake = false
												end
											end
										end
									end
								elseif CheckQuest['Evil'] == 2 or CheckQuest['Evil'] == -5 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 8/10')
									CDK_Q_S_C = 8
									if CheckQuest['Evil'] == 2 then
										GetQuest('Evil')
									elseif CheckQuest['Evil'] == -5 then
										if game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
											if (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
												repeat wait(.1)
													TP(game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot)
												until (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
												wait(1)
											elseif (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1200 then
												EquipWeapon(Weapon)
												if game.Workspace.Enemies:FindFirstChildOfClass('Model') then
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v:FindFirstChild('HumanoidRootPart') and v:FindFirstChild('Humanoid') and (game:GetService("Workspace").Map:FindFirstChild('HellDimension').WorldPivot.Position-v.HumanoidRootPart.Position).Magnitude <= 1000 then
															if v.Humanoid.Health > 0 then
																repeat wait()
																	Click()
																	TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
																	EquipWeapon(Weapon)
																until not v.Parent or v.Humanoid.Health <= 0
															end
														end
													end
												elseif not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
													GetTorchX('Torch1')
													if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
														GetTorchX('Torch2')
														if not game.Workspace.Enemies:FindFirstChildOfClass('Model') then
															GetTorchX('Torch3')
															if not game.Workspace.Enemies:FindFirstChildOfClass('Model') and game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
																game:GetService("Workspace").Map.HellDimension.Exit.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
																wait(1)
															end
														end
													end
												end
											end
										elseif not game:GetService("Workspace").Map:FindFirstChild('HellDimension') then
											if game.Workspace.Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
												Stop_Fast_Attack = true
												if not game.Workspace.Enemies:FindFirstChild("Soul Reaper") and game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
													repeat wait(.2)
														TP(game.ReplicatedStorage:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
													until game.Workspace.Enemies:FindFirstChild("Soul Reaper")
													wait(1)
												end
												if game.Workspace.Enemies:FindFirstChild("Soul Reaper") then
													TP(game.Workspace.Enemies:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,0,2))
													wait(1)
												end
											elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") > 0 and CheckItem('Bones') > 500 then
												repeat wait(.2)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
												until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") == 0
												wait(1)
												if not Dragon_Talon_Q then
													if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
														Set_Status_X(' Status : Use Fire Essence')
														repeat 
															EquipWeapon("Fire Essence")
															wait(.5)
															game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
															game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
														until not game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
														if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'heart') then
															Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
															Dragon_Talon_Q = true
														end
													end
												end
												if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") then
													Set_Status_X(' Status : Use Hallow Essence')
													repeat wait(1)
														EquipWeapon("Hallow Essence")
														TP(CFrame.new(-8932.86, 143.258, 6063.31))
													until not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence")
												end
											elseif not game.Workspace.Enemies:FindFirstChild("Soul Reaper") and not game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
												if Check_Raid and not Old_World and CheckItem('Bones') >= 500 then
													if Quest_Dough_Awaken_EX and game.Players.LocalPlayer.Data.Fragments.Value >= 6000 then
														if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
															Raid_Dough_Down = true
															List.Raid = true
															wait(.5)
														elseif _G.Quest['Fast Dough Awaken'] then
															if not iojdijfgo and GetFruitOneM() == true then
																if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
																	Raid_Dough_Down = true
																	List.Raid = true
																	wait(.5)
																end
															elseif not iojdijfgo then
																iojdijfgo = true
															end
														end
													else
														if game.Players.LocalPlayer.Data.Level.Value >= 1100 then
															if not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') and not game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
																if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then 
																	Select_Map = "Dark"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Flame"
																end
																if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
																	List.Raid = true
																	wait(.5)
																end
															end
															if not List.Raid then
																GetFruit()
																if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
																	Select_Map = "Light"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
																	Select_Map = "String"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Flame"
																end
																if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
																	List.Raid = true
																	wait(.5)
																end
															end
														end
													end
												end
												if not List.Raid then
													if List.Fruit and _G.Main['Bring Fruit'] and not Koko_Quest and Quest_Istand ~= 'God Dough Awaken' and not Not_Farm_Boss and not game:GetService("Workspace").Map:FindFirstChild('HellDimension') and not game:GetService("Workspace").Map:FindFirstChild('HeavenlyDimension') then
														Set_Status_X(' Status : Bring Fruit')
														iojdijfgo = false
														for i,v in pairs(game.Workspace:GetChildren()) do
															if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') and not List.Raid then
																repeat wait(.1)
																	if (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2550 then
																		TPX(v.Handle.CFrame*CFrame.new(0,0,80))
																	elseif (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
																		TPZ(v.Handle.CFrame)
																	end
																until (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
																wait(3)
																for i2,v2 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
																	if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
																		result = {} 
																		local regex = ("([^%s]+)"):format(" ")
																		for each in v2.Name:gmatch(regex) do
																			table.insert(result, each)
																		end
																		local x = result[1].."-"..result[1]
																		if v2.Name == 'Bird: Phoenix Fruit' then
																			x = 'Bird-Bird: Phoenix' 
																		end
																		if v2.Name == "Bird: Falcon Fruit" then
																			x = "Bird-Bird: Falcon"
																		end
																		local time_check = 0
																		repeat wait(.1)
																			EquipWeapon(v2.Name)
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
																			wait(.5)
																			time_check = time_check+1
																		until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
																		if time_check >= 3 then
																			if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
																				if New_World or Three_World then
																					if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
																						List.Raid = true
																						Buy_Chip()
																					else
																						v2:Destroy()
																					end
																				elseif Old_World then
																					v2:Destroy()
																					wait(0.5)
																				end
																			end
																		end
																	end
																end
																for i2,v2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
																	if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
																		result = {} 
																		local regex = ("([^%s]+)"):format(" ")
																		for each in v2.Name:gmatch(regex) do
																			table.insert(result, each)
																		end
																		local x = result[1].."-"..result[1]
																		if v2.Name == 'Bird: Phoenix Fruit' then
																			x = 'Bird-Bird: Phoenix' 
																		end
																		if v2.Name == "Bird: Falcon Fruit" then
																			x = "Bird-Bird: Falcon"
																		end
																		local time_check = 0
																		repeat wait(.1)
																			EquipWeapon(v2.Name)
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
																			wait(1)
																			time_check = time_check+1
																		until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
																		if time_check >= 3 then
																			if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
																				if New_World or Three_World then
																					if game.Players.LocalPlayer.Data.Fragments.Value <= 15000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
																						List.Raid = true
																						Buy_Chip()
																					else
																						v2:Destroy()
																					end
																				elseif Old_World then
																					v2:Destroy()
																					wait(0.5)
																				end
																			end
																		end
																	end
																end
																v:Destroy()
															end
														end
														List.Fruit = false
														for i,v in pairs(game.Workspace:GetChildren()) do
															if string.find(v.Name,'Fruit') and v:FindFirstChild('Handle') then
																List.Fruit = true
															end
														end
														-- Eat Fruit
														if game.Players.LocalPlayer.Data.Level.Value >= 1100 and game.Players.LocalPlayer.Data.DevilFruit.Value == '' then
															Eat_Fruit = nil
															Fruit_Check = nil
															local fruitx = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
															for i,v in next,fruitx do
																Check_Fruit(v.Name)
															end
															if Fruit_Check ~= nil then
																result = {}
																local regex = ("([^%s]+)"):format("-")
																local xp = Fruit_Check
																for each in xp:gmatch(regex) do
																	table.insert(result, each)
																end
																Eat_Fruit = result[2] .. " Fruit"
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",Fruit_Check)
																if Eat_Fruit ~= nil then
																	wait(.5)
																	if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
																		repeat wait()
																			EquipWeapon(Eat_Fruit)
																		until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
																		if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
																			game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
																			wait(3)
																			Eat_Fruitx = true
																		end
																	end
																end
															end
														end
													end
													Stop_Fast_Attack = false
													Start_Farm_Bone = true
													if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude >= 3000 then
														repeat wait()
															TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
														until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude <= 3
													elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude < 3000 then
														Monster = nil
														for i=1500,0,-300 do
															GetMonster(i)
														end
														if Monster ~= nil and Monster.Humanoid.Health > 0 then
															PosMon_X = Monster.HumanoidRootPart.CFrame
															StatrMagnet = true
															repeat wait()
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
																EquipWeapon(Weapon)
															until not Monster.Parent or Monster.Humanoid.Health <= 0
															StatrMagnet = false
														elseif Monster == nil then
															for i=1500,0,-300 do
																GetMonster(i)
															end
															if Monster == nil then
																TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
															end
														end
													end
													Start_Farm_Bone = false
												end
											end
										end
									end
								elseif CheckQuest['Evil'] == 3 then
									repeat wait()
										TP(CFrame.new(-12392.2637, 603.319763, -6503.27832))
									until (Vector3.new(-12392.2637, 603.319763, -6503.27832)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
									if game:GetService("CoreGui"):FindFirstChild("     ") then
										game:GetService("CoreGui")["     "].Enabled = false
									end	
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
									wait(1)
									click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
								elseif CheckQuest['Good'] == 3 then
									repeat wait()
										TP(CFrame.new(-12392.5068, 603.319763, -6596.00586))
									until (Vector3.new(-12392.5068, 603.319763, -6596.00586)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
									if game:GetService("CoreGui"):FindFirstChild("     ") then
										game:GetService("CoreGui")["     "].Enabled = false
									end	
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
									wait(1)
									click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
								elseif CheckQuest['Good'] == 4 and CheckQuest['Evil'] == 4 and game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.Position.Y > 584 then
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 9/10')
									EquipWeapon(Weapon)
									repeat wait(.1)
										TP(CFrame.new(-12359.1719, 603.319702, -6550.59717, 0.481593847, 0, -0.87639451, 0, 1, 0, 0.87639451, 0, 0.481593847))
									until (Vector3.new(-12359.1719, 603.319702, -6550.59717)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
									if game:GetService("CoreGui"):FindFirstChild("     ") then
										game:GetService("CoreGui")["     "].Enabled = false
									end	
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
									wait(1)
									game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
									wait(1)
									click(game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue)
								elseif game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.Position.Y <= 584 then
									if game:GetService("CoreGui"):FindFirstChild("     ") then
										game:GetService("CoreGui")["     "].Enabled = true
									end	
									local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
									for i,v in pairs(Inventory) do
										if v.Type == "Sword" then
											if v.Name == 'Cursed Dual Katana' then
												Cursed_Dual_Katana_H = true
												List.Quest = false
											end
										end
									end
									Cursed_Dual_Katana_Q_S:Set(' Cursed Dual Katana : 10/10')
									CDK_Q_S_C = 10
									if (Vector3.new(-12297.5605, 598.726013, -6532.96436)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										repeat wait()
											TPX(CFrame.new(-12379.1406, 601.433167, -6543.60742))
										until Boss_Extant or (Vector3.new(-12379.1406, 601.433167, -6543.60742)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
										repeat wait()
											TPZX(CFrame.new(-12330.197265625, 603.31982421875, -6549.11865234375))
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Cursed Skeleton Boss" then
													Boss_Extant = true
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,30,0)
												end
											end
										until Boss_Extant or (Vector3.new(-12330.197265625, 603.31982421875, -6549.11865234375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 
										wait(1)
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Cursed Skeleton Boss" then
												repeat wait(.1)
													Click()
													Get_Item_Inventory('Tushita')
													EquipWeapon('Tushita')
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
												until not v.Parent or v.Humanoid.Health <= 0
												for i,v in pairs(Inventory) do
													if v.Type == "Sword" then
														if v.Name == 'Cursed Dual Katana' then
															Cursed_Dual_Katana_H = true
															List.Quest = false
															CDK_Q_S_C = 11
														end
													end
												end
											end
										end
									elseif (Vector3.new(-12297.5605, 598.726013, -6532.96436)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
										TPX(CFrame.new(-12297.5605, 598.726013, -6532.96436))
									end	
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","OpenDoor",true)
							end
						elseif Quest == 'Soul Guitar' then
							if CheckItem('Bones') < 500 then
								if Three_World then
									Soul_Guitar_C_S:Set(' Soul Guitar : 2/5')
									Stop_Fast_Attack = false
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)).Magnitude >= 3000 then
										repeat wait()
											TPX(CFrame.new(-9712.03125, 204.69589233398, 6193.322265625))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)).Magnitude < 3000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not Monster.Parent or Monster.Humanoid.Health <= 0
											Bone_S:Set(' Bones : '..CheckItem('Bones'))
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(CFrame.new(-9712.03125, 204.69589233398, 6193.322265625))
											end
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									TleP = true
									wait(50)
								end
							elseif CheckItem('Ectoplasm') < 250 then
								if New_World then
									Soul_Guitar_C_S:Set(' Soul Guitar : 2/5')
									Stop_Fast_Attack = false
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude >= 3000 then
										repeat wait()
											TPX(CFrame.new(921.30249023438, 125.400390625, 32937.34375))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(921.30249023438, 125.400390625, 32937.34375)).Magnitude < 3000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not Monster.Parent or Monster.Humanoid.Health <= 0
											Ectoplasm_S:Set(' Ectoplasm : '..CheckItem('Ectoplasm'))
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(CFrame.new(921.30249023438, 125.400390625, 32937.34375))
											end
										end
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									TleP = true
									wait(50)
								end
							elseif not Three_World then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
								TleP = true
								wait(50)
							else
								if tostring(game:GetService("Workspace").Map["Haunted Castle"].SwampWater.BrickColor) == 'Maroon' then
									Soul_Guitar_C_S:Set(' Soul Guitar : 4/5')
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") ~= nil and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check")['Swamp'] == false then
										repeat wait()
											TPX(CFrame.new(-10147.779296875, 138.62667846679688, 5939.56005859375))
										until (Vector3.new(-10147.779296875, 138.62667846679688, 5939.56005859375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
										wait(1)
										get_mon = {}
										GetMon_Soul()
										if #get_mon >= 6 then
											for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
												if v:IsA('Tool') then
													v.Parent = game.Players.LocalPlayer.Backpack
												end
											end
											TPX(CFrame.new(-10147.779296875, 158.62667846679688, 5939.56005859375))
											for i,v in next,game:GetService("Workspace").Enemies:GetChildren() do
												if (v.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
													v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,20)
													sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
												end
											end
											wait(1)
											EquipWeapon(Weapon)
											wait(2)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") ~= nil then
									Soul_Guitar_C_S:Set(' Soul Guitar : 5/5')
									local Q_S_G = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check")
									if Q_S_G['Trophies'] and Q_S_G['Ghost'] and Q_S_G['Gravestones'] and Q_S_G['Swamp'] and Q_S_G['Pipes'] then
										Quest_Soul_Guitar = true
										List.Quest = false
									end
									if not Quest_Soul_Guitar then
										repeat wait(.1)
											TPX(CFrame.new(-9680.7412109375, 6.159106731414795, 6346.1552734375))
										until (Vector3.new(-9680.7412109375, 6.159106731414795, 6346.1552734375)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5
										wait(1)
										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check")) do
											if v == false then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress",i) 
											end
										end
										wait(2)
										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check")) do
											if v == false then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress",i) 
											end
										end
										wait(1)
										AFK_Not_Check = false
										Soul_Guitar_C_S:Set(' Soul Guitar : ✅')
										Quest_Soul_Guitar = true
										List.Quest = false
									end
								elseif tostring(game:GetService("Workspace").Map["Haunted Castle"].SwampWater.BrickColor) ~= 'Maroon' then
									AFK_Not_Check = true
									Soul_Guitar_C_S:Set(' Soul Guitar : 3/5')
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2) == true then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
									else
										TPX(CFrame.new(-8652.6416015625, 141.10939025878906, 6168.810546875))
									end
									if _G.Fruit_Main['Quest Dough Awaken'] == true and not Quest_Dough_Awaken then
										if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
											List.Quest = true
											Quest_Istand = 'God Dough Awaken'
										end
										if game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
											List.Quest = true
											Quest_Istand = 'God Dough Awaken'
										end
									end
								end
							end
						end
					elseif Three_World and _G.Quest['RGB'] and Check_RGB_Spawn == nil and not RGB_H then
						Set_Status_X(' Status : Check RGB Quest')
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == nil then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								local name_q = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
								if string.find(name_q,'Stone') then
									Check_RGB_Spawn = 'Stone'
								elseif string.find(name_q,'Island Empress') then
									Check_RGB_Spawn = 'Island Empress'
								elseif string.find(name_q,'Kilo Admiral') then
									Check_RGB_Spawn = 'Kilo Admiral'
								elseif string.find(name_q,'Captain Elephant') then
									Check_RGB_Spawn = 'Captain Elephant'
								elseif string.find(name_q,'Beautiful Pirate') then
									Check_RGB_Spawn = 'Beautiful Pirate'
								end
								if Check_RGB_Spawn == nil then
								else
									if string.find(name_q,'Stone') then
										Number = 1
									elseif string.find(name_q,'Island Empress') then
										Number = 2
									elseif string.find(name_q,'Kilo Admiral') then
										Number = 3
									elseif string.find(name_q,'Captain Elephant') then
										Number = 4
									elseif string.find(name_q,'Beautiful Pirate') then
										Number = 5
									end
									RGB_S_Q:Set(' RGB : '. .. tostring(Number).."/5 "..Check_RGB_Spawn)
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet") == 1 then
							RGB_H = true
							RGB_S_Q:Set(' RGB : ✅')
							Check_RGB_Spawn = nil
						end
					elseif List.HakiJump then
						if Snow_White and not Oyster_H then
							for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' then
									if tostring(v.Part.BrickColor) ~= 'Lime green' then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
										wait(1)
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
											TP(v.Part.CFrame)
										until  tostring(v.Part.BrickColor) == 'Lime green'
										Oyster_H = true
									end
								end
							end
						end 
						if Pure_Red_H and not Really_red_H then
							for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' then
									if tostring(v.Part.BrickColor) ~= 'Lime green' then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
										wait(1)
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
											TP(v.Part.CFrame)
										until  tostring(v.Part.BrickColor) == 'Lime green'
										Really_red_H = true
									end
								end
							end
						end 
						if Winter_Sky and not Hot_pink_H then
							for i,v in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
								if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' then
									if tostring(v.Part.BrickColor) ~= 'Lime green' then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
										wait(1)
										repeat wait()
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
											TP(v.Part.CFrame)
										until  tostring(v.Part.BrickColor) == 'Lime green'
										Hot_pink_H = true
									end
								end
							end
						end
						List.HakiJump = false
					elseif Random_Fruit then
						Random_Fruit = false
						Set_Status_X(' Status : Random Fruit')
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
						-- workspace:GetChildren()[57].Handle
						wait(0.5)
						for i2,v2 in next,game.Players.LocalPlayer.Backpack:GetChildren() do
							if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
								result = {} 
								local regex = ("([^%s]+)"):format(" ")
								for each in v2.Name:gmatch(regex) do
									table.insert(result, each)
								end
								local x = result[1].."-"..result[1]
								if v2.Name == 'Bird: Phoenix Fruit' then
									x = 'Bird-Bird: Phoenix' 
								end
								if v2.Name == "Bird: Falcon Fruit" then
									x = "Bird-Bird: Falcon"
								end
								local time_check = 0
								repeat wait(.1)
									EquipWeapon(v2.Name)
									wait(.2)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
									time_check = time_check+1
								until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
								if time_check >= 3 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
										if New_World or Three_World then
											if game.Players.LocalPlayer.Data.Fragments.Value <= 10000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
												List.Raid = true
												Buy_Chip()
											else
												v2:Destroy()
											end
										elseif Old_World then
											v2:Destroy()
											wait(0.5)
										end
									end
								end
							end
						end
						for i2,v2 in next,game.Players.LocalPlayer.Character:GetChildren() do
							if v2:IsA('Tool') and string.find(v2.Name,'Fruit') then
								result = {} 
								local regex = ("([^%s]+)"):format(" ")
								for each in v2.Name:gmatch(regex) do
									table.insert(result, each)
								end
								local x = result[1].."-"..result[1]
								if v2.Name == 'Bird: Phoenix Fruit' then
									x = 'Bird-Bird: Phoenix' 
								end
								if v2.Name == "Bird: Falcon Fruit" then
									x = "Bird-Bird: Falcon"
								end
								local time_check = 0
								repeat wait(.1)
									EquipWeapon(v2.Name)
									wait(.2)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",x,game:GetService("Players").LocalPlayer.Character:FindFirstChild(v2.Name))
									time_check = time_check+1
								until time_check >= 3 or not game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) and not game.Players.LocalPlayer.Character:FindFirstChild(v2.Name)
								if time_check >= 3 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild(v2.Name) or game.Players.LocalPlayer.Character:FindFirstChild(v2.Name) then
										if New_World or Three_World then
											if game.Players.LocalPlayer.Data.Fragments.Value <= 10000 and game.Players.LocalPlayer.Data.Level.Value >= 1100 then
												List.Raid = true
												Buy_Chip()
											else
												v2:Destroy()
											end
										elseif Old_World then
											v2:Destroy()
											wait(0.5)
										end
									end
								end
							end
						end
						-- Eat Fruit
						if game.Players.LocalPlayer.Data.Level.Value >= 1100 and game.Players.LocalPlayer.Data.DevilFruit.Value == '' then
							Set_Status_X(' Status : Check Eat Fruit')
							Eat_Fruit = nil
							Fruit_Check = nil
							local fruitx = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
							for i,v in next,fruitx do
								Check_Fruit(v.Name)
							end
							if Fruit_Check ~= nil then
								result = {}
								local regex = ("([^%s]+)"):format("-")
								local xp = Fruit_Check
								for each in xp:gmatch(regex) do
									table.insert(result, each)
								end
								Eat_Fruit = result[2] .. " Fruit"
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",Fruit_Check)
								if Eat_Fruit ~= nil then
									wait(.5)
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) or game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
										repeat wait()
											EquipWeapon(Eat_Fruit)
										until game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) or not game.Players.LocalPlayer.Backpack:FindFirstChild(Eat_Fruit) and not game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit)
										if game.Players.LocalPlayer.Character:FindFirstChild(Eat_Fruit) then
											game:GetService("Players").LocalPlayer.Character:FindFirstChild(Eat_Fruit).EatRemote:InvokeServer()
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
											wait(3)
											Eat_Fruitx = true
										end
									end
								end
							end
						end
						-- Don Swan
						if New_World then
							if game.Players.LocalPlayer.Data.Level.Value >= 1150 and not Don_Swan_H then -- Set Value
								Set_Status_X(' Status : Check Don Swan')
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
									Don_Swan_H = true
								else
									local fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
									for i,v in pairs(fruit) do
										if v['Price'] >= 1000000 then
											Quest = 'Don Swan'
											List.Quest = true
										end
									end
								end
							end
						end
						Set_Status_X(' Status : Sucess Random Fruit')
					elseif Quest_Electric_Claw and not Electric_Claw_Q_C then
						Set_Status_X(' Status : Electric Claw Quest')
						if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 'Nah .. ' or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 4 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
						elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 3 or game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 0 then
							Electric_Claw_Q_C = true
						end
					elseif Check_Time_Reaper then
						Set_Status_X(' Status : Check Time Reaper')
						repeat wait(.2)
							TPX(CFrame.new(-8652.6416015625, 141.10939025878906, 6168.810546875))
						until (Vector3.new(-8652.6416015625, 141.10939025878906, 6168.810546875)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
						wait(1)
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2) == true then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
							wait(1.5)
							if not Dragon_Talon_Q then
								for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v.Name == "Fire Essence" then
										Set_Status_X(' Status : Use Fire Essence')
										repeat 
											EquipWeapon("Fire Essence")
											wait(.5)
											game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
											game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
										until not game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
										if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'heart') then
											Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
											Dragon_Talon_Q = true
										end
									end
								end
								for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
									if v.Name == "Fire Essence" then
										Set_Status_X(' Status : Use Fire Essence')
										repeat 
											EquipWeapon("Fire Essence")
											wait(.5)
											game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
											game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
										until not game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
										if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'heart') then
											Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
											Dragon_Talon_Q = true
										end
									end
								end
							end
							if not Hallow_Scryte_H then
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") then
									Set_Status_X(' Status : Use Hallow Essence')
									repeat wait(1)
										EquipWeapon("Hallow Essence")
										TP(CFrame.new(-8932.86, 143.258, 6063.31))
									until not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence")
									wait(1)
									if game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
										repeat wait(.1)
											EquipWeapon(Weapon)
											TP(game.ReplicatedStorage:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame*CFrame.new(0,-20,0))
										until game.Workspace.Enemies:FindFirstChild("Soul Reaper") or not game.ReplicatedStorage:FindFirstChild("Soul Reaper")
									end
									if game.Workspace.Enemies:FindFirstChild("Soul Reaper") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Soul Reaper" and v.Humanoid.Health > 0 then
												repeat wait()
													EquipWeapon(Weapon)
													TP(v.HumanoidRootPart.CFrame*CFrame.new(0,-20,0))
												until not v.Parent or v.Humanoid.Health > 0
											end
										end
									end
									for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
										if v.Type == "Sword" then
											if v.Name == 'Hallow Scythe' then
												Hallow_Scryte_H = true
												Hallow_Scythe_S:Set(' ✅ : Hallow Scythe'..' : '. .. tostring(v.Mastery))
											end
										end
									end
								end
							end
							if _G.Fruit_Main['Quest Dough Awaken'] == true and not Quest_Dough_Awaken then
								for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v.Name == "God's Chalice" then
										List.Quest = true
										Quest_Istand = 'God Dough Awaken'
									end
								end
								for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
									if v.Name == "God's Chalice" then
										List.Quest = true
										Quest_Istand = 'God Dough Awaken'
									end
								end
							end
						end
						Check_Time_Reaper = false
					else
						if Check_Raid and not Old_World then
							if Quest_Dough_Awaken_EX and game.Players.LocalPlayer.Data.Fragments.Value >= 6000 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
									Raid_Dough_Down = true
									List.Raid = true
									wait(.5)
								elseif _G.Quest['Fast Dough Awaken'] then
									if not iojdijfgo and GetFruitOneM() == true then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", 'Dough') == 1 then
											Raid_Dough_Down = true
											List.Raid = true
											wait(.5)
										end
									elseif not iojdijfgo then
										iojdijfgo = true
									end
								end
							else
								if game.Players.LocalPlayer.Data.Level.Value >= 1100 then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild('Special Microchip') and not game.Players.LocalPlayer.Character:FindFirstChild('Special Microchip') then
										if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then 
											Select_Map = "Dark"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
											Select_Map = "Sand"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
											Select_Map = "Magma"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
											Select_Map = "Rumble"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
											Select_Map = "Flame"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
											Select_Map = "Ice"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
											Select_Map = "Light"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
											Select_Map = "String"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
											Select_Map = "Quake"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
											Select_Map = "Buddha"
										else
											Select_Map = "Flame"
										end
										if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
											List.Raid = true
											wait(.5)
										end
									end
									if not List.Raid then
										GetFruit()
										if game.Players.LocalPlayer.Data.DevilFruit.Value == "Dark-Dark" then
											Select_Map = "Dark"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Sand-Sand" then
											Select_Map = "Sand"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Magma-Magma" then
											Select_Map = "Magma"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Rumble-Rumble" then
											Select_Map = "Rumble"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Flame-Flame" then
											Select_Map = "Flame"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Ice-Ice" then
											Select_Map = "Ice"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Light-Light" then
											Select_Map = "Light"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "String-String" then
											Select_Map = "String"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Quake-Quake" then
											Select_Map = "Quake"
										elseif game.Players.LocalPlayer.Data.DevilFruit.Value == "Buddha-Buddha" then
											Select_Map = "Buddha"
										else
											Select_Map = "Flame"
										end
										if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Select_Map)) == '1' then
											List.Raid = true
											wait(.5)
										end
									end
								end
							end
						end
						if not List.Raid then
							if New_World then
								if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
										Set_Status_X(' Status : Use Library Key')
										repeat wait(.1)
											EquipWeapon("Library Key")
											TP(CFrame.new(6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, 0.508615494, -5.8594928e-08, -0.860993743))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(6377.12549, 296.634735, -6843.76025)).Magnitude <= 1 or not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole')
										wait(1)
										if not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild('Keyhole') then
											Death_Step_S_Q:Set(' ✅ : Quest Death Step')
										end
									end
								end
								if not Rengoku_H then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
										Set_Status_X(' Status : Use Hidden Key')
										repeat wait(.3)
											EquipWeapon("Hidden Key")
											TP(CFrame.new(6572.29248, 295.712677, -6966.09961, 0.803500533, -3.27515153e-08, 0.595304072, 3.97485422e-08, 1, 1.36659384e-09, -0.595304072, 2.25644108e-08, 0.803500533))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(6572.29248, 295.712677, -6966.09961)).Magnitude <= 1
										wait(1)
									end
								end
								if not Sharkman_Karate_Q_C then
									if game.Players.LocalPlayer.Backpack:FindFirstChild('Water Key') or game.Players.LocalPlayer.Character:FindFirstChild('Water Key') then
										Set_Status_X(' Status : Use Water Key')
										if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)),"keys") then
											EquipWeapon("Water Key")
											wait(1)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
											Sharkman_Karate_S_Q:Set(' ✅ : Quest Sharkman Karate')
											Sharkman_Karate_Q_C = true
										end
									end
								end
							end
							if Three_World then
								if not Spikey_Trident_H and game.Players.LocalPlayer.Data.Level.Value >= 2550 then
									Farm_Cake = true
								elseif Spikey_Trident_H then
									Start_Farm_Cake = false
									Farm_Cake = false
								end
							end 
							if Check_Bone and Three_World then
								Set_Status_X(' Status : Check Bone')
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") ~= 0 then
									repeat wait(.2)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
									until game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") == 0
									wait(0.5)
									if not Dragon_Talon_Q then
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence") then
											Set_Status_X(' Status : Use Fire Essence')
											repeat 
												EquipWeapon("Fire Essence")
												wait(.5)
												game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
												game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
											until not game.Players.LocalPlayer.Backpack:FindFirstChild("Fire Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Fire Essence")
											if not string.find(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon",true)),'heart') then
												Dragon_Talon_S_Q:Set(' ✅ : Quest Dragon Talon')
												Dragon_Talon_Q = true
											end
										end
									end
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") then
										Set_Status_X(' Status : Use Hallow Essence')
										repeat wait(1)
											EquipWeapon("Hallow Essence")
											TP(CFrame.new(-8932.86, 143.258, 6063.31))
										until not game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") and not game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence")
										wait(1)
										Select_List_Boss = "Soul Reaper"
										List.Boss = true
									end
								end
							end
							if Farm_Bone then
								Set_Status_X(' Status : Farm Bone')
								pcall(function()
									Start_Farm_Bone = true
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude >= 3000 then
										repeat wait()
											TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)).Magnitude < 3000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not Monster.Parent or Monster.Humanoid.Health <= 0
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188))
											end
										end
									end
									Start_Farm_Bone = false
								end)
							elseif Farm_Mastery_Fruit then
								Set_Status_X(' Status : Farm Mastery Fruit')
								pcall(function()
									Start_Farm_Mastery_Fruit = true 
									xp = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
									if Three_World then
										xp = CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)
									elseif New_World then
										xp = CFrame.new(-3212.99683, 263.809296, -10551.8799)
									elseif Old_World then
										xp = CFrame.new(5782.90186, 94.5326462, 4716.78174)
									end		
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude >= 2000 then
										repeat wait()
											TPX(xp)
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude < 2000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											local Fruit_V = tostring(game.Players.LocalPlayer.Data.DevilFruit.Value)
											repeat wait()
												local MinHealth = 16
												local health = Monster.Humanoid.Health
												local maxhealth = Monster.Humanoid.MaxHealth
												local percent = (health / maxhealth) * 100
												if percent <= MinHealth then
													if game.Players.LocalPlayer.Data.DevilFruit.Value == 'Buddha-Buddha' then
														EquipWeapon(Fruit_V)
														if game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y >= 4 then
															if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 then
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,2,20))
																wait(.5)
																if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																	PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.CFrame
																	if Monster.Humanoid.Health > 0 then
																		game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
																		wait(1)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
																		wait(.2)
																	end
																end
															elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 then
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,2,20))
																wait(.5)
																if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																	PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																	if Monster.Humanoid.Health > 0 then
																		game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
																		wait(1)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
																		wait(.2)
																	end
																end
															else
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,0,20))
															end
														elseif game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y < 4 then
															if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 then
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,0,20))
																if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																	if Monster.Humanoid.Health > 0 then
																		PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.CFrame
																		game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
																		wait(.5)
																		game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
																		wait(.2)
																	end
																end
															else
																TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,50,0))
															end
														end
													elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dough-Dough' then
														EquipWeapon(Fruit_V)
														game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = Monster.HumanoidRootPart.Position
														if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															wait(1)
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																if Monster.Humanoid.Health > 0 then
																	PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.CFrame
																	game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
																	wait(1)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
																	wait(2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
																	wait(.2)
																end
															end
														else
															wait(.2)
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,50,0))
														end
													elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Dark-Dark' then
														EquipWeapon(Fruit_V)
														game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = Monster.HumanoidRootPart.Position
														if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
																	wait(2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,2,15))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	wait(.2)
																end
															end
														else
															wait(.2)
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,50,0))
														end
													elseif game.Players.LocalPlayer.Data.DevilFruit.Value == 'Sand-Sand' then
														EquipWeapon(Fruit_V)
														game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = Monster.HumanoidRootPart.Position
														if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,2,20))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	wait(.5)
																	game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	wait(.2)
																end
															end
														else
															wait(.2)
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,50,0))
														end
													else
														EquipWeapon(Fruit_V)
														game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = Monster.HumanoidRootPart.Position
														if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].Z.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].X.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
																	wait(.2)
																end
															end
														elseif game.Players.LocalPlayer.Data.DevilFruit.Value ~= 'Portal-Portal' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].C.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
																	wait(.2)
																end
															end
														elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and tostring(game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Title.TextColor) == 'Institutional white' and game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game.Players.LocalPlayer.Data.DevilFruit.Value].V.Cooldown.AbsoluteSize.X == 0 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															if (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
																PositionSkillMasteryDevilFruit = Monster.HumanoidRootPart.Position
																if Monster.Humanoid.Health > 0 then
																	game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																	wait(.2)
																	game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
																	wait(.2)
																end
															end
														else
															wait(.2)
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,50,0))
														end
													end
												elseif percent > MinHealth then
													if game.Players.LocalPlayer.Data.DevilFruit.Value == 'Buddha-Buddha' then
														if game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y >= 4 then
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,0,30))
															EquipWeapon(Weapon)
															AttackNoCD()
															wait(.2)
														else
															TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
															EquipWeapon(Weapon)
															AttackNoCD()
															wait(.2)
														end
													else
														TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
														EquipWeapon(Weapon)
														AttackNoCD()
														wait(.2)
													end
												end
											until not Monster.Parent or Monster.Humanoid.Health <= 0
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(xp)
											end
										end
									end
									Start_Farm_Mastery_Fruit = false
								end)
							elseif Start_Farm_Mastery_Gun and Weapon_Gun ~= nil then
								Set_Status_X(' Status : Farm Mastery Gun')
								Start_Farm_Gun = true
								xp = CFrame.new(386.14862060546875, 24.793800354003906, -12579.6962890625)
								if Three_World then
									xp = CFrame.new(386.14862060546875, 24.793800354003906, -12579.6962890625)
								elseif New_World then
									xp = CFrame.new(-3212.99683, 263.809296, -10551.8799)
								elseif Old_World then
									xp = CFrame.new(5782.90186, 94.5326462, 4716.78174)
								end	
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude >= 2000 then
									repeat wait(.2)
										TPX(xp)
									until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude <= 3
								elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude < 2000 then
									Monster = nil
									for i=1500,0,-300 do
										GetMonster(i)
									end
									if Monster ~= nil and Monster.Humanoid.Health > 0 then
										PosMon_X = Monster.HumanoidRootPart.CFrame
										StatrMagnet = true
										load_time = 0
										repeat wait()
											local MinHealth = 20
											local health = Monster.Humanoid.Health
											local maxhealth = Monster.Humanoid.MaxHealth
											local percent = (health / maxhealth) * 100
											if percent <= MinHealth then
												EquipWeapon(Weapon_Gun)
												if Weapon_Gun == 'Soul Guitar' then
													TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,-10,0))
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												elseif Weapon_Gun ~= nil then
													TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													if load_time >= 6 then
														load_time = 0
													end
													if load_time == 0 then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													if game:GetService("Players").LocalPlayer.Character:FindFirstChild(Weapon_Gun) then
														local args = {
															[1] = Monster.HumanoidRootPart.Position,
															[2] = Monster.HumanoidRootPart
														}
														game:GetService("Players").LocalPlayer.Character[Weapon_Gun].RemoteFunctionShoot:InvokeServer(unpack(args))
													end
													load_time = load_time+1
												end
											elseif percent > MinHealth then
												TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
												AttackNoCD()
												wait(.2)
											end
										until not Monster.Parent or Monster.Humanoid.Health <= 0 or not Start_Farm_Mastery_Gun or not Auto_Farm_Kaitun or Weapon_Gun == nil
										StatrMagnet = false
									elseif Monster == nil then
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster == nil then
											TPX(xp)
										end
									end
								end
							elseif Farm_Cake then
								Set_Status_X(' Status : Farm Cake Prince')
								pcall(function()
									Start_Farm_Cake = true 
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude >= 2000 then
										repeat wait()
											TPX(CFrame.new(-2286.684326171875, 146.5656280517578, -12226.8818359375))
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude <= 3
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-2286.684326171875, 146.5656280517578, -12226.8818359375)).Magnitude < 2000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait()
												TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
												EquipWeapon(Weapon)
											until not Monster.Parent or Monster.Humanoid.Health <= 0 or not Auto_Farm_Kaitun
											StatrMagnet = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(xp)
											end
										end
										local Lp = tostring(string.match(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")), "%d+"))
										if Lp == 'nil' or Lp == nil then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
											Cake_Prince_S:Set(' Cake Prince : Boss Spawn')
										else
											Cake_Prince_S:Set(' Cake Prince : '..Lp)
										end
									end
									Start_Farm_Cake = false
								end)
							elseif Farm_Mastery then
								Set_Status_X(' Status : Farm Mastery')
								pcall(function()
									Start_Farm_Mastery = true 
									xp = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
									if Three_World then
										xp = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
									elseif New_World then
										xp = CFrame.new(-3212.99683, 263.809296, -10551.8799)
									elseif Old_World then
										xp = CFrame.new(5782.90186, 94.5326462, 4716.78174)
									end	
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude >= 2000 then
										repeat wait()
											TPX(xp)
										until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude <= 3 or not Auto_Farm_Kaitun
									elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-xp.Position).Magnitude < 2000 then
										Monster = nil
										for i=1500,0,-300 do
											GetMonster(i)
										end 
										if Monster ~= nil and Monster.Humanoid.Health > 0 then
											Flip = nil
											StatrMagnet = false
											spawn(function()
												local nub_time = 0
												local loadst = {
													[1] = Monster.Humanoid.Health
												}
												repeat wait(.1)
													if Monster:FindFirstChild('HumanoidRootPart') and (Monster.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 25 then
														nub_time = nub_time + 1
													end
												until nub_time >= 20 and Monster.Humanoid.Health == loadst[1] or Flip == false
												Flip = true
												Monster.Humanoid.Health = 0
											end)
											PosMon_X = Monster.HumanoidRootPart.CFrame
											StatrMagnet = true
											repeat wait(.1)
												if Monster:FindFirstChild('HumanoidRootPart') then
													TPX(Monster.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
													EquipWeapon(Weapon)
												end
											until not Monster.Parent or Monster.Humanoid.Health <= 0 or not Auto_Farm_Kaitun or Flip
											StatrMagnet = false
											Flip = false
										elseif Monster == nil then
											for i=1500,0,-300 do
												GetMonster(i)
											end
											if Monster == nil then
												TPX(xp)
											end
										end
									end
									Start_Farm_Mastery = false
								end)
							else
								Set_Status_X(' Status : Farm Level')
								if Old_World then
									if game.Players.LocalPlayer.Data.Level.Value < 300 then
										Fast_Down = true
									else
										Fast_Down = false
									end
								end
								FarmLevel()
							end
						end
					end
				else
					Set_Status_X(' Status : Off')
				end
			end)
		end
	end)
	spawn(function()
		while wait(5) do
			if not Sky_Load and Three_World then
				if game:GetService("Lighting").Sky:FindFirstChild('MoonTextureId') then
					if not Quest_Dough_Awaken or not Hallow_Scryte_H or not Dragon_Talon_Q then
						Sky_Load = true
						Check_Time_Reaper = true
					end
				end
			elseif Sky_Load and Three_World then
				repeat wait(3)
				until not game:GetService("Lighting").Sky:FindFirstChild('MoonTextureId') and not Check_Time_Reaper
				Sky_Load = false
			end
		end
	end)
	for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
		if v.HiddenName == 'Pure Red' and v.Unlocked == true then
			Pure_Red_H = true
			--Pure_Red_S:Set(' 🔴 Haki Pure Red : ✅')
		elseif v.HiddenName == 'Snow White' and v.Unlocked == true then
			Snow_White = true
			--Snow_White_S:Set(' ⚪ Haki Snow White : ✅')
		elseif v.HiddenName == 'Winter Sky' and v.Unlocked == true then
			Winter_Sky = true
			--Winter_Sky_S:Set(' ⭕ Haki Winter Sky : ✅')
		
		end
	end
	list_saket = {}
	spawn(function()
		while wait(2) do
			if Three_World then
				pcall(function()
					local Pull_Color = false
					for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
						if v.HiddenName == 'Pure Red' and v.Unlocked == true then
							Pull_Color = true
							Pure_Red_H = true 
						elseif v.HiddenName == 'Snow White' and v.Unlocked == true then
							Pull_Color = true
							Snow_White = true
						elseif v.HiddenName == 'Winter Sky' and v.Unlocked == true then
							Pull_Color = true
							Winter_Sky = true
						end
					end
					if Pull_Color then
						for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
							if v.Name == 'Part' and tostring(v.BrickColor) == 'Oyster' and tostring(v.Part.BrickColor) == 'Lime green' then
								Oyster_H = true
							end
						end
						for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
							if v.Name == 'Part' and tostring(v.BrickColor) == 'Hot pink' and tostring(v.Part.BrickColor) == 'Lime green' then
								Hot_pink_H = true
							end
						end
						for i,v in pairs(game.workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
							if v.Name == 'Part' and tostring(v.BrickColor) == 'Really red' and tostring(v.Part.BrickColor) == 'Lime green' then
								Really_red_H = true
							end
						end
						local start_Color = false
						if not Oyster_H and Snow_White then
							start_Color = true
						elseif not Hot_pink_H and Winter_Sky then
							start_Color = true
						elseif not Really_red_H and Pure_Red_H then
							start_Color = true
						end
						if start_Color then
							List.HakiJump = true
						end
					end
					wait(100)
				end)
			end
		end
	end)
	spawn(function()
		while wait(.3) do
			pcall(function()
				if Three_World and getgenv().Faster['CDK Super Fast'] then
					wait(2)
					if check_color < 3 and game.Players.LocalPlayer.Data.Fragments.Value >= 7500 then
						check_color = 0
						for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getColors")) do
							if v.HiddenName == 'Pure Red' and v.Unlocked == true then
								Pure_Red_H = true
								Pure_Red_S:Set(' 🔴 Haki Pure Red : ✅')
							elseif v.HiddenName == 'Snow White' and v.Unlocked == true then
								Snow_White = true
								Snow_White_S:Set(' ⚪ Haki Snow White : ✅')
							elseif v.HiddenName == 'Winter Sky' and v.Unlocked == true then
								Winter_Sky = true
								Winter_Sky_S:Set(' ⭕ Haki Winter Sky : ✅')
							end
						end
						if Pure_Red_H then
							check_color = check_color + 1
						end
						if Snow_White then
							check_color = check_color + 1
						end
						if Winter_Sky then
							check_color = check_color + 1
						end
					else
						Check_Raid = true
					end
					wait(60)
				else
					wait(5)
				end
			end)
		end
	end)



	-- Webhook
	function SendFullMoon(vux)
		local Mystic = nil
		local FullMoon_X = nil
		if MysticIsland_S then
			Mystic = "✅ Mystic Island spawn.🌴"  
		else
			Mystic = "❌ Mystic Island not spawn .. "
		end
	
		if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
			FullMoon_X = tostring("5/5".." | ".."Full Moon 🌕 | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
			FullMoon_X = tostring("4/5".." | ".."75% | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
			FullMoon_X = tostring("3/5".." | ".."50% | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
			FullMoon_X = tostring("2/5".." | ".."25% | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
			FullMoon_X = tostring("1/5".." | ".."15% | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		else
			FullMoon_X = tostring("0/5".." | ".."0% | ". .. tostring(game:GetService("Lighting").TimeOfDay))
		end
		local get_player_x = {}
		for i,v in pairs(game.Players:GetChildren()) do
			if not table.find(get_player_x,v.Name) then
				table.insert(get_player_x,v.Name)
			end
		end
		local url = vux
		local data = {
			["embeds"] = {
				{
					["color"] = tonumber(0xffffff);
					["fields"] = {
						{
							["name"] = "Server Id";
							["value"] = "```yaml\n". .. tostring(game.JobId).."\n```";
							["inline"] = false;
						}, {
							["name"] = "Full Moon";
							["value"] = "```yaml\n"..FullMoon_X.."\n```";
							["inline"] = true};
						{
							["name"] = "Player";
							["value"] = "```yaml\n". .. tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
							["inline"] = true;
						},
						{
							["name"] = "Mirage Island";
							["value"] = "```yaml\n". .. tostring(Mystic).."\n```";
							["inline"] = false;
						}
					};
					["description"] = "**Join Script**\n```lua\n". .. tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
					["author"] = {
						["name"] = "Switch Hub (Notification)";
						["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
					};
					["thumbnail"] = {
						["url"] = "https://pbs.twimg.com/media/FDsZOHhVkAUsFeJ.jpg";
					};
					["footer"] = {
						["text"] = "By Switch Hub";
						["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
	
		local headers = {
			["content-type"] = "application/json"
		}
		local request = http_request or request or HttpPost 
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
	function SendBoss(vux,bossname)
		local get_player_x = {}
		for i,v in pairs(game.Players:GetChildren()) do
			if not table.find(get_player_x,v.Name) then
				table.insert(get_player_x,v.Name)
			end
		end
		local health_x = 100
		for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.Name == bossname then
				local health = v.Humanoid.Health
				local maxhealth = v.Humanoid.MaxHealth
				local percent = (health / maxhealth) * 100
				health_x = percent
			end
		end
		local xpt = bossname.." | ". .. tostring(game:GetService("Lighting").TimeOfDay)..' | '..health_x.."%"
		local url = vux
		local data = {
			["embeds"] = {
				{
					["color"] = tonumber(0xffffff);
					["fields"] = {
						{
							["name"] = "Server Id";
							["value"] = "```yaml\n". .. tostring(game.JobId).."\n```";
							["inline"] = false;
						}, {
							["name"] = "Boss";
							["value"] = "```yaml\n"..xpt.."\n```";
							["inline"] = true};
						{
							["name"] = "Player";
							["value"] = "```yaml\n". .. tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
							["inline"] = true;
						}
					};
					["description"] = "**Join Script**\n```lua\n". .. tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
					["author"] = {
						["name"] = "Switch Hub (Notification)";
						["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
					};
					["thumbnail"] = {
						["url"] = "https://pbs.twimg.com/media/FDsZOHhVkAUsFeJ.jpg";
					};
					["footer"] = {
						["text"] = "By Switch Hub";
						["icon_url"] = "https://media.discordapp.net/attachments/1167889685411016756/1215942962467573860/SW.jpg?ex=65fe9621&is=65ec2121&hm=12d96eeae682639bd3987b5163ac2d2245d3fe09ad6d90a3a06e2a5fc5d98d90&=&format=webp&width=662&height=662";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
	
		local headers = {
			["content-type"] = "application/json"
		}
		local request = http_request or request or HttpPost 
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
	if _G.Keep_Job == nil then
		_G.Keep_Job = {}
	end
	if _G.Keep_JobX == nil then
		_G.Keep_JobX = {}
	end
	if Three_World then
		spawn(function()
			while wait(1) do
				pcall(function()
					if Three_World then
						MysticIsland_S = false
						if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
							MysticIsland_S = true
						end
						FullMoon_S = false
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and #game.Players:GetChildren() <= 7 then
							FullMoon_S = true
						end
						if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') or game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
							if #game.Players:GetChildren() <= 9 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
								table.insert(_G.Keep_JobX,tostring(game.JobId))
								SendBoss('https://discord.com/api/webhooks/1221652773091807264/N-tNF6oN_ISWQIkcaveueLDDPUz8erLg0gkga7n2fH1L0GD8FdfdUGs9kDgv_H2eR2Rx','rip_indra True Form')
							end
						end
						if #game.Players:GetChildren() <= 3 then
							SendFullMoon('https://discord.com/api/webhooks/1221652705513046087/4ur0toVQ-hLOk1ceKZpDql2PBKoCrBGETwy4doN9-a4PfuExB5juZ9zaHxYvTzndiAGS')
						end
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" and #game.Players:GetChildren() <= 9 then
							local result = {}
							local x = tostring(game:GetService("Lighting").TimeOfDay)
							local regex = ("([^%s]+)"):format(":")
							for each in x:gmatch(regex) do
								table.insert(result, each)
							end
							if tonumber(result[1]) >= 0 and tonumber(result[1]) < 12 then
								SendFullMoon('https://discord.com/api/webhooks/1221652726337896559/Oh6DerE386fvwmsezJC6g61N9eeEAt5DX0VP6DH6OZn61PE-to82F6lIJoedksEChVpL')
							end
						end
						if FullMoon_S and MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1215929211055771708/clo4RKpsZATTpTh1z2QxaZm26SpwcpGanx_Rri7WPvQfrpuXZkGMldMDqHJwDutYFGEQ')
							return
						elseif FullMoon_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1215929162569617418/eOsglix-5u-gtUDn8wT_BclQuXSflRCT2E3qL9wlJx6eI3umzO2TXCVezCWBwydh-uYR')
							return
						elseif MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1215929078532542535/7ykd5BrmfvV7ewPwZ1rXilB-5u1qOMKBPr8P2eKXpzmGnejQ7hji13V4Et7eV64tACun')
							return
						end	
						wait(10)
					end
				end)
			end
		end)
	elseif New_World then
		spawn(function()
			while wait(1) do
				pcall(function()
					if game.Workspace.Enemies:FindFirstChild('Cursed Captain') or game.ReplicatedStorage:FindFirstChild('Cursed Captain') then
						if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
							table.insert(_G.Keep_JobX,tostring(game.JobId))
							SendBoss('https://discord.com/api/webhooks/1221652750186713211/lx8EsPYmqEeswOLC0Mc6B6XkyDd9npXQ7Jq45PFeVjEaNMEWsqSSqwfh3qe5UJINPFhC','Cursed Captain')
						end
					end
					if game.Workspace.Enemies:FindFirstChild('Darkbeard') or game.ReplicatedStorage:FindFirstChild('Darkbeard') then
						if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
							table.insert(_G.Keep_JobX,tostring(game.JobId))
							SendBoss('https://discord.com/api/webhooks/1221652796277915751/PoTljiAd5tS62T0QiKLogngm2uieZTdo1RtHzJXDEsA7aETLBvHBKNPfSNEVw1xYsKG-','Darkbeard')
						end
					end
				end)
			end
		end)
	end

end
