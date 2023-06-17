--Load Information
_G.SupportedGamesFWR = {"Build A Boat For Treasure","Tapping Simulator","Survive The Killers Of Area 51","Break In Story","Speed Run Simulator","Get Crushed By A Speeding Wall","Prison Life","Ninja Legends","Natural Disaster Survival","UnableToLoad","UnableToLoad","UnableToLoad","UnableToLoad","UnableToLoad","UnableToLoad",}
getgenv().JobID = game:GetService("RbxAnalyticsService"):GetClientId()
getgenv().DisplayName = game.Players.LocalPlayer.Character.Humanoid.DisplayName
getgenv().FWRVersion = "Falcon-ware Beta"


--Functions
function BypassValue(NameOfValue, ReturnValue) 
    local mt = getrawmetatable(game)
setreadonly(mt, false)
local old_index = mt.__index

mt.__index = function(a,b)
 if tostring(a) == NameOfValue then
	 if tostring(b) == "Value" then
		 return ReturnValue
	 end
 end
 return old_index(a,b)
end
end

function PlayAnim(AnimText)
  local blur = Instance.new("BlurEffect")
local Intro = Instance.new("ScreenGui")
local Header = Instance.new("TextLabel")
local SubHeader = Instance.new("TextLabel")

blur.Parent = game.Lighting
blur.Size = 0

Intro.Name = "Intro"
Intro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Intro.ResetOnSpawn = false

Header.Name = "Header"
Header.Parent = Intro
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BackgroundColor3 = Color3.new(1, 1, 1)
Header.BackgroundTransparency = 1
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0.5, 0, 0.5, 0)
Header.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
Header.Font = Enum.Font.SourceSansBold
Header.Text = AnimText
Header.TextColor3 = Color3.new(1, 1, 1)
Header.TextScaled = true
Header.TextSize = 25
Header.TextTransparency = 1
Header.TextWrapped = true



for i = 0,20 do
  wait()
  blur.Size = i
end
for i = 10,1,-1 do
  Header.TextTransparency = i/10
  SubHeader.TextTransparency = i/10
  wait()
end

wait(0.25)

for i = 0,10 do
  Header.TextTransparency = i/10
  SubHeader.TextTransparency = i/10
  wait()
end
for i = 20,1,-1 do
  wait()
  blur.Size = i
end
end

function MorphHeadless()
  local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end




--Tapping Sim
function forest()


    local ohCFrame1 = CFrame.new(-163.984467, 987.596497, -403.339417, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end

function flower()
    
    local ohCFrame1 = CFrame.new(-179.51564, 1524.63098, -682.498718, -1, 0, -0, -0, 1, -0, -0, 0, -1)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function swamp()
    
    local ohCFrame1 = CFrame.new(-264.358887, 2123.06299, -694.661316, -1, 0, -0, -0, 1, -0, -0, 0, -1)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function snow()
    
    local ohCFrame1 = CFrame.new(-201.771973, 2944.48169, -470.408752, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function desert()
    
    local ohCFrame1 = CFrame.new(-166.285156, 4235.38916, -779.153137, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function death()
    
    local ohCFrame1 = CFrame.new(-276.201263, 5425.62158, -480.287781, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function beach()
    
    local ohCFrame1 = CFrame.new(-140.345093, 6881.63086, -495.682129, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function mines()
    
    local ohCFrame1 = CFrame.new(-243.258667, 8376.5166, -483.889771, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
    end
function cloud()
    
    local ohCFrame1 = CFrame.new(-253.303482, 11262.8818, -237.888596, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function coral()
    
    local ohCFrame1 = CFrame.new(-511.021118, 13812.0322, -543.241821, 0, 0, -1, 0, 1, -0, 1, 0, -0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
function darkmatter()
    local ohCFrame1 = CFrame.new(-408.69751, 17180.1387, -552.046448, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    
    game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohCFrame1)
end
    
--end Of Tapping Sim
--Variable functions

--Get Responce from exploit function
local function GetResponse()
  local exploit = identifyexecutor()
  if exploit == "Evon" then
    return "The fuck you using Evon, It's fucking ass."
  end
  if exploit == "Krnl" then
    return "Nice exploit, Krnl is lovely.."
  end
end

local function GetLicense() 
  local JobId = game:GetService("RbxAnalyticsService"):GetClientId()
  local DevList = loadstring(game:HttpGet('replace'))()
  local PremList = loadstring(game:HttpGet('replace'))()
  getgenv().DevIndex = 'string'
  getgenv().ProIndex = 'string'
  for __,v in ipairs(DevList) do
    getgenv().DevIndex = v
  end
  for __,v in ipairs(PremList) do
    getgenv().PremIndex = v
  end

  if  JobId == getgenv().DevIndex then
    return 'Developer 🛠️'
  end
  if JobId == getgenv().PremIndex then
    return 'Premium 👑'
  end
  if JobId ~= getgenv().PremIndex or getgenv().DevIndex then
    return 'Normal'
  end


end

local function GetStatusInfo(StatType)
  local APIStat = loadstring(game:HttpGet('replace'))()
  if StatType == "API" then
    for __,v in ipairs(APIStat) do
      return v
    end
  end
  
end

function SendResponceFromStatus()
  local ErrorNum = math.random(100,999)
  local ErrorResp = ErrorNum.." -  Service Key Invalid, Your request to Execute was declined due to .html returning nil."
  if GetStatusInfo("API") == "Not Working" then
    
  end
end



local function CheckWhitelist() 
  if GetLicense() == "Developer" then
    return false
  end
  if GetLicense() == "Premium" then
    return false
  end
  if GetLicense() == "Normal" then
    return true
  end
end

print('Passed before defining Build')

function Build()
    print('Loaded Build')
    
local HumLight = Instance.new("PointLight", game.Players.LocalPlayer.Character.HumanoidRootPart)
HumLight.Name = "FalconLight"
HumLight.Brightness = 0

  local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
  print('Loaded Lib')
  local Window = Rayfield:CreateWindow({
    Name = getgenv().FWRVersion,
    LoadingTitle = "Falcon Software",
    LoadingSubtitle = "Break robloxian laws with ease.",
    ConfigurationSaving = {
      Enabled = true,
      FileName = "Falcon Software"
    },
    
    KeySystem = CheckWhitelist(), 
    KeySettings = {
      Title = getgenv().FWRVersion,
      Subtitle = "Falconware's Key System. 🔑",
      Note = "Join for the key! (discord.gg/efGAV7bGKx)",
      Key = getgenv().Hlm7Oczz
    }
  })
  print('Loaded Window')
  function Notify(title,desc,ButtonName)
    if ButtonName == nil then
      return 'Ok'
    end
    Rayfield:Notify({
      Title = title,
      Content = desc,
      Duration = 6.5,
      Image = 4483362458,
      Actions = {
          Ignore = {
              Name = ButtonName,
              Callback = function()
                  
              end
      },
    },
    })
  end
  print('Func Notify')
  
    local RandomFacts = {"Maids should cope, It's their job.", "Dogs are loyal - Andrew Tate", "You might be drinking water that is older than the solar system.","Too much water can kill you.","Stop signs used to be yellow.","The majority of your brain is fat.","'Omg' usage can be traced back to 1917."}
    local HomeTB = Window:CreateTab("Home")
    local FactAmount = 7
    local HomeSC = HomeTB:CreateSection("Home")
    local WelcomeLBL = HomeTB:CreateLabel("Welcome to ".."Falcon Software"..", "..getgenv().DisplayName..".")
    local RandomFactLBL = HomeTB:CreateLabel("Random Facts : "..RandomFacts[math.random(1,FactAmount)])
    local RefreshFact = HomeTB:CreateButton({
      Name = "Refresh Fact",
      Callback = function()
        RandomFactLBL:Set("Random Facts : "..RandomFacts[math.random(1,FactAmount)])
        Notify("Falcon-ware", "Fact refreshed!", "Ok")
      end,
    })
    HomeTB:CreateLabel("Falcon License : "..GetLicense())
    HomeTB:CreateLabel("By Zyllus")
    local DiscordPGH = HomeTB:CreateParagraph({Title = "Discord", Content = "We'd love you to join our discord! It could help our community grow! You can also recieve any type of help or support from our discord server! Submit your feedback, Suggest features, Report bugs and more! We'd really appreciate your in our community. (discord.gg/efGAV7bGKx)"})
    local InfoPGH = HomeTB:CreateParagraph({Title = "Information", Content = "Display Name = "..getgenv().DisplayName..", \nUsername = ".."@"..game.Players.LocalPlayer.Name..", \nExecutor = "..identifyexecutor()})
    local ClientsPGH HomeTB:CreateParagraph({Title = "Supported Executors", Content = "• Krnl, \n•Synapse (X), \n•Script-ware, \n•Abyss (Not released yet), \n•Abyss MacOS"})
print('Home Tab')
    if game.PlaceId == 537413528 then
        local BABTB = Window:CreateTab("Boat")
        BABTB:CreateSection("Win")
        getgenv().AutoWinBAB = 'string'
        getgenv().RemoveWaterDMG = 'string'

        local AutoWinBABTG = BABTB:CreateToggle({
          Name = "Auto Win",
          CurrentValue = false,
          Flag = "AutoWinBAB", 
          Callback = function(Value)
            getgenv().AutoWinBAB = Value
          end,
        })
        local RemoveWaterDMGTG = BABTB:CreateToggle({
          Name = "Remove Water Damage",
          CurrentValue = false,
          Flag = "RemoveWaterDamageBAB", 
          Callback = function(Value)
            getgenv().RemoveWaterDamageBAB = Value
          end,
        })
        BABTB:CreateSection("Tools")
        getgenv().ToolSelectedBAB = 'string'
        print('yes')
        local ToolsBABDPD = BABTB:CreateDropdown({
          Name = "Select a Tool",
          Options = {"Scale Tool", "Trowel Tool", "Binding Tool", "Painting Tool", "Property Tool"},
          CurrentOption = "Scale Tool",
          Flag = "SelectToolDPD",
          Callback = function(Option)
               getgenv().ToolSelectedBAB = Option
          end,
        })
        print('yes')
        local GrabToolBABBTN = BABTB:CreateButton({
          Name = "Get Tool",
          Callback = function()
            local scaletool = game:GetService("ReplicatedStorage").BuildingParts.ScalingTool
            local troweltool = game:GetService("ReplicatedStorage").BuildingParts.TrowelTool
            local bindingtool = game:GetService("ReplicatedStorage").BuildingParts.BindTool
            local paintingtool = game:GetService("ReplicatedStorage").BuildingParts.PaintingTool
            local propertytool = game:GetService("ReplicatedStorage").BuildingParts.PropertiesTool
            local BackPack = game.Players.LocalPlayer.Backpack

            local sclone = scaletool:Clone()
            local ttool = troweltool:Clone()
            local btool = bindingtool:Clone()
            local ptool = paintingtool:Clone()
            local pptool = propertytool:Clone()

            if getgenv().ToolSelectedBAB == 'Scale Tool' then
                sclone.Parent = BackPack
            end
            if getgenv().ToolSelectedBAB == 'Trowel Tool' then
                ttool.Parent = BackPack
            end
            if getgenv().ToolSelectedBAB == 'Binding Tool' then
                btool.Parent = BackPack
            end
            if getgenv().ToolSelectedBAB == 'Painting Tool' then
                ptool.Parent = BackPack
            end
            if getgenv().ToolSelectedBAB == 'Property Tool' then
                pptool.Parent = BackPack
            end
            
          end
        })
        BABTB:CreateSection("Chests")

        getgenv().SelectedChestBAB = 'string'
          getgenv().AutoChestBAB = 'string'
          
          local ChestBABDPD = BABTB:CreateDropdown({
            Name = "Select a Chest",
            Options = {"Common Chest","Uncommon Chest", "Rare Chest", "Epic Chest", "Legendary Chest"},
            CurrentOption = "",
            Flag = "SelectChestBABDPD",
            Callback = function(Option)
              getgenv().SelectedChestBAB = Option
            end
          })
          local AutoBuyChestBABTG = BABTB:CreateToggle({
            Name = "Auto Purchase Chest",
            CurrentValue = false,
            Flag = "AutoBuyChestBABDPD", 
            Callback = function(Value)
              getgenv().AutoChestBAB = Value
            end
          })
    end

    if game.PlaceId == 9498006165 then
      getgenv().AutoTapTS = 'string'
      getgenv().selectedEggTS = 'string'
      getgenv().AutoHatchTS = 'string'
      local TapTB = Window:CreateTab("Tap")
      TapTB:CreateSection("Taps")
      local AutoTapTG = TapTB:CreateToggle({
        Name = "Auto Tap",
        CurrentValue = false,
        Flag = "AutoTapTGTS", 
        Callback = function(Value)
          getgenv().AutoTapTS = Value
        end,
      })
      TapTB:CreateSection("Eggs")
      local EggTable = {"Starter","Wood Egg", "Jungle Egg", "Forest Egg", "Bee Egg", "Swamp Egg", "Snow Egg", "Desert Egg", "Death Egg", "Beach Egg", "Mine Egg", "Cloud Egg", "Coral Egg", "Dark Egg"}
      local EggDPDTS = TapTB:CreateDropdown({
        Name = "Select An Egg",
        Options = EggTable,
        CurrentOption = "Starter",
        Flag = "EggsDPDTS",
        Callback = function(Option)
              getgenv().selectedEggTS = Option
        end,
      })
      local AutoHatchTG = TapTB:CreateToggle({
        Name = "Auto Hatch",
        CurrentValue = false,
        Flag = "AutoHatchTG", 
        Callback = function(Value)
          getgenv().AutoHatchTS = Value
        end,
      })
      TapTB:CreateSection("Islands")
      getgenv().selectedIsland = 'string'
      local IsleTable = {"Forest", "Flower", "Swamp", "Snow", "Desert", "Death", "Beach", "Mines", "Clouds", "Coral", "Dark Matter"}
      local IslandDPD = TapTB:CreateDropdown({
        Name = "Islands",
        Options = IsleTable,
        CurrentOption = "",
        Flag = "IsleDPDTS", 
        Callback = function(Option)
          getgenv().selectedIsland = Option
        end,
      })
      local TeleportBTN = TapTB:CreateButton({
        Name = "Teleport",
        Callback = function()
          if getgenv().selectedIsland == "Forest" then
            forest()
        end
        if getgenv().selectedIsland == "Flower" then
            flower()
        end
        if getgenv().selectedIsland == "Swamp" then
            swamp()
        end
        if getgenv().selectedIsland == "Snow" then
            snow()
        end
        if getgenv().selectedIsland == "Desert" then
            desert()
        end
        if getgenv().selectedIsland == "Death" then
            death()
        end
        if getgenv().selectedIsland == "Beach" then
            beach()
        end
        if getgenv().selectedIsland == "Mines" then
            mines()
        end
        if getgenv().selectedIsland == "Clouds" then
            cloud()
        end
        if getgenv().selectedIsland == "Coral" then
            coral()
        end
        if getgenv().selectedIsland == "Dark Matter" then
            darkmatter()
        end
        Notify("Falconware","Teleported","Ok")
        end,
      })



    end

    if game.PlaceId == 2092166489 then
      local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
      function GetGun(gunName)
        game.Workspace.Weapons[gunName].Hitbox.CFrame = pl.CFrame
      end
      function GetAllGuns()
        for __,v in ipairs(game:GetService("Workspace").Weapons:GetChildren()) do
            v.Hitbox.CFrame = pl.CFrame
        end
      end

      local SurviveTB = Window:CreateTab("Survive")
      getgenv().SelectedGunSRV51 = 'string'
      SurviveTB:CreateSection("Guns")
      local GunTable = {"AWP", "M1014", "M14", "Desert Eagle", "M4A1", "R870", "RayGun", "MP5k", "AK-47", "DB Shotgun", "AN-94", "G36C", "M16A2/M203", "P90", "SVD"}
      local GunsDPD = SurviveTB:CreateDropdown({
        Name = "Select Gun",
        Options = GunTable,
        CurrentOption = "",
        Flag = "SRVVDPD51", 
        Callback = function(Option)
              getgenv().SelectedGunSRV51 = Option
        end,
      })
      local GetGunBTN = SurviveTB:CreateButton({
        Name = "Get Gun",
        Callback = function()
          GetGun(getgenv().SelectedGunSRV51)
          Notify("Falconware", "Grabbed Gun!","Ok")
        end,
      })
      local GetAllGunBTN = SurviveTB:CreateButton({
        Name = "Get All Guns",
        Callback = function()
          GetAllGuns()
          Notify("Falconware", "Grabbed all guns","Ok")
        end,
      })

    end
    if game.PlaceId == 4620170611 then
      if game:GetService("Workspace").CodeNote.SurfaceGui.TextLabel.Text then
        getgenv().SafeCodeBIS = game:GetService("Workspace").CodeNote.SurfaceGui.TextLabel.Text
      end
      

        function getItem(item)
            local ItemName = item
            
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ItemName)
        end
      local BreakTB = Window:CreateTab("Break In")
      BreakTB:CreateSection("Main")
      local InfEnergyTB = BreakTB:CreateButton({
        Name = "Infinite Energy",
        Callback = function()
          game:GetService("ReplicatedStorage").RemoteEvents.Cattery:FireServer()
          for i = 1,200,1 do
                       
            local ohString1 = "Cat"
            
            game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(ohString1)
          end
          Notify("Falconware","Applied Infinite Energy.","Ok")

        end,
      })
      local GetMK = BreakTB:CreateButton({
        Name = "Get Medkit",
        Callback = function()
          getItem("MedKit")
          Notify("Falconware", "Got Medkit","Ok")
        end,
      })
      local HealEveryn = BreakTB:CreateButton({
        Name = "Heal All Players",
        Callback = function()
          local args = {
            [1] = "Equip",
            [2] = game:GetService("Players").LocalPlayer.Character.MedKit
        }
        
        game:GetService("ReplicatedStorage").RemoteEvents.BackpackEvent:FireServer(unpack(args))
          for i,v in ipairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
              local ohInstance1 = game:GetService("Players")[v.Name]
            
            game:GetService("ReplicatedStorage").RemoteEvents.HealPlayer:FireServer(ohInstance1)
            end
          end
          Notify("Falconware","Healed Everyone.","Ok")

        end,
      })
      local Unlockattic = BreakTB:CreateButton({
        Name = "Unlock Attic",
        Callback = function()
          local ohNumber1 = 1

        game:GetService("ReplicatedStorage").RemoteEvents.Ladder:FireServer(ohNumber1)
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.3247604, 18.9970512, -225.763229, 0.999568164, 9.8660152e-08, 0.0293854866, -9.8546721e-08, 1, -5.30829025e-09, -0.0293854866, 2.41015452e-09, 0.999568164)
          Notify("Falconware", "Unlocked Attic","Ok")
        end,
      })
      local unlockbasement = BreakTB:CreateButton({
        Name = "Unlock Basement",
        Callback = function()
          game:GetService("ReplicatedStorage").RemoteEvents.UnlockDoor:FireServer()
          Notify("Falconware","Unlocked basement", "Ok")
        end,
      })
      local getsafecode = BreakTB:CreateButton({
        Name = "Get Safe Password",
        Callback = function()
          
          Notify("Falconware", "Safe Code : "..getgenv().SafeCodeBIS,"Ok")
        end,
      })

      BreakTB:CreateSection("Get Items")
      getgenv().SelectedItemBIS = 'string'
      local ItemTable = {"Plank", "Pizza2","Apple", "Cookie", "LinkedSword", "Medkit", "Chips", "Pie", "Cure", "ExpiredBloxyCola", "Key", "CarKey", "Lollipop", "Breaker","TeddyBloxpin"}
      local ItemsDPD = BreakTB:CreateDropdown({
        Name = "Select an Item",
        Options = ItemTable,
        CurrentOption = "Plank",
        Flag = "ItemsDPD", 
        Callback = function(Option)
              getgenv().SelectedItemBIS = Option
        end,
      })
      local GetItemBTN = BreakTB:CreateButton({
        Name = "Get Item",
        Callback = function()
          getItem(getgenv().SelectedItemBIS)
          if getgenv().SelectedItemBIS == "Breaker" then

            local args = {
                [1] = true,
                [2] = "Breaker"
            }
            
            game:GetService("ReplicatedStorage").RemoteEvents.BasementWeapon:FireServer(unpack(args))
            Notify("Falconware","Grabbed Item!", "Ok")
          end
          Notify("Falconware","Grabbed Item!", "Ok")
          if getgenv().SelectedItemBIS == "" then
            Notify("Falconware","Please select an item","Ok")
          end
         
        end,
      })
      local DestroyToolBTN = BreakTB:CreateButton({
        Name = "Destroy Item",
        Callback = function()
          game:GetService("Players").LocalPlayer.Character[getgenv().SelectedItemBIS]:Destroy()
        end,
      })
      BreakTB:CreateSection("Teleports")
      getgenv().SelectedAreaBIS = 'string'
      local AreasTable = {"Inside", "Outside", "Living Room", "Dining Room", "Basement", "Sewer", "Boss Area", "Store", "Green Room", "Pink Room", "Blue Room", "Attic", "Ghost Area"}
      local AreasDPD = BreakTB:CreateDropdown({
        Name = "Select an area",
        Options = AreasTable,
        CurrentOption = "Inside",
        Flag = "SelectAreaDPDBIS", 
        Callback = function(Option)
              getgenv().SelectedAreaBIS = Option
        end,
      })
      local TpBTN = BreakTB:CreateButton({
        Name = "Teleport",
        Callback = function()
          local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
                if getgenv().SelectedAreaBIS == "Inside" then 
                    plr.CFrame = CFrame.new(-28.7480183, 2.37329245, -215.719513, -0.999880433, -7.74933806e-09, 0.0154626258, -8.23971114e-09, 1, -3.16497335e-08, -0.0154626258, -3.17733573e-08, -0.999880433) 
                end
                if getgenv().SelectedAreaBIS == "Outside" then 
                    plr.CFrame = CFrame.new(41.1526031, 2.77622914, -160.411102, 1, 3.52412286e-08, -2.62273357e-13, -3.52412286e-08, 1, -8.07591363e-08, 2.59427327e-13, 8.07591363e-08, 1) 
                end
                if getgenv().SelectedAreaBIS == "Basement" then
                     plr.CFrame = CFrame.new(67.0445099, -14.7840767, -163.15976, -0.994209826, -4.12829326e-09, 0.107456297, -4.41012915e-09, 1, -2.38515763e-09, -0.107456297, -2.84524337e-09, -0.994209826)
                end 
                if getgenv().SelectedAreaBIS == "Living Room" then
                    plr.CFrame = CFrame.new(11.469245, 2.37329149, -218.001175, -0.999951899, 8.89662743e-08, 0.00980785117, 8.86216895e-08, 1, -3.55683945e-08, -0.00980785117, -3.46974929e-08, -0.999951899)
               end   
               if getgenv().SelectedAreaBIS == "Dining Room" then
                plr.CFrame = CFrame.new(-59.1772804, 6.55244541, -193.358948, -0.999661922, -5.24206669e-08, -0.0260004997, -5.26680353e-08, 1, 8.82918449e-09, 0.0260004997, 1.01955955e-08, -0.999661922)
           end   
           if getgenv().SelectedAreaBIS == "Store" then
            plr.CFrame = CFrame.new(67.0445099, -14.7840767, -163.15976, -0.994209826, -4.12829326e-09, 0.107456297, -4.41012915e-09, 1, -2.38515763e-09, -0.107456297, -2.84524337e-09, -0.994209826)
           end   
          
           
           if getgenv().SelectedAreaBIS == "Green Room" then
            plr.CFrame = CFrame.new(2.77699971, 18.6970577, -202.315048, -0.112509347, 1.84869045e-08, -0.993650675, 1.51004986e-08, 1, 1.68952319e-08, 0.993650675, -1.31037483e-08, -0.112509347)
           end

           if getgenv().SelectedAreaBIS == "Pink Room" then
            plr.CFrame = CFrame.new(-0.221204177, 18.6970577, -227.25737, -0.0345154591, -1.80415025e-08, -0.999404192, 5.53377824e-08, 1, -1.99634052e-08, 0.999404192, -5.59938584e-08, -0.0345154591)
           end

           if getgenv().SelectedAreaBIS == "Blue Room" then
            plr.CFrame = CFrame.new(-47.6220284, 18.4449692, -213.278, -0.999990582, 5.63136071e-09, 0.00433753571, 6.05239547e-09, 1, 9.70546594e-08, -0.00433753571, 9.70799974e-08, -0.999990582)
           end

           if getgenv().SelectedAreaBIS == "Attic" then
            plr.CFrame = CFrame.new(-20.7054749, 35.3112221, -219.743088, -0.999904215, -6.18776497e-08, 0.0138408514, -6.28084678e-08, 1, -6.68163551e-08, -0.0138408514, -6.76792808e-08, -0.999904215)
           end
           if getgenv().SelectedAreaBIS == "Sewer" then
            plr.CFrame = CFrame.new(265.675903, -251.60173, -1603.02014, -0.99955231, 4.61783556e-10, 0.0299201626, 1.37583789e-09, 1, 3.05291934e-08, -0.0299201626, 3.05566878e-08, -0.99955231)
           end
           if getgenv().SelectedAreaBIS == "Boss Area" then
            plr.CFrame = CFrame.new(-49.6082382, -286.016846, -1502.76392, -0.539254487, -3.70082738e-08, 0.84214288, -1.67025953e-12, 1, 4.39442935e-08, -0.84214288, 2.36957511e-08, -0.539254487)
           end
           if getgenv().SelectedAreaBIS == "Ghost" then
            plr.CFrame = CFrame.new(-26.2499905, -198.643173, 1136.22168, -1, 0, 0, 0, 1, 0, 0, 0, -1)
           end
           Notify("Falconware","Teleported!","Ok")
        end,
      })



    end

    if game.PlaceId == 7047488135 then
      getgenv().AutoAddSpeedSPD = 'string'
      getgenv().AutoCollectOrbsSPD = 'string'
      getgenv().AutoRebirthSPD = 'string'
      local SpeedTB = Window:CreateTab("Speed Run")
      SpeedTB:CreateSection("Auto-farm")
      local AutoAddSpeed = SpeedTB:CreateToggle({
        Name = "Auto Add Speed",
        CurrentValue = false,
        Flag = "AutoAddSpeedSPD",
        Callback = function(Value)
          getgenv().AutoAddSpeedSPD = Value
        end,
      })
      local AutoCollectOrbs = SpeedTB:CreateToggle({
        Name = "Auto Collect Orbs",
        CurrentValue = false,
        Flag = "AutoCollectOrbsSPD",
        Callback = function(Value)
          getgenv().AutoCollectOrbsSPD = Value
        end,
      })
      local AutoRebirth = SpeedTB:CreateToggle({
        Name = "Auto Rebirth",
        CurrentValue = false,
        Flag = "AutoRebithSPD",
        Callback = function(Value)
          getgenv().AutoRebirthSPD = Value
        end,
      })
      SpeedTB:CreateSection("OP")
      local CollectAllOrbs = SpeedTB:CreateButton({
        Name = "Collect All Orbs",
        Callback = function()
          Rayfield:Notify({
            Title = "Falconware",
            Content = "Are you sure you want to collect all orbs, This could crash your game client.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { 
               Accept = {
                  Name = "Yes",
                  Callback = function()
                    for i,v in ipairs(game:GetService("Workspace").OrbSpawns:GetChildren()) do
                      if v.Name ~= 'Ring' then
                          if v.Name ~= 'Part' then
                              v.CanRespawn.Value = true
                                  v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                          end
                      end
                  end
               end
            },
            Decline = {
              Name = "No",
              Callback = function()
              
           end
        },
         },
         })
        end,
     })
     SpeedTB:CreateSection("Misc")
     local StopGameMusic = SpeedTB:CreateToggle({
      Name = "Game Music",
      CurrentValue = game.Workspace['GameMusic'].Playing,
      Flag = "RemoveGameMusicTGSPD",
      Callback = function(Value)
        game.Workspace['GameMusic'].Playing = Value
      end,
    })
      
    end
    if game.PlaceId == 482742811 then
      local WallTB = Window:CreateTab("Wall")
      WallTB:CreateSection("Wall")
      local RemoveWall = WallTB:CreateToggle({
        Name = "Remove Wall",
        CurrentValue = false,
        Flag = "RemoveWallSW", 
        Callback = function(Value)
          if Value == true then
            if  game:GetService("Workspace").Map.Tunnel then
              game:GetService("Workspace").Map.Tunnel.Wall.Parent = game:GetService("ReplicatedStorage")
            end
          end
          if Value == false then
            if game:GetService("ReplicatedStorage").Wall then
            game:GetService("ReplicatedStorage").Wall.Parent = game:GetService("Workspace").Map.Tunnel
            end
          end
        end,
      })

      local TpToEnd = WallTB:CreateButton({
        Name = "Teleport To Finish",
        Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(285.2304382324219, -72.94524383544922, 323.03497314453125)
          Notify("Falconware", "Teleported!", "Ok")
        end,
      })
    end
    
    if game.PlaceId == 155615604 then
      local PrisonTB = Window:CreateTab("Prison Life")
      PrisonTB:CreateSection("Prison")
      getgenv().KillAuraPL = 'string'
      local KillAura = PrisonTB:CreateToggle({
        Name = "Kill Aura",
        CurrentValue = false,
        Flag = "KillAuraPL", 
        Callback = function(Value)
         getgenv().KillAuraPL = Value
        end,
      })

      local NutralTem = PrisonTB:CreateButton({
        Name = "Join Nutreal Team",
        Callback = function()
          workspace.Remote.TeamEvent:FireServer("Medium stone grey")
          Notify("Falcon-ware", "Joined Neutral team.", "Ok")
        end,
      })
    end

    if game.PlaceId == 3956818381 then
      local NinjaTB = Window:CreateTab("Ninja Legends")
      getgenv().AutoSwingNL = 'string'
      getgenv().AutoSellNL = 'string'
      getgenv().AutoBuyBeltsNL = 'string'
      getgenv().AutoBuySwordsNL = 'string'
      NinjaTB:CreateSection("Auto")
      local AutoSwing = NinjaTB:CreateToggle({
        Name = "Auto Swing",
        CurrentValue = false,
        Flag = "AutoSwingNLTG", 
        Callback = function(Value)
         getgenv().AutoSwingNL = Value
        end,
      })
      local AutoSell = NinjaTB:CreateToggle({
        Name = "Auto Sell",
        CurrentValue = false,
        Flag = "AutoSellNLTG", 
        Callback = function(Value)
         getgenv().AutoSellNL = Value
        end,
      })
      NinjaTB:CreateSection("Auto Buy")
      local AutoBuyAllBelts = NinjaTB:CreateToggle({
        Name = "Auto Buy Belts",
        CurrentValue = false,
        Flag = "AutoBuyBeltsTGNL", 
        Callback = function(Value)
         getgenv().AutoBuyBeltsNL = Value
        end,
      })
      local AutoBuySwords = NinjaTB:CreateToggle({
        Name = "Auto Buy Swords",
        CurrentValue = false,
        Flag = "AutoBuySwordsNLTG", 
        Callback = function(Value)
         getgenv().AutoBuySwordsNL = Value
        end,
      })
      NinjaTB:CreateSection("Buttons")
      local UnlockAllIsland = NinjaTB:CreateButton({
        Name = "Unlock All Islands",
        Callback = function()
          local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
          for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
              wait(0.1)
          end
          wait(0.1)
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
          Notify("Falcon-ware", "Unlocked All Islands", "Ok")
        end,
      })
    end

    if game.PlaceId == 189707 then
      local NaturalTB = Window:CreateTab("Natural")
      getgenv().AutoWinNDS = 'string'
      NaturalTB:CreateSection("Auto")
      local AutoWinTG = NaturalTB:CreateToggle({
        Name = "Auto Farm Wins",
        CurrentValue = false,
        Flag = "AutoFarmWinsNDSTG", 
        Callback = function(Value)
          getgenv().AutoWinNDS = Value
        end,
      })
      local TeleportToMap = NaturalTB:CreateButton({
        Name = "Teleport To Map",
        Callback = function()
          --Powered by Falcon Software
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-126.71673583984375, 47.44757843017578, 10.025036811828613)
          Notify("Falcon-ware", "Teleported to map", "Ok")
        end,
      })
      local TeleportToLobby = NaturalTB:CreateButton({
        Name = "Teleport To Lobby",
        Callback = function()
          --Powered by Falcon Software
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-322.8427734375, 179.64755249023438, 330.88623046875)
          Notify("Falcon-ware", "Teleported to Lobby", "Ok")
        end,
      })
      local AntiAfkBTN = NaturalTB:CreateButton({
        Name = "Anti-Afk",
        Callback = function()
          local vu = game:GetService("VirtualUser")
          game:GetService("Players").LocalPlayer.Idled:connect(function()
             vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
             wait(1)
             vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          end)
          Notify("Falcon-ware", "Anti-AFK applied.", "Ok")
        end,
      })



    end




    --ESP
local Storage = game:GetService("CoreGui");
local Players = game:GetService("Players");
local RunService = game:GetService("RunService");

local Enabled = false;
local TeamCheck = false;
local TeamColors = false;
local HideFriendly = false;
local HideEnemy = false;

local Neutral = Color3.fromRGB(255, 255, 255);
local Friendly = Color3.fromRGB(47, 211, 61);
local Enemy = Color3.fromRGB(211, 47, 47);

local function CreateHighlight(plr)
    repeat wait() until plr.Character ~= nil;
    local e = Instance.new("Highlight", Storage);
    e.OutlineColor = Color3.fromRGB(0, 0, 0);
    e.OutlineTransparency = 0.6;
    e.Adornee = plr.Character

    local bb = RunService.RenderStepped:Connect(function()
        e.Enabled = Enabled;

        if TeamCheck then
            if plr.Team == Players.LocalPlayer.Team then
                if HideFriendly then e.Enabled = false end
                e.FillColor = Friendly
            else
                if HideEnemy then e.Enabled = false end
                e.FillColor = Enemy;
            end

            if TeamColors then
                e.FillColor = plr.Team.TeamColor.Color;
            end
        else
            e.FillColor = Neutral;
        end
    end)

    plr.CharacterRemoving:Connect(function()
        e:Destroy()
        bb:Disconnect()
    end)
end

for i, v in ipairs(Players:GetChildren()) do
    if v.Character then
        CreateHighlight(v);
    end
    v.CharacterAdded:Connect(function()
        CreateHighlight(v);
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function()
        CreateHighlight(plr);
    end)
end)

      local VisualTB = Window:CreateTab("Visuals")
      VisualTB:CreateSection("ESP")
      local EnabledBTN = VisualTB:CreateToggle({
        Name = "Enabled",
        CurrentValue = false,
        Flag = "EnabledESP", 
        Callback = function(Value)
            Enabled = Value
        end,
      })
      
      local TeamCheckESPTG = VisualTB:CreateToggle({
        Name = "Team Check",
        CurrentValue = false,
        Flag = "TeamCheckESP", 
        Callback = function(Value)
            TeamCheck = Value
        end,
      })
      local TeamColorsESPTG = VisualTB:CreateToggle({
        Name = "Team Colors",
        CurrentValue = false,
        Flag = "TeamColorsESP", 
        Callback = function(Value)
            TeamColors = Value
        end,
      })
      local HideMatesESPTG = VisualTB:CreateToggle({
        Name = "Hide Teammates",
        CurrentValue = false,
        Flag = "HideMatesESP", 
        Callback = function(Value)
            HideFriendly = Value
        end,
      })
      VisualTB:CreateSection("Personalization")
      local UniversalTB = Window:CreateTab("Universal")
      UniversalTB:CreateSection("Character / Humanoid")
      local hum = game.Players.LocalPlayer.Character.Humanoid
      local WSSL = UniversalTB:CreateSlider({
        Name = "Walk Speed",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Walk Speed",
        CurrentValue = hum.WalkSpeed,
        Flag = "WalkSpeedFLG", 
        Callback = function(Value)
            hum.WalkSpeed = Value
        end,
    })
    local JPSL = UniversalTB:CreateSlider({
        Name = "Jump Power",
        Range = {0, 1000},
        Increment = 1,
        Suffix = "Jump Power",
        CurrentValue = hum.JumpPower,
        Flag = "JumpPowerFLG", 
        Callback = function(Value)
         hum.JumpPower = Value
        end,
    })
    local HHSL = UniversalTB:CreateSlider({
        Name = "Hip Height",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Hip Height",
        CurrentValue = hum.HipHeight,
        Flag = "HipHeightFLG", 
        Callback = function(Value)
            hum.HipHeight = Value
        end,
    })
    local GTSL = UniversalTB:CreateSlider({
        Name = "Gravity",
        Range = {0, 1000},
        Increment = 1,
        Suffix = "Gravity",
        CurrentValue = game.Workspace.Gravity,
        Flag = "WalkSpeedFLG", 
        Callback = function(Value)
            game.Workspace.Gravity = Value
        end,
    })

    local HeadlessBTN = UniversalTB:CreateButton({
      Name = "Headless",
      Callback = function()
        MorphHeadless()
        Notify("Falconware", "Your character is now headless! This is FE and everyone can see it.")
      end,
    })
    local RespawnBTN = UniversalTB:CreateButton({
      Name = "Respawn",
      Callback = function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.5)
        game.Players.LocalPlayer.Character:Destroy()
        wait(8)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldcframe)
      end,
    })


    UniversalTB:CreateSection("Camera")
    local FVSL = UniversalTB:CreateSlider({
        Name = "Field Of View",
        Range = {0, 120},
        Increment = 1,
        Suffix = "Field Of View",
        CurrentValue = game.Workspace.Camera.FieldOfView,
        Flag = "FOVFLG", 
        Callback = function(Value)
            game.Workspace.Camera.FieldOfView = Value
        end,
    })
    UniversalTB:CreateSection("Lighting")
    local LGTSL = UniversalTB:CreateSlider({
      Name = "Brightness",
      Range = {0, 2},
      Increment = 1,
      Suffix = "Brightness",
      CurrentValue = game:GetService("Lighting").Brightness,
      Flag = "BrightnessFLG", 
      Callback = function(Value)
        game:GetService("Lighting").Brightness = Value
      end,
  })
  local ShadowTGL = UniversalTB:CreateToggle({
    Name = "Global Shadows",
    CurrentValue = game:GetService("Lighting").GlobalShadows,
    Flag = "GLBLSHDOWTGL", 
    Callback = function(Value)
      game:GetService("Lighting").GlobalShadows = Value
      
    end,
  })
  local LightTG = UniversalTB:CreateToggle({
    Name = "Surround Light",
    CurrentValue = false,
    Flag = "SurroundLightTG", 
    Callback = function(Value)
      local Falight = game.Players.LocalPlayer.Character.HumanoidRootPart['FalconLight']
      if Value == true then
        Falight.Range = math.huge
        Falight.Brightness = 2.5
        Falight.Shadows = true
      end
      if Value == false then
        Falight.Range = 0
        Falight.Brightness = 0
        Falight.Shadows = false
      end

      
    end,
  })
  local BLRSL = UniversalTB:CreateSlider({
    Name = "Blur",
    Range = {0, 75},
    Increment = 1,
    Suffix = "Blur",
    CurrentValue = game:GetService("Lighting").Blur.Size,
    Flag = "BlurFLG", 
    Callback = function(Value)
      game:GetService("Lighting").Blur.Size = Value
    end,
})


    local MiscTB = Window:CreateTab("Misc")
    MiscTB:CreateSection("Misc")
    MiscTB:CreateParagraph({Title = "Credits", Content = "Developer : Zyllus#4719, \nTester : TheMadForest#0265"})
    local CopyDC = MiscTB:CreateButton({
      Name = "Copy Discord Invite",
      Callback = function()
        setclipboard("https://discord.gg/efGAV7bGKx")
        Notify("Falconware", "Discord invite copied to clipboard.")
      end,
    })
    local SaveInstBTN = MiscTB:CreateButton({
      Name = "Save Instance",
      Callback = function()
        Rayfield:Notify({
          Title = "Falconware",
          Content = "Are you sure you want to continue? This might crash your Game Client",
          Duration = 6.5,
          Image = 4483362458,
          Actions = { 
              Accept = {
                  Name = "Yes",
                  Callback = function()
                    saveinstance()
                    Notify("Falconware", "Saved this game's models to your executor's Workspace folder.", "Thanks daddy")
                  end
          },
          Decline = {
            Name = "No",
            Callback = function()
            end
          },
        },
      })
          
      end,
    })
    
    local ClientClickBBTN = MiscTB:CreateButton({
      Name = "Bypass Client Kicks",
      Callback = function()
        Notify("Falconware", "Falcon will start preventing kicks for you.")
        local Players = game:GetService("Players")
        local OldNameCall = nil
        
        
        getgenv().SendNotifications = true 
        
        
        OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
            local NameCallMethod = getnamecallmethod()
        
            if tostring(string.lower(NameCallMethod)) == "kick" then
                if getgenv().SendNotifications == true then
                  Rayfield:Notify({
                    Title = "Falconware",
                    Content = "Falcon has prevented a Client Kick for you!",
                    Duration = 6.5,
                    Image = 4483362458,
                    Actions = { 
                        Ignore = {
                            Name = "Thanks!",
                            Callback = function()
                                print(":)")
                            end
                    },
                  },
                })
                end
                
                return nil
            end
            
            return OldNameCall(Self, ...)
        end)
        
        
      end,
    })
    local CharBGBTN = MiscTB:CreateButton({
      Name = "Prevent Character bugs.",
      Callback = function()
        Notify("Falconware", "Falcon will start preventing Character Bugs for you.")
        local Players = game:GetService("Players")
        local OldNameCall = nil
        
        
        getgenv().SendNotifications = true 
        
        
        OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
            local NameCallMethod = getnamecallmethod()
        
            if tostring(string.lower(NameCallMethod)) == "remove" then
                if getgenv().SendNotifications == true then
                  Rayfield:Notify({
                    Title = "Falconware",
                    Content = "Falcon has prevented your character from getting bugged.",
                    Duration = 6.5,
                    Image = 4483362458,
                    Actions = { 
                        Ignore = {
                            Name = "Thanks!",
                            Callback = function()
                                print(":)")
                            end
                    },
                  },
                })
                end
                
                return nil
            end
            
            return OldNameCall(Self, ...)
        end)
        
        
      end,
    })
    local SpoofUsername = MiscTB:CreateButton({
      Name = "Spoof Local Usernames",
      Callback = function()
        getgenv().SpoofUsernameFW = true
        Notify("Falconware", "Spoofed Current Username.", "Ok")
      end,
    })
    local SpoofAllUsername = MiscTB:CreateButton({
      Name = "Spoof All Usernames",
      Callback = function()
        getgenv().SpoofAllUsernamesFW = true
        Notify("Falconware", "Spoofed All Usernames.", "Ok")
      end,
    })
    local SpoofDisplayName = MiscTB:CreateButton({
      Name = "Spoof Current Display Name",
      Callback = function()
        getgenv().SpoofDisplayNameFW = true
        Notify("Falconware", "Spoofed Displayname.", "Ok")
      end,
    })
    local SpoofUsername = MiscTB:CreateButton({
      Name = "Spoof All DisplayNames",
      Callback = function()
        getgenv().SpoofAllDisplayNamesFW = true
        Notify("Falconware", "Spoofed all DisplayNames.", "Ok")
      end,
    })
    

    if _G.Falcon_Config == true then
      local ConfigTB = Window:CreateTab("Config")
      ConfigTB:CreateSection("Config")
      local SearchVl = ConfigTB:CreateInput({
        Name = "Search For Values",
        PlaceholderText = "Value",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
          if Text == "falcon.system.keysystem.value" then
            local valuekeysys = ConfigTB:CreateToggle({
              Name = "Value",
              CurrentValue = false,
              Flag = "KeysysEnabledVLUE", 
              Callback = function(Value)
                if Value == true then
                  Notify("Falconware", "You don't have permission to do this.", "Cancel")
                    valuekeysys:Set(false)
                end
              end,
            })
          end
        end,
      })
    end

    if GetLicense() == "Developer 🛠️" then
      local DevTools = Window:CreateTab("Dev Tools")
      DevTools:CreateSection("Position")
      getgenv().LocationOfPl = 'string'
      getgenv().ScriptPower = "--Powered by Falcon Software\n"
      local CopyLC = DevTools:CreateButton({
        Name = "Copy Position",
        Callback = function()
          setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
          Notify("Falcon-Dev", "Copied Position.", "Ok")
        end,
      })
      local PositionHere = DevTools:CreateInput({
        Name = "Position Here",
        PlaceholderText = "0,0,0",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
          getgenv().LocationOfPl = Text
        end,
      })
      local ConvertToCOde = DevTools:CreateButton({
        Name = "Convert To TP Code.",
        Callback = function()
          Notify("Falcon-Dev", "Converting Code..","Ok")
          setclipboard(getgenv().ScriptPower.."game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..getgenv().LocationOfPl..")")
          wait(1)
          Notify("Falcon-Dev", "Converted code and copied to clipboard", "Ok")
        end,
      })
      local ConvertWithCFrameToCOde = DevTools:CreateButton({
        Name = "Convert To TP Code with Current CFrame",
        Callback = function()
          getgenv().CurrentCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
          Notify("Falcon-Dev", "Converting Code..","Ok")
          setclipboard(getgenv().ScriptPower.."game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new("..tostring(getgenv().CurrentCFrame)..")")
          wait(1.5)
          Notify("Falcon-Dev", "Converted code and copied to clipboard", "Ok")
        end,
      })
      local SimpleSPEE = DevTools:CreateButton({
        Name = "Remote Spy",
        Callback = function()
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
        end,
      })
      local SimpleSPEE = DevTools:CreateButton({
        Name = "Close Console",
        Callback = function()
          rconsoleclose()
          Notify("Falcon-dev", "Terminated Console", "Ok")
        end,
      })


    end
    
    
   





   

    

end




PlayAnim("Falconware Beta")
Build()

while wait() do
    local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local ts = game:GetService("TweenService")
  
    local StartPT = ts:Create(plr, TweenInfo.new(2), {CFrame = CFrame.new(-59.53888702392578, 106.36454010009766, -170.87051391601562)})
    local MiddlePT = ts:Create(plr, TweenInfo.new(5), {CFrame = CFrame.new(-45.04722213745117, 120.04086303710938, 8734.9306640625)})
    local DownPT = ts:Create(plr, TweenInfo.new(2), {CFrame = CFrame.new(-76.5628433227539, -177.97926330566406, 8727.54296875)})
    local EndPT = ts:Create(plr, TweenInfo.new(3), {CFrame = CFrame.new(-55.91136932373047, -360.3566589355469, 9487.560546875)})
  if getgenv().AutoWinBAB == true then
    StartPT:Play()
    wait(2)
    MiddlePT:Play()
    wait(5)
    DownPT:Play()
    wait(2)
    EndPT:Play()
    wait(20)
  end
  if getgenv().RemoveWaterDMG == true then
    game.Players.LocalPlayer.Character['WaterDetector']:Destroy()
  end
  if getgenv().AutoChestBAB == true then
    local ChestType = getgenv().SelectedChestBAB
        local AmountOfChests = 1
  
        workspace.ItemBoughtFromShop:InvokeServer(ChestType, AmountOfChests)
  end
  if getgenv().AutoTapTS == true then
  
    local args = {
        [1] = 1
    }
  
    game:GetService("ReplicatedStorage").Events.Tap:FireServer(unpack(args))
  end
  if getgenv().AutoHatchTS == true then
    local ohTable1 = {}
        local EggName = getgenv().selectedEggTS
        local ohNumber3 = 1
  
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(ohTable1, EggName, ohNumber3)
  end
  
  if getgenv().AutoRebirthTS == true then
    local args = {
        [1] = getgenv().RebirthAmountTS
    }
    
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))  
  end
  if getgenv().AutoCollectOrbsSPD == true then
          
    local plr = {}
  
    for _, players in ipairs(game:GetService("Workspace").OrbSpawns:GetChildren()) do
        if players.Name ~= 'Ring' then
            if players.Name ~= 'Part' then
                    table.insert(plr, players)
            end
        end
        
    end
    
    game.Players.PlayerAdded:Connect(function(new_plr)
        table.insert(plr, new_plr)
    end)
    
    game.Players.PlayerRemoving:Connect(function(left_plr)
        if table.find(plr, left_plr) then
            table.remove(plr, table.find(left_plr))
        end
    end)
    
    spawn(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr[math.random(1, #plr)].CFrame
    end)
    wait(2)
  
  end
  
  if getgenv().AutoRebirthSPD == true then
  
  game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
  
  end
  
  if getgenv().AutoReb == true then 
    local args = {
        [1] = getgenv().RebirthAmount
    }
    
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))  
  end
  
  if getgenv().AutoAddSpeedSPD == true then 
    local args = {
        [1] = "Speed"
    }
    
    game:GetService("ReplicatedStorage").Remotes.PersonalBest:FireServer(unpack(args))
    
    game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
  end
  if getgenv().KillAuraPL == true then
    for __,v in ipairs(game.Players:GetChildren()) do
      if v ~= game.Players.LocalPlayer then
        local args = {
            [1] = game:GetService("Players")[v.Name]
        }
  
        game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
      end
    end
  end

     if getgenv().AutoSwingNL == true then
      for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:FindFirstChild("ninjitsuGain") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            break
        end
      end
      local A_1 = "swingKatana"
      local Event = game:GetService("Players").LocalPlayer.ninjaEvent
      Event:FireServer(A_1)
    
     end
     if getgenv().AutoSellNL == true then
      game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      wait(0.1)
      game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
     end
     if getgenv().AutoBuyBeltsNL == true then
      local A_1 = "buyAllBelts"
      local A_2 = "Inner Peace Island"
      local Event = game:GetService("Players").LocalPlayer.ninjaEvent
      Event:FireServer(A_1, A_2)
      wait(0.5)
     end
     if getgenv().AutoBuySwordsNL == true then
      local A_1 = "buyAllSwords"
      local A_2 = "Inner Peace Island"
      local Event = game:GetService("Players").LocalPlayer.ninjaEvent
      Event:FireServer(A_1, A_2)
     end

     if getgenv().SpoofUsernameFW == true then
      local rm = math.random(0,100000000)
      game.Players.LocalPlayer.Name = "Falcon-"..rm
     end
     if getgenv().SpoofAllUsernamesFW == true then
      local rm = math.random(0,100000000)
      for __,v in ipairs(game.Players:GetChildren()) do
        v.Name = "Falcon-"..rm
      end
    end

    if getgenv().SpoofDisplayNameFW == true then
      local rm = math.random(0,100000000)
      game.Players.LocalPlayer.Character.Humanoid.DisplayName = "Falcon-"..rm
    end
    if getgenv(). getgenv().SpoofAllDisplayNamesFW == true then
      local rm = math.random(0,100000000)
      for __,v in ipairs(game.Players:GetChildren()) do
        v.Character.Humanoid.DisplayName = "Falcon-"..rm
      end
    end

    if getgenv().AutoWinNDS == true then
--Powered by Falcon Software
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-304.37506103515625, 194.44749450683594, 385.1936340332031)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
    end
     
     
end
