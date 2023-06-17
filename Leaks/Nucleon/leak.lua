--Load Information
local StatusIndex = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zywuss/ODTRZpcFNoRlWMS/main/tmDgQuxjjf6vWoqa4UJL62p.lua"))()
local NucleonVS = loadstring(game:HttpGet('https://raw.githubusercontent.com/Zywuss/ODTRZpcFNoRlWMS/main/cAk7qhg9jC6gHA0k'))()
for i,v in ipairs(NucleonVS) do
	getgenv().NCVS = v
end
for i,v in ipairs(StatusIndex) do
    getgenv().NucStat = v
end
getgenv().JobID = game:GetService("RbxAnalyticsService"):GetClientId()
getgenv().DisplayName = game.Players.LocalPlayer.Character.Humanoid.DisplayName



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

--Get Responce from exploit function
local function GetResponse()
  local exploit = identifyexecutor()
  if exploit == "Evon" then
    return "The fuck you using Evon, It's fucking ass."
  end
end

print('Passed before defining Build')
--Main Build of Nucleon
function Build()
  print('Loaded Build')
  local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
  local Window = Rayfield:CreateWindow({
    Name = "Nucleon Beta",
    LoadingTitle = "Nucleon",
    LoadingSubtitle = "by Zyllus",
    ConfigurationSaving = {
      Enabled = true,
      FileName = "Nucleon Hub"
    },
    KeySystem = false, 
    KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      Key = "ABCDEF"
    }
  })
    function Notify(Title, Desc)
      Rayfield:Notify(Title,Desc,10010348543) 
    end
    local HomeTB = Window:CreateTab("Home")
    local HomeSC = HomeTB:CreateSection("Home")
    


    if game.PlaceId == 537413528 then
        local BABTB = Window:CreateTab("Build A Boat")
        local WinSC = BABTB:CreateSection("Win")
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
        
        
      
        local ToolSC = BABTB:CreateSection("Get Tools (Not FE)")
        getgenv().ToolSelectedBAB = 'string'
        print('yes')
        local ToolsBABDPD = ToolSC:CreateDropdown({
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
          end,
        })
        
          local ChestSC = BABTB:CreateSection("Chests")
          getgenv().SelectedChestBAB = 'string'
          getgenv().AutoChestBAB = 'string'
          
          local ChestBABDPD = ChestSC:CreateDropdown({
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
    print('Passed BAB')

    if game.PlaceId == 9498006165 then
       local TapTB = Window:CreateTab("Tap")
       local TapSC = TapTB:CreateSection('Taps')
       getgenv().AutoTapTS = 'string'
       getgenv().selectedEggTS = 'string'
       getgenv().AutoHatchTS = 'string'
       getgenv().RebirthAmountTS = 'string'
       getgenv().AutoRebirthTS = 'string'
       TapSC:Toggle("Auto Tap", false, "AutoTap", function(t)
         getgenv().AutoTapTS = t
       end)
       local EggSC = TapTB:CreateSection("Eggs")
       EggSC:Dropdown("Pick Egg", {"Starter","Wood Egg", "Jungle Egg", "Forest Egg", "Bee Egg", "Swamp Egg", "Snow Egg", "Desert Egg", "Death Egg", "Beach Egg", "Mine Egg", "Cloud Egg", "Coral Egg", "Dark Egg"},"","Dropdown", function(t)
        getgenv().selectedEggTS = t
       end)
       EggSC:Toggle("Auto Hatch", false, "AutoHatch", function(t)
        getgenv().AutoHatchTS = t
      end)
      local RebirthSC = TapTB:CreateSection("Rebirths")
      RebirthSC:Dropdown("Pick Amount To Rebirth", {5,10,20,100,500,2000},"","Dropdown", function(t)
        getgenv().RebirthAmountTS = t
       end)
       RebirthSC:Toggle("Auto Rebirth", false, "AutoRebirth", function(t)
        getgenv().AutoRebirthTS = t
      end)
      


    end
    print('Passed TS')

    if game.PlaceId == 4620170611  then
      getgenv().SafeCode = game:GetService("Workspace").CodeNote.SurfaceGui.TextLabel.Text
      function getItem(item)
        local ItemName = item
        
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ItemName)
      end

      local BreakTB = Window:CreateTab("Break In")
      local MainSC = BreakTB:CreateSection("Main")
      MainSC:Button("Infinite Energy", function()
        game:GetService("ReplicatedStorage").RemoteEvents.Cattery:FireServer()
        for i = 1,200,1 do
                       
          local ohString1 = "Cat"
          
          game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(ohString1)
        end
        Notify("Nucleon", "Applied Infinite Energy")
      end)
      MainSC:Button("Get Medkit", function()
        getItem('MedKit')
        Notify("Nucleon", "Grabbed Medkit")
      end)
      MainSC:Button("Heal everyone", function()
        for i,v in ipairs(game.Players:GetChildren()) do
          if v ~= game.Players.LocalPlayer then
            local ohInstance1 = game:GetService("Players")[v.Name]
          
          game:GetService("ReplicatedStorage").RemoteEvents.HealPlayer:FireServer(ohInstance1)
          end
        end
        Notify("Nucleon", "Healed Everyone.")
      end)
      MainSC:Button("Unlock Basement", function()
        game:GetService("ReplicatedStorage").RemoteEvents.UnlockDoor:FireServer()
        Notify("Nucleon", "Unlocked Basement.")
      end)
      MainSC:Button("Unlock Attic", function()
        local ohNumber1 = 1

        game:GetService("ReplicatedStorage").RemoteEvents.Ladder:FireServer(ohNumber1)
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.3247604, 18.9970512, -225.763229, 0.999568164, 9.8660152e-08, 0.0293854866, -9.8546721e-08, 1, -5.30829025e-09, -0.0293854866, 2.41015452e-09, 0.999568164)
        Notify("Nucleon","Unlocked Attic")

      end)
      MainSC:Button("Get safe code", function()
        Notify("Nucleon", "Safe Code : "..getgenv().SafeCode)
      end)
      MainSC:Button("Unlock safe", function()
        local ohString1 = getgenv().SafeCode

       game:GetService("ReplicatedStorage").RemoteEvents.Safe:FireServer(ohString1)
       Notify("Nucleon", "Unlocked Safe.")
      end)

      getgenv().ItemSelectedBIS = 'string'
      local ItemSC = BreakTB:CreateSection("Item")
       ItemSC:Dropdown("Select Item", {"Plank", "Pizza2","Apple", "Cookie", "LinkedSword", "Medkit", "Chips", "Pie", "Cure", "ExpiredBloxyCola", "Key", "CarKey", "Lollipop", "Breaker"},"","SelectItem", function(t)
        getgenv().ItemSelectedBIS = t
      end)
      ItemSC:Button("Grab Item", function()
        getItem(getgenv().ItemSelectedBIS)
        if getgenv().ItemSelectedBIS == "Breaker" then
          local args = {
            [1] = true,
            [2] = "Breaker"
          }
        
          game:GetService("ReplicatedStorage").RemoteEvents.BasementWeapon:FireServer(unpack(args))
        end
        Notify("Nucleon", "Grabbed item")
      end)

      local TpSC = BreakTB:CreateSection("Teleports")
      getgenv().SelectedAreaBIS = 'string'
      TpSC:Dropdown("Select Area", {"Inside", "Outside", "Living Room", "Dining Room", "Basement", "Sewer", "Boss Area", "Store", "Green Room", "Pink Room", "Blue Room", "Attic", "Ghost Area"}, "", "SelectedArea", function(t)
        getgenv().SelectedAreaBIS = t
      end)
      TpSC:Button("Teleport", function()
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
      end)







    end

    if game.PlaceId == 7047488135 then
      local SpeedTB = Window:CreateTab("Speed")
      getgenv().AutoAddSpeedSPD = "string"
      getgenv().AutoCollectOrbsSPD = "string"
      getgenv().AutoRebirthSPD = "string"
      local AutoFarmSC = SpeedTB:CreateSection("Auto Farm")
      AutoFarmSC:Toggle("Auto Add Speed", false, "AutoAddSpeed", function(t)
        getgenv().AutoAddSpeedSPD = t
      end)
      AutoFarmSC:Toggle("Auto Rebirth", false, "AutoRebirth", function(t)
        getgenv().AutoRebirthSPD = t
      end)
      local OrbSC = SpeedTB:CreateSection("Orbs")
      OrbSC:Toggle("Auto Collect Orbs", false, "AutoCollectOrbs", function(t)
        getgenv().AutoCollectOrbsSPD = t
      end)
      OrbSC:Button("Collect All Orbs || OP", function()
        Notify("Nucleon", "This Might lag a bit, Please don't move.")
        wait(2)
                for i,v in ipairs(game:GetService("Workspace").OrbSpawns:GetChildren()) do
                    if v.Name ~= 'Ring' then
                        if v.Name ~= 'Part' then
                            v.CanRespawn.Value = true
                                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
      end)
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
print('Passed ESP func')
--Visuals Tab
          local VisualTB = Window:CreateTab("Visuals")
          local EspSC = VisualTB:CreateSection("ESP")
          local ESPEnabledTG = ESPSC:CreateToggle({
            Name = "Enable",
            CurrentValue = false,
            Flag = "EnabledESP", 
            Callback = function(Value)
            end
          })
          local TeamCheckESPTG = ESPSC:CreateToggle({
            Name = "Team Check",
            CurrentValue = false,
            Flag = "TeamCheckESP", 
            Callback = function(Value)
              TeamCheck = Value
            end
          })
          local ESPHideMates = ESPSC:CreateToggle({
            Name = "Hide Mates",
            CurrentValue = false,
            Flag = "HideMatesESP", 
            Callback = function(Value)
              HideFriendly = Value
            end
          })
          local ESPTeamColors = ESPSC:CreateToggle({
            Name = "Team Colors",
            CurrentValue = false,
            Flag = "TeamColorESP", 
            Callback = function(Value)
              TeamColors = Value
            end
          })
          local PersonalTB = VisualTB:CreateSection("Personalize")


          
          print('Passed VS')
          -- Universal Tab
          local UniversalTB = Window:CreateTab("Universal")
          local LplayerSC = UniversalTB:CreateSection("Local Players")
          local hum = game.Players.LocalPlayer.Character.Humanoid
          local WSSL = UniversalTB:CreateSlider({
            Name = "Walk Speed",
            Range = {0, 500},
            Increment = 1,
            Suffix = "WalkSpeed",
            CurrentValue = hum.WalkSpeed,
            Flag = "WalkSpeedVALUE", 
            Callback = function(Value)
              hum.WalkSpeed = Value
            end,
          })
          local JPSL = UniversalTB:CreateSlider({
            Name = "Jump Power",
            Range = {0, 1000},
            Increment = 1,
            Suffix = "JumpPower",
            CurrentValue = hum.JumpPower,
            Flag = "JumpPowerVALUE", 
            Callback = function(Value)
              hum.JumpPower = Value
            end,
          })
          local HHSL = UniversalTB:CreateSlider({
            Name = "Hip Height",
            Range = {0, 500},
            Increment = 1,
            Suffix = "HipHeight",
            CurrentValue = hum.HipHeight,
            Flag = "HipHeightVALUE", 
            Callback = function(Value)
              hum.HipHeight = Value
            end,
          })
          local GSL = UniversalTB:CreateSlider({
            Name = "Gravity",
            Range = {0, 1000},
            Increment = 1,
            Suffix = "Gravity",
            CurrentValue = game.Workspace.Gravity,
            Flag = "GravityVALUE", 
            Callback = function(Value)
              game.Workspace.Gravity = Value
            end,
          })
          
          print('Passed UNVS')
end

print('passed')

Build()
while wait()  do
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
end


