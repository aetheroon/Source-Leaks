local function GetTraffInfo()
    local TraffPath = loadstring(game:HttpGet('https://raw.githubusercontent.com/Nayrius/Midrain.hub/main/Stats/Tr.lua'))()
    for __,v in ipairs(TraffPath) do
      return v
    end
end

--Variables
--Chasis Library
local MidrainVcontrol = {
    Chassis = {
        ParameterDoc = "For the 1st parameter of the function 'Teleport' has to be the path of the vehicle's model. The 2nd parameter should be the name of the Driver Seat in the car, The last parameter has to be the location you want the car to teleport to.",
        Example = "MidrainVcontrol.Chassis.Teleport(game.Workspace.Vehicles.MyCar,['VehicleSeat'],CFrame.new(location here))",
        Teleport = function(VehiclePath,VehiclePrimPart,TpPosition)
            VehiclePath.PrimaryPart = VehiclePath[VehiclePrimPart]
            VehiclePath:SetPrimaryPartCFrame(TpPosition)

        end
    }
}

--DiscordAPI

--secret var 
local Secrets = {
    env = {
        Midrain_TOKEN = 'TheFuckingChapriChapati!',
        Midrain_ADRESS = '0x'..math.random(100000,999999),
        RACIST_TOKEN = true
    }
}


local Players = game:GetService("Players")
getgenv().DisplayN = Players.LocalPlayer.Character.Humanoid.DisplayName
getgenv().JobId = game:GetService("RbxAnalyticsService"):GetClientId()
getgenv().Midrain_TOKEN = ''
getgenv().Midrain_ADDRESS = Secrets.env.Midrain_ADRESS
if getgenv().Midrain_TOKEN == Secrets.env.Midrain_TOKEN then
    print('Logged In.')
end



local Games = {
    ['Lumber Tycoon'] = 13822889,
    ['Build a Boat'] = 537413528,
    ['Build To Survive'] = 7250769796,
    ['Prison Life'] = 155615604,
    ['Surive51'] = 2092166489,
}

local Icons = {
    ['Logo'] = 11813719452,
    ['Home'] = 11723800423,
    ['Game'] = 11729809102,
    ['Universal'] = 11725886529,
    ['Misc'] = 11769765560,
    ['Visuals'] = 11825960968,
}
--Var End
local hack = identifyexecutor()
local function isClientSupported()
  if hack == "Krnl" then
    return true
  elseif hack == "Trigon" then
    return true
  elseif hack == 'Fluxus' then
    return true
  else
    return false
  end
end
-- Functions
function InfiniteJump(Val)
    if not Val then IJ:Disconnect() return end
    IJ = game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end)
end

function NoClip(state)
    if not state then Clipping:Disconnect() return end
    Clipping = game:GetService("RunService").Stepped:connect(function()
        for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:IsA("Part") or v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
end

function CreateItemESP(Title, item,color,enabled)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = "ItemESPRoot"
    Highlight.Parent = item
    Highlight.Enabled = enabled
    Highlight.FillTransparency = 1
    Highlight.FillColor = Color3.new(255,255,255)
    Highlight.OutlineColor = color

    
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")


    BillboardGui.Parent = item
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillboardGui.Active = enabled
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1.000
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 1, 0)

    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = Title
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 30.000
end



--Functions End
function VirtualFriend()
end
--Func Build
function Build()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local Window = Rayfield:CreateWindow({
        Name = "Midrain Hub",
        LoadingTitle = "Midrain",
        LoadingSubtitle = "by Rayn",
        ConfigurationSaving = {
           Enabled = false,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "Big Hub"
        },
        Discord = {
           Enabled = false,
           Invite = "sirius", -- The Discord invite code, do not include discord.gg/
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Sirius Hub",
           Subtitle = "Key System",
           Note = "Join the discord (discord.gg/sirius)",
           FileName = "SiriusKey",
           SaveKey = true,
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = "Hello"
        }
     })
     function Notify1(Desc)
        Rayfield:Notify({
            Title = "Midrain",
            Content = Desc,
            Duration = 6.5,
            Image = nil,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                  
               end
            },
         },
         })
     end
     --Home Tab
     local HomeTB = Window:CreateTab("Home", Icons['Home']) 
     local VisualTB = Window:CreateTab("Visuals", Icons['Visuals']) 
     local UniversalTB = Window:CreateTab("Global", Icons['Universal']) 
     local MiscTB = Window:CreateTab("Misc", Icons['Misc']) 

     --Home Tab Items
     HomeTB:CreateSection("Home Page")
     local Welcome = HomeTB:CreateLabel("Welcome to Midrain, "..getgenv().DisplayN)
     HomeTB:CreateLabel("Client : "..identifyexecutor())
     local SupportedClients = HomeTB:CreateParagraph({Title = "Supported Executors :", Content = "• Fluxus (Recommended),\n• Krnl,\n• Synapse (X),\n• Script-Ware"})
       --Visuals

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
           e.OutlineColor = Color3.fromRGB(255,255,255);
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
       VisualTB:CreateSection("Visuals - Basic")
       local Enables = VisualTB:CreateToggle({
           Name = "ESP",
           CurrentValue = false,
           Flag = "ESPTGL",
           Callback = function(Value)
             Enabled = Value
           end,
        })
        local TeamChecks = VisualTB:CreateToggle({
           Name = "Team Check",
           CurrentValue = false,
           Flag = "TMCHKTGL",
           Callback = function(Value)
             TeamCheck = Value
           end,
        })
        local teamcoolors = VisualTB:CreateToggle({
           Name = "Team Colors",
           CurrentValue = false,
           Flag = "TMCLRSTGL",
           Callback = function(Value)
             TeamColors = Value
           end,
        })
        local hideteemates = VisualTB:CreateToggle({
           Name = "Hide Teammates",
           CurrentValue = false,
           Flag = "HDTMTSTGL",
           Callback = function(Value)
             HideFriendly = Value
           end,
        })
        local HideENEMEE = VisualTB:CreateToggle({
           Name = "Hide Enemy",
           CurrentValue = false,
           Flag = "HDNMYTGL",
           Callback = function(Value)
             HideEnemy = Value
           end,
        })
        VisualTB:CreateSection("Configuration")
        local nutralcolor = VisualTB:CreateColorPicker({
           Name = "Neutral Color",
           Color = Color3.fromRGB(255, 255, 255),
           Flag = "NUTRALCOLOOR", 
           Callback = function(Value)
              Neutral = Value
           end
       })
       local frieldcoloromg = VisualTB:CreateColorPicker({
           Name = "Teammate Color",
           Color = Color3.fromRGB(47, 211, 61),
           Flag = "FREENDCOLOR", 
           Callback = function(Value)
              Friendly = Value
           end
       })
       local enemeecolor = VisualTB:CreateColorPicker({
           Name = "Enemy Color",
           Color = Color3.fromRGB(211, 47, 47),
           Flag = "ENEMCOLOR", 
           Callback = function(Value)
              Enemy = Value
           end
       })

       --Universal
       function NoClip(state)
        if not state then Clipping:Disconnect() return end
        Clipping = game:GetService("RunService").Stepped:connect(function()
            for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
                if v:IsA("Part") or v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end)
    end
       local Hum = game:GetService("Players").LocalPlayer.Character.Humanoid
       local DefWS = Hum.WalkSpeed
       local DefJP = Hum.JumpPower
       local DefHH = Hum.HipHeight
       local DefGV = game.Workspace.Gravity
       local DefFOV = game.Workspace.Camera.FieldOfView
       getgenv().WalkSpeedAT = DefWS
       getgenv().JumpPowerAT = DefJP
       getgenv().GravityAT = DefGV
       getgenv().HipHeightAT = DefHH
       getgenv().FieldOfViewAT = DefFOV
UniversalTB:CreateSection("Universal")
       local WS = UniversalTB:CreateSlider({
        Name = "Walk Speed",
        Range = {0, 100},
        Increment = 1,
        Suffix = "Walk Speed",
        CurrentValue = DefWS,
        Flag = "WSSL", 
        Callback = function(Value)
           getgenv().WalkSpeedAT = Value
        end,
     })
     local JP = UniversalTB:CreateSlider({
        Name = "Jump Power",
        Range = {0, 100},
        Increment = 1,
        Suffix = "Jump Power",
        CurrentValue = DefJP,
        Flag = "JPSL", 
        Callback = function(Value)
           getgenv().JumpPowerAT = Value
        end,
     })
     local HH = UniversalTB:CreateSlider({
        Name = "Hip Height",
        Range = {0, 100},
        Increment = 1,
        Suffix = "Hip Height",
        CurrentValue = DefHH,
        Flag = "HHSL", 
        Callback = function(Value)
           getgenv().HipHeightAT = Value
        end,
     })
     local GR = UniversalTB:CreateSlider({
        Name = "Gravity",
        Range = {0, 1000},
        Increment = 1,
        Suffix = "Gravity",
        CurrentValue = DefGV,
        Flag = "GVSL", 
        Callback = function(Value)
           getgenv().GravityAT = Value
        end,
     })
     local nooclip = UniversalTB:CreateToggle({
        Name = "Noclip",
        CurrentValue = false,
        Flag = "NCLPTG",
        Callback = function(Value)
          NoClip(Value)
        end,
     })
     UniversalTB:CreateSection("Camera")
     local cam = game.Workspace.Camera
     local FOV = UniversalTB:CreateSlider({
        Name = "Field Of View",
        Range = {0, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = cam.FieldOfView,
        Flag = "FOVSL", 
        Callback = function(Value)
           getgenv().FieldOfViewAT = Value
        end,
     })

     --Misc
     MiscTB:CreateSection("Executor Edit")
 MiscTB:CreateParagraph({Title = "Edit Executor Name Tutorial", Content = "Put in any executors name it can be any name like 'Synapse', 'Gay', etc. After typing in any executor or any name. Type print(identifyexecutor()) in your executor and it will print the exploit name you put earlier instead of your actual exploits name\nYour exploit name will also change in scripts like darkhub."})
     local ExploitNameBYPASS = MiscTB:CreateInput({
        Name = "Edit Executor Name",
        PlaceholderText = "Fluxus",
        RemoveTextAfterFocusLost = true,
        Callback = function(Text)
          hookfunction(identifyexecutor,function()
            return Text
          end)
          Notify("Re-execute the script.")
        end,
     })
     MiscTB:CreateParagraph({Title = "Change Executor Level Tutorial", Content = "Put in any number you want. Such as 7,8,9, and then type in printidentity() in your executor, and it will print the number you put in the textbox instead of your exploit's actual level."})
        local ExploitNameBYPASS = MiscTB:CreateInput({
            Name = "Edit Executor Level Name",
            PlaceholderText = "7",
            RemoveTextAfterFocusLost = true,
            Callback = function(Text)
              hookfunction(printidentity,function()
                return 'Current identity is '..Text
              end)
            end,
         })



       if game.PlaceId == 537413528 then
        function BuyChest(chestName)
            local args = {
                [1] = chestName,
                [2] = 1
            }
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
        end
        local GameTB = Window:CreateTab("Game", Icons['Game']) 
        GameTB:CreateSection("Auto Farm")
        getgenv().AutoWinBAB = 'string'
        local AutoWIN = GameTB:CreateToggle({
            Name = "Auto Win",
            CurrentValue = false,
            Flag = "AutoWinBABTG", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
               getgenv().AutoWinBAB = Value
            end,
         })

         GameTB:CreateSection("Auto-Buy")
         getgenv().SelectedChestBAB = ''
         getgenv().AutoPurchaseChestsBAB = ''
         local ChestList = {"Common Chest", "Uncommon Chest","Rare Chest", "Epic Chest","Legendary Chest"}
         local ChestDPD = GameTB:CreateDropdown({
            Name = "Select A Chest",
            Options = ChestList,
            CurrentOption = "",
            Flag = "ChestDPDBAB", 
            Callback = function(Option)
              getgenv().SelectedChestBAB = Option
            end,
         })
         local AutoBuy = GameTB:CreateToggle({
            Name = "Auto Purchase Chests",
            CurrentValue = false,
            Flag = "AutoPurchaseCHestBABTG", 
            Callback = function(Value)
              getgenv().AutoPurchaseChestsBAB = Value
            end,
         })
         
        
        GameTB:CreateSection("Tools")
         local Tools = {"Scale Tool", "Painting Tool", "Trowel Tool", "Property Tool", "Binding Tool"}
         getgenv().SelectedToolBAB = ''
         local ToolsDPD = GameTB:CreateDropdown({
            Name = "Select A Tool",
            Options = Tools,
            CurrentOption = "",
            Flag = "TOOLSDPDBAB", 
            Callback = function(Option)
              getgenv().SelectedToolBAB = Option
            end,
         })
         function GetTool(toolName)
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


            if toolName == "Scale Tool" then
                sclone.Parent = BackPack
            elseif toolName == "Painting Tool" then
                ptool.Parent = BackPack
            elseif toolName == "Trowel Tool" then
                ttool.Parent = BackPack
            elseif toolName == "Property Tool" then
                pptool.Parent = BackPack
            elseif toolName == "Binding Tool" then
            btool.Parent = BackPack
            end
        end
        function DelTool(toolnm)
            local Backpack = game.Players.LocalPlayer.Backpack
            if toolnm == "Scale Tool" then
                Backpack.ScalingTool:Destroy()
            elseif toolnm == "Painting Tool" then
                Backpack.PaintingTool:Destroy()
            elseif toolnm == "Trowel Tool" then
                Backpack.TrowelTool:Destroy()
            elseif toolnm == "Property Tool" then
                Backpack.PropertiesTool:Destroy()
            elseif toolnm == "Binding Tool" then
                Backpack.BindingTool:Destroy()
            end
            
            
        end
         local GetToolBTN = GameTB:CreateButton({
            Name = "Get Tool",
            Callback = function()
              GetTool(getgenv().SelectedToolBAB)
              Notify1("Got Tool!")
            end,
         })
         local DelToolBTN = GameTB:CreateButton({
            Name = "Delete Tool",
            Callback = function()
              DelTool(getgenv().SelectedToolBAB)
              Notify1("Deleted Tool!")
            end,
         })
        end

        if game.PlaceId == 7047488135 then
            function GetAllOrbs()
                for __,v in ipairs(game:GetService("Workspace").OrbSpawns:GetChildren()) do
                    if v.Name ~= 'Ring' then
                        if v.Name ~= 'Part' then
                            v.CanRespawn.Value = true
                                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end
            local GameTB = Window:CreateTab("Game", Icons['Game']) 
            GameTB:CreateSection("Stats")
            getgenv().AutoClickSRS = ''
            getgenv().AutoRebirthSRS = ''
            getgenv().AutoCollectOrbsSRS = ''
            local AutoClick = GameTB:CreateToggle({
                Name = "Auto Click",
                CurrentValue = false,
                Flag = "AutoCLICKSRSTG", 
                Callback = function(Value)
                  getgenv().AutoClickSRS = Value
                end,
            })
            local AutoRebirth = GameTB:CreateToggle({
                Name = "Auto Rebirth",
                CurrentValue = false,
                Flag = "AutoRebirthSRSTG", 
                Callback = function(Value)
                  getgenv().AutoRebirthSRS = Value
                end,
            })
            GameTB:CreateSection("Orbs")
            local AutoCollectOrbs = GameTB:CreateToggle({
                Name = "Auto Collect Orbs",
                CurrentValue = false,
                Flag = "AutoCollectOrbsSRSTG", 
                Callback = function(Value)
                  getgenv().AutoCollectOrbsSRS = Value
                end,
            })
            local GetAllOrbs = GameTB:CreateButton({
                Name = "Get All Orbs",
                Callback = function()
                   Notify("This might lag a bit, Please don't move.")
                   wait(2)
                   GetAllOrbs()
                end,
             })

        end

        if game.PlaceId == 69184822 then
            local GameTB = Window:CreateTab("Game", Icons['Game']) 
            GameTB:CreateSection("Automatic")
            getgenv().AutoCleanTrashTP2 = ''
            local AutoCtrashTutorial = GameTB:CreateParagraph({Title = "Auto Clean Trash Help", Content = "Make sure you do this before you enable Auto Clean trash.\nGo to some trash and make your legs a mop after that enable Auto Clean Trash."})
            local AutoCleanTrash = GameTB:CreateToggle({
                Name = "Auto Clean Trash",
                CurrentValue = false,
                Flag = "AutoCLEANTRASHTP2TG", 
                Callback = function(Value)
                getgenv().AutoCleanTrashTP2 = Value
                end,
             })
        end

        if game.PlaceId == 142823291 then
            function checkForKnife()
                local knifeOwners = ""
                for _, player in pairs(game.Players:GetChildren()) do
                    local backpack = player:FindFirstChild("Backpack")
                    if backpack then
                        local knife = backpack:FindFirstChild("Knife")
                        if knife then
                            knifeOwners = knifeOwners..player.Name..", "
                        end
                    end
                end
                return knifeOwners
            end
            
            
            function checkForGun()
                local knifeOwners = ""
                for _, player in pairs(game.Players:GetChildren()) do
                    local backpack = player:FindFirstChild("Backpack")
                    if backpack then
                        local knife = backpack:FindFirstChild("Gun")
                        if knife then
                            knifeOwners = knifeOwners..player.Name..", "
                        end
                    end
                end
                return knifeOwners
            end
            

            
            local GameTB = Window:CreateTab("Game", Icons['Game']) 
            GameTB:CreateSection("Role Info")
            local Murderer = checkForKnife()
            local Sherrif = checkForGun()
            
            local GetRoleInfo = GameTB:CreateButton({
                Name = "Get Role Info",
                Callback = function()
                 Notify1("Murderer : "..checkForKnife().."\nSherrif : "..checkForGun())
                 
                end,
             })
        end


    end

    


function Eroooor()
    setclipboard("https://raw.githubusercontent.com/Nayrius/Midrain/main/ErrorFiles/ClientError")
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Client Error", 
        Text = "Paste the copied link into a browser.",
        Icon = "" 
    })
end


print('You can use _G.MidrainChat = "Anything you want to say to contact Midrain."')
Build()


function MidrainBot(txt)
    function Kick(rs)
        game.Players.LocalPlayer:Kick(rs)
    end
    local low = sting.lower(txt)
    if low == "i love black men" then
        Kick("If your a man, No one likes you because you're gay, If you're a female then it's fine.")
    end

end

while true do

    wait(0.1)        
    local ws = game:GetService("Workspace")
    local rs = game:GetService("ReplicatedStorage")
    local ps = game:GetService("Players")
    if not game:GetService("Workspace") then
        game.Players.LocalPlayer:Kick("The Workspace Service hasn't loaded or doesn't exist.")
    elseif not rs then
        game.Players.LocalPlayer:Kick("The ReplicatedStorage Service hasn't loaded or doesn't exist.")
    elseif not ps then
        game.Players.LocalPlayer:Kick("The Players Service hasn't loaded or doesn't exist.")
    end

    if GetTraffInfo() > 50 then
        game.Players.LocalPlayer:Kick("Midrain is currently down, Please be patient as we continue upping our services.")
    end
    local hum = game.Players.LocalPlayer.Character.Humanoid
    hum.WalkSpeed = getgenv().WalkSpeedAT
    hum.JumpPower = getgenv().JumpPowerAT
    hum.HipHeight = getgenv().HipHeightAT
    game.Workspace.Gravity = getgenv().GravityAT
    game.Workspace.Camera.FieldOfView = getgenv().FieldOfViewAT
    if getgenv().AutoWinBAB == true then
        local StagesPos = {
            ['Start'] = CFrame.new(-57.73700714111328, 65.22293853759766, -174.5830535888672),
            ['Stage 1'] = CFrame.new(-53.63799285888672, 66.55493927001953, 1096.1932373046875),
            ['Stage 2'] = CFrame.new(-46.662967681884766, 92.43372344970703, 1621.9385986328125),
            ['Stage 3'] = CFrame.new(-49.209930419921875, 86.82821655273438, 2331.370361328125),
            ['Stage 4'] = CFrame.new(-56.874359130859375, 95.53713989257812, 3228.5537109375),
            ['Stage 5'] = CFrame.new(-52.0286979675293, 100.28314208984375, 3993.379150390625),
            ['Stage 6'] = CFrame.new(-54.00505447387695, 108.44873809814453, 4769.044921875),
            ['Stage 7'] = CFrame.new(-59.079246520996094, 91.31826782226562, 5710.30419921875),
            ['Stage 8'] = CFrame.new(-64.50634765625, 95.48346710205078, 6377.11083984375),
            ['Stage 9'] = CFrame.new(-74.85325622558594, 104.12805938720703, 7170.80322265625),
            ['Stage 11'] = CFrame.new(-75.51841735839844, 115.30642700195312, 7813.60009765625),
            ['Stage 12'] = CFrame.new(-55.17738342285156, -359.0835876464844, 9489.0703125),
        }
        function Win()
            local d = 0.1
             local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
             plr.CFrame = StagesPos['Start']
             wait(d)
             plr.CFrame = StagesPos['Stage 1']
             wait(d)
             plr.CFrame = StagesPos['Stage 2']
             wait(d)
             plr.CFrame = StagesPos['Stage 3']
             wait(d)
             plr.CFrame = StagesPos['Stage 4']
             wait(d)
             plr.CFrame = StagesPos['Stage 5']
             wait(d)
             plr.CFrame = StagesPos['Stage 6']
             wait(d)
             plr.CFrame = StagesPos['Stage 7']
             wait(d)
             plr.CFrame = StagesPos['Stage 8']
             wait(d)
             plr.CFrame = StagesPos['Stage 9']
             wait(d)
             plr.CFrame = StagesPos['Stage 11']
             wait(d)
             plr.CFrame = StagesPos['Stage 11']
             wait(d)
             plr.CFrame = StagesPos['Stage 12']
             wait(20)
             
        end
            
         Win()
    end

    if getgenv().AutoPurchaseChestsBAB == true then
        
        local args = {
            [1] = getgenv().SelectedChestBAB,
            [2] = 1
        }
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
    end

    if getgenv().AutoClickSRS == true then
        local args = {
            [1] = "Speed"
        }
        
        game:GetService("ReplicatedStorage").Remotes.PersonalBest:FireServer(unpack(args))
        
        game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
    end
    if getgenv().AutoRebirthSRS == true then
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
    end
    if getgenv().AutoCollectOrbsSRS == true then
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
           wait(1)
    end

    if getgenv().AutoCleanTrashTP2 == true then
        local Tycoons = game:GetService("Workspace").Tycoons
        local function GetTycoon()
         for __,v in ipairs(Tycoons:GetChildren()) do
           if v.OwnerName.Value == game.Players.LocalPlayer.Name then
            return v.OwnerName.Parent.Name
           end
         end
        end
        
        local Trash = Tycoons[GetTycoon()].Trash
        
        
        local plr = {}
           
        for _, players in ipairs(Trash:GetChildren()) do
           table.insert(plr, players)
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
end
