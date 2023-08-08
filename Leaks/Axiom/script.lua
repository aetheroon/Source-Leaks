--Checks
local UnsupportedClients = {
    "WRD-API"
}


for i,v in ipairs(UnsupportedClients) do
    if v == identifyexecutor() then
        warn('Unsupported Executor.')
    end
end

--entity
local entityLib = {
    plr = game.Players.LocalPlayer,
    char = game.Players.LocalPlayer.Character,
    humanoid = game.Players.LocalPlayer.Character.Humanoid,
    root = game.Players.LocalPlayer.Character.HumanoidRootPart,

    tp = function(pos)
        game.Players.LocalPlayer.character:MoveTo(pos)
    end,
    
    getClosestPlayer = function(studs)
        local closestPlayer = nil
        local closestDistance = math.huge
        local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local distance = (player.Character.HumanoidRootPart.Position - myPosition).magnitude
                if distance < closestDistance and distance <= studs then
                    closestPlayer = player
                   closestDistance = distance
                end
            end
        end
        return closestPlayer
    end,

    isVictimClose = function(player, studs)
        local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - myPosition).magnitude
            return distance <= studs
        end
    
        return false
    end,

    isVictimBehindWall = function(player)
        local myPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local targetPosition = player.Character.HumanoidRootPart.Position
    
        local raycastResult = workspace:Raycast(myPosition, targetPosition - myPosition, {player.Character})
    
        return raycastResult and raycastResult.Instance and raycastResult.Instance:IsDescendantOf(workspace) == false
    end
}


--Variables

local scripter = "Aetheron#8499"
local Cid = game:GetService("RbxAnalyticsService"):GetClientId()
local Plots = game:GetService("Workspace").Properties
local WebhookURL = "https://discord.com/api/webhooks/1082970376306425856/xd6Z7VYnCynQv1JcQkJvS_UnbU7ysbKcIEfINhJVvg7_FXWqJMSq30oaWrAlOqsvYCMM"

local localPlot = game:GetService("Workspace").Properties[game.Players.LocalPlayer.Name]
local ts = game:GetService("TweenService")
local localCar

local plr = game.Players.LocalPlayer
local stats = plr.Stats

local players = {}

game.Players.PlayerAdded:Connect(function(player)
    table.insert(players, player)
end)

local Discord = 'https://discord.gg/r2jfChC5Sw'


--function Main
function CheckLicense()
    local ListURL = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aetheronn/Axiom/main/bin/PremiumList"))()
    local List 
    for i,v in ipairs(ListURL) do
        List = v 
    end
    if List then
        if List == Cid then
            return 'Premium'
        end
    end
    return 'Normal'
end
    
function CheckKeyBypassable()
    if CheckLicense() == "Premium" then
         return false
    end
    return true
end

function GetKey()
    local AccessKey = loadstring(game:HttpGet('https://raw.githubusercontent.com/q3uyLjUe6vK6qKApHhtHjVMvRDekLUVV5RYRfWe/RaifunoLefwooSly/main/Youtube/Youtube.js'))()
    for i,v in pairs(AccessKey) do
        return v
    end
end



function Noclip(NoClipVal)
    if not NoClipVal then Clipping:Disconnect() return end
    Clipping = game:GetService("RunService").Stepped:connect(function()
        for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:IsA("Part") or v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end)
end

function InfJump(Val)
    if not Val then IJ:Disconnect() return end
    IJ = game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end)
end

function ClickTp(val)
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local connection
    if val then
        connection = mouse.Button1Down:Connect(function()
            entityLib.tp(Vector3.new(mouse.hit.p.X, mouse.hit.p.Y, mouse.hit.p.Z))
        end)
    else
        if connection then
            connection:Disconnect()
        end
    end
end

local p = game:GetService("Workspace").PoliceStation.PJobDesks
local b = game:GetService("RunService")

local function c()
    for d, e in pairs(p:GetChildren()) do
        if e.Temp:FindFirstChild("Paper") then
            local f = e.Temp.Paper.S.OFF.Text
            if f == "Theft" or f == "Murder" or f == "Breaking In" then
                fireclickdetector(e.A.C)
            else
                fireclickdetector(e.B.C)
            end
        end
    end
end
print("passed2")
local function g()
    for d, e in pairs(p:GetChildren()) do
        if not e.Temp:FindFirstChild("Paper") then
            fireclickdetector(e.Print.C)
        end
    end
end

local function h()
    g()
    c()
end

function PoliceClerkFarm(bool)
    if bool == true then
        b:BindToRenderStep("policeFarm", 1, h)
    else
        b:UnbindFromRenderStep("policeFarm")
    end
end

function TpToCar()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name][game.Players.LocalPlayer.Name..".Vehicle"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents.Drive:FireServer(ohInstance1)
end

function TpToHelicopter()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name].Helicopter.DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Drive Helicopter"]:FireServer(ohInstance1)
end

function TpToPrivateJet()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name]["Private Jet"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Fly plane"]:FireServer(ohInstance1)
end

function TpToBasicPlane()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name]["Small Plane"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Fly plane"]:FireServer(ohInstance1)
end

function VehicleTP(VehiclePath,VehiclePrimPart,TpPosition)
    VehiclePath.PrimaryPart = VehiclePath[VehiclePrimPart]
    VehiclePath:SetPrimaryPartCFrame(TpPosition)
end

function TpCar()
    VehicleTP(localPlot[game.Players.LocalPlayer.Name..".Vehicle"], 'DriveSeat', game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end

function ModifyStats(Cash, paycheck, bonus, aspiration)
    stats.Cash.Value = Cash
    stats.Paycheck.Value = paycheck
    stats.Bonus.Value = bonus
    
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old_index = mt.__index   
    mt.__index = function(a,b)
        if tostring(a) == "AspirationPoints" then
             if tostring(b) == "Value" then
                return aspiration
            end
        end
        return old_index(a,b)
    end
end

function SpoofValue(ValueName, ReturningValue)
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old_index = mt.__index   
    mt.__index = function(a,b)
        if tostring(a) == ValueName then
             if tostring(b) == "Value" then
                return ReturningValue
            end
        end
        return old_index(a,b)
    end
end
function TpHome()
    local Spawn = localPlot.PlotPos.Value
    entityLib.tp(Spawn)
end


function Notify(text)
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    OrionLib:MakeNotification({
        Name = "Axiom",
        Content = text,
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function GetIP()
    local ipEchoServiceUrl = "https://ipinfo.io/ip"
    local response = request({
        Url = ipEchoServiceUrl,
        Method = "GET"
    })
    if response.Success then
        return string.gsub(response.Body, "\n", "") -- Remove the newline character
    else
        warn("Failed to get user's IP address: " .. response.StatusCode)
        return nil
    end
end

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    } 
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print(".requested")
end


function Log()

    local date = os.date("*t")
    local embed = {
        ["title"] = "Axiom - Execution Log",
        ["description"] = "Join Script:\n```LUA\ngame:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..", '".. game:GetService("RbxAnalyticsService"):GetClientId().."', game.Players.LocalPlayer)```",
        ["color"] = 65280,
        ["fields"] = {
            {
                ["name"] = "Username",
                ["value"] = game.Players.LocalPlayer.Name
            },
            {
                ["name"] = "User ID",
                ["value"] = game.Players.LocalPlayer.UserId
            },
            {
                ["name"] = "Client",
                ["value"] = identifyexecutor()
            },

            {
                ["name"] = "Client ID",
                ["value"] = "```"..game:GetService("RbxAnalyticsService"):GetClientId().."```"
            },
        },
        ["footer"] = {
            ["text"] = date.month .. "/" .. date.day .. "/" .. date.year .. " " .. date.hour .. ":" .. date.min .. ":" .. date.sec
        }
    }
    SendMessageEMBED(WebhookURL, embed)
end

--Gui Shit
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Axiom",
    LoadingTitle = "Axiom - Roville",
    LoadingSubtitle = "Attached",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, 
       FileName = ""
    },
    Discord = {
       Enabled = true,
       Invite = "r2jfChC5Sw", 
       RememberJoins = false 
    },
    KeySystem = CheckKeyBypassable(), 
    KeySettings = {
       Title = "Axiom - Roville",
       Subtitle = "Key System",
       Note = "Join the discord to get key.(discord.gg/r2jfChC5Sw)",
       FileName = "AxiomKey",
       SaveKey = false,
       GrabKeyFromSite = false, 
       Key = GetKey()
    }
})

local AxiomResource = Instance.new("StringValue")
AxiomResource.Name = "Axiom Source"
AxiomResource.Parent = game.Players.LocalPlayer
AxiomResource.Value = "mod.PushRequest('Update')"



local Info = Window:CreateTab("Info")
Info:CreateSection("Info")
Info:CreateLabel("Coder: "..scripter)
Info:CreateLabel("Ui Toggle : Right Shift ")
Info:CreateParagraph({Title = "Supported Clients", Content="*Synapse\n*Script-Ware\n*Fluxus\n*Krnl\n*Valyse\n*Trigon"})


local Farm = Window:CreateTab("Farms")
Farm:CreateSection("Auto Farms")
Farm:CreateToggle({
    Name = "[Recommended] Rocket Engineer Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Rocket Engineer Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        getgenv().RocketFarm = Value
    end,
})

Farm:CreateToggle({
    Name = "[Recommended] Archeologist Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Archeologist Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        getgenv().ArchFarm = Value
    end,
})

Farm:CreateToggle({
    Name = "Banker Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Banker Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        getgenv().BankerFarm = Value
    end,
})

Farm:CreateToggle({
    Name = "Police Clerk Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Police Clerk Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        PoliceClerkFarm(Value)
    end,
})

Farm:CreateToggle({
    Name = "Teacher Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Teacher Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        getgenv().TeacherFarm = Value
    end,
})

Farm:CreateToggle({
    Name = "Dinerblox Cashier Farm",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Dinerblox Cashier Farm has been enabled.")
        end
        if Value == false then
            Notify("Teacher Farm has been disabled.")
        end
        getgenv().CashierFarm = Value
    end,
})


local Fake = Window:CreateTab("Fake Stats")
Fake:CreateSection("Fake")

local Cash
local PayCheck
local Bonus
local AspirationPoints

Fake:CreateInput({
    Name = "Cash amount",
    PlaceholderText = "1000",
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Cash = tonumber(txt)
    end,
})

Fake:CreateInput({
    Name = "PayCheck amount",
    PlaceholderText = "1000",
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        PayCheck = tonumber(txt)
    end,
})

Fake:CreateInput({
    Name = "Bonus amount",
    PlaceholderText = "1000",
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Bonus = tonumber(txt)
    end,
})

Fake:CreateInput({
    Name = "Aspiration Points amount",
    PlaceholderText = "1000",
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Aspiration = tonumber(txt)
    end,
})

Fake:CreateButton({
    Name = "Modify Stats",
    Callback = function()
       ModifyStats(Cash, PayCheck, Bonus, Aspiration)
       Notify("Modified!")
    end,
})

local body = Window:CreateTab("Custom Body Mods")
body:CreateSection("Modifications")
_G.BodyProps = {
    Height = nil,
    Width = nil,
    Depth = nil,
    Head = nil,
}
local heightslider = body:CreateSlider({
    Name = "Height Scale",
    Range = {0, 2},
    Increment = 0.5,
    Suffix = "Height",
    CurrentValue = 1,
    Flag = nil, 
    Callback = function(Value)
        _G.BodyProps.Height = Value
    end,
})
local widthslider = body:CreateSlider({
    Name = "Width Scale",
    Range = {0, 2},
    Increment = 0.5,
    Suffix = "Width",
    CurrentValue = 1,
    Flag = nil, 
    Callback = function(Value)
        _G.BodyProps.Width = Value
    end,
})
local depthslider = body:CreateSlider({
    Name = "Depth Scale",
    Range = {0, 2},
    Increment = 0.25,
    Suffix = "Depth",
    CurrentValue = 1,
    Flag = nil, 
    Callback = function(Value)
        _G.BodyProps.Depth = Value
    end,
})
local headslider = body:CreateSlider({
    Name = "Head Scale",
    Range = {0, 2},
    Increment = 0.5,
    Suffix = "Head",
    CurrentValue = 1,
    Flag = nil, 
    Callback = function(Value)
        _G.BodyProps.Head = Value
    end,
})

body:CreateButton({
    Name = "Modify",
    Callback = function()
        local ohString1 = "BodyHeightScale"
        local ohNumber2 = _G.BodyProps.Height
        
        game:GetService("ReplicatedStorage").AvatarCustomizeEvents.ChangeScaleVal:FireServer(ohString1, ohNumber2)
        
        
        local ohString1 = "BodyWidthScale"
        local ohNumber2 = _G.BodyProps.Width
        
        game:GetService("ReplicatedStorage").AvatarCustomizeEvents.ChangeScaleVal:FireServer(ohString1, ohNumber2)
        
        local ohString1 = "BodyDepthScale"
        local ohNumber2 = _G.BodyProps.Depth
        
        game:GetService("ReplicatedStorage").AvatarCustomizeEvents.ChangeScaleVal:FireServer(ohString1, ohNumber2)
        
        local ohString1 = "HeadScale"
        local ohNumber2 = _G.BodyProps.Head
        
        game:GetService("ReplicatedStorage").AvatarCustomizeEvents.ChangeScaleVal:FireServer(ohString1, ohNumber2)
               
        Notify("Modified.")
    end,
})

local Misc = Window:CreateTab("Misc")
Misc:CreateSection("Misc")
Misc:CreateSection("Character")
local hum = game.Players.LocalPlayer.Character.Humanoid
Misc:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = hum.WalkSpeed,
    Flag = "WalkSpeed", 
    Callback = function(Value)
        hum.WalkSpeed = Value
    end,
})

Misc:CreateSlider({
    Name = "Jump Power",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Power",
    CurrentValue = hum.JumpPower,
    Flag = "JumpPower", 
    Callback = function(Value)
        hum.JumpPower = Value
    end,
})

Misc:CreateSlider({
    Name = "Hip Height",
    Range = {0, 500},
    Increment = 1,
    Suffix = "Height",
    CurrentValue = hum.HipHeight,
    Flag = "HipHeight", 
    Callback = function(Value)
        hum.HipHeight = Value
    end,
})
Misc:CreateSection("Troll")

Misc:CreateParagraph({Title = "How kill seated user works. / TOS", Content = "The Kill Seated User kill's anyone sitting in your car. Make sure to use an alt or a new plot with nothing in it or nothing that you care about because the script teleports the car into the void and bulldozes the plot to get rid of the plot, This is just a warning so that you don't lose your progress.\nIf you lose a plot from this, don't complain to us about it."})
Misc:CreateButton({
    Name = "Kill Seated User",
    Callback = function()
        local Spawn = localPlot.PlotPos.Value
        local DownFrame = Spawn.Position.Y - 5000
        VehicleTP(localPlot[game.Players.LocalPlayer.Name..".Vehicle"], 'DriveSeat', CFrame.new(-2644.59, DownFrame, -323.897))
        wait(0.25)
        game:GetService("ReplicatedStorage").BuildingEvents.BulldozePlot:FireServer()
        Notify("Killed User.")
    end,
})


Misc:CreateSection("Other")

Misc:CreateToggle({
    Name = "Noclip",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("NoClip has been enabled.")
        end
        if Value == false then
            Notify("NoClip has been disabled.")
        end
        Noclip(Value)
    end,
})

Misc:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Inf Jump has been enabled.")
        end
        if Value == false then
            Notify("Inf Jump has been disabled.")
        end
        InfJump(Value)
    end,
})

Misc:CreateToggle({
    Name = "Click TP",
    CurrentValue = nil,
    Flag = nil, 
    Callback = function(Value)
        if Value == true then
            Notify("Click TP has been enabled.")
        end
        if Value == false then
            Notify("Click TP has been disabled.")
        end
        ClickTp(Value)
    end,
})

Misc:CreateButton({
    Name = "Tp Home [Fast]",
    Callback = function()
        TpHome()
        Notify("Teleported Home.")
       
    end,
})

Misc:CreateButton({
    Name = "Tp To Car [Fast]",
    Callback = function()
        if workspace.Properties[game.Players.LocalPlayer.Name][game.Players.LocalPlayer.Name..".Vehicle"].DriveSeatModel then
            TpToCar()
            Notify("Teleported to Car.")
        else
            Notify("Your car hasn't been spawned yet.")
        end
    end,
})


Misc:CreateButton({
    Name = "Bring Car",
    Callback = function()
        if workspace.Properties[game.Players.LocalPlayer.Name][game.Players.LocalPlayer.Name..".Vehicle"].DriveSeatModel then
            TpCar()
            Notify("Brought your car to you")
        else
            Notify("Your car hasn't been spawned yet or your car is glitched.")
        end
    end,
})

Misc:CreateButton({
    Name = "Tp To Helicopter [Fast]",
    Callback = function()
        if workspace.Properties[game.Players.LocalPlayer.Name].Helicopter.DriveSeatModel then
            TpToHelicopter()
            Notify("Teleported To Helicopter.")
        else
            Notify("Your helicopter hasn't been spawned yet.")
        end
    end,
})

Misc:CreateButton({
    Name = "Tp To Small Plane [Fast]",
    Callback = function()
        if workspace.Properties[game.Players.LocalPlayer.Name]["Small Plane"].DriveSeatModel then
            TpToBasicPlane()
            Notify("Teleported To Small Plane.")
        else
            Notify("Your plane hasn't been spawned yet.")
        end
    end,
})

Misc:CreateButton({
    Name = "Tp To Private Jet [Fast]",
    Callback = function()
        if  workspace.Properties[game.Players.LocalPlayer.Name]["Private Jet"].DriveSeatModel then
            TpToPrivateJet()
            Notify("Teleported To Private Jet.")
        else
            Notify("Your plane hasn't been spawned yet.")
        end
    end,
})

Misc:CreateSection("Groceries")
local Groceries
Misc:CreateInput({
    Name = "Groceries",
    PlaceholderText = 50,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Groceries = tonumber(txt)
    end,
})
Misc:CreateButton({
    Name = "Deliver Groceries",
    Callback = function()
        if Groceries == nil then
            Notify("Please input a grocery amount.")
        else
            game:GetService("ReplicatedStorage").CS.DeliverGroceries:FireServer(Groceries)
            Notify("Delivered")
        end
    end,
})
Misc:CreateSection("Get")
Misc:CreateButton({
    Name = "Brew Coffee",
    Callback = function()
        game:GetService("ReplicatedStorage").CS.Brew:FireServer()
        Notify("Brewed Coffee.")
    end,
})

Misc:CreateButton({
    Name = "Order Cupcake",
    Callback = function()
        local ohInstance1 = workspace.Model

        game:GetService("ReplicatedStorage").ActionEvents["Buy cupcake - $30"]:FireServer(ohInstance1)
        Notify("Ordered Cupcake.")
    end,
})

Misc:CreateButton({
    Name = "Bulldoze Plot [No Verification]",
    Callback = function()
        game:GetService("ReplicatedStorage").BuildingEvents.BulldozePlot:FireServer()
        Notify("Bulldozed Plot.")
    end,
})

Log()
--[[
local carmods = Window:CreateTab("Car Mods")
local Speed
local ReverseSpeed
local Height
local Bounce
local Suspension 


carmods:CreateSection("Car Mods")
carmods:CreateInput({
    Name = "Speed",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.MaxSpeed.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Speed = tonumber(txt)
    end,
})



carmods:CreateInput({
    Name = "Height",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.Height.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Height = tonumber(txt)
    end,
})

carmods:CreateInput({
    Name = "Reverse Speed",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.MaxReverseSpeed.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        ReverseSpeed = tonumber(txt)
    end,
})

carmods:CreateInput({
    Name = "Turn Speed",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.TurnSpeed.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        TurnSpeed = tonumber(txt)
    end,
})

carmods:CreateInput({
    Name = "Suspension",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.Suspension.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Suspension = tonumber(txt)
    end,
})

carmods:CreateInput({
    Name = "Bounce",
    PlaceholderText = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations.Bounce.Value,
    RemoveTextAfterFocusLost = false,
    Callback = function(txt)
        Bounce = tonumber(txt)
    end,
})

carmods:CreateButton({
    Name = "Mod Car",
    Callback = function()
        local config = localPlot[game.Players.LocalPlayer.Name..".Vehicle"].Configurations
        local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old_index = mt.__index   
    mt.__index = function(a,b)
        if tostring(a) == "MaxSpeed" then
             if tostring(b) == "Value" then
                return Speed
            end
        end
        return old_index(a,b)
    end
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old_index = mt.__index   
    mt.__index = function(a,b)
        if tostring(a) == "ReverseSpeed" then
             if tostring(b) == "Value" then
                return ReverseSpeed
            end
        end
        return old_index(a,b)
    end
        
        config.Height.Value = Height
        config.Suspension.Value = Suspension
        config.TurnSpeed.Value = TurnSpeed
        config.Bounce.Value = Bounce
       Notify("Modded Car.")
    end,
})
]]

--Check Loop
while true do
    wait(0.1)
    if getgenv().RocketFarm == true then
        local PartBoard = game:GetService("Workspace").RocketEngineer.PartBoard
        local Ltr = "A"

        function GetPart(Letter,Color)
            local ohString1 = "Part"..Letter
            local ohString2 = Color
            local ohBoolean3 = true

            game:GetService("ReplicatedStorage").ActionEvents["Grab parts"]:FireServer(ohString1, ohString2, ohBoolean3)
        end

        function GetPart2(Letter,Color)
            local ohString1 = "Part"..Letter
            local ohString2 = Color
            local ohBoolean3 = false

            game:GetService("ReplicatedStorage").ActionEvents["Grab parts"]:FireServer(ohString1, ohString2, ohBoolean3)
        end

        function Assemble()
            local ohInstance1 = workspace.RocketEngineer.AssembleBox
            game:GetService("ReplicatedStorage").ActionEvents["Assemble Part"]:FireServer(ohInstance1)
        end

        local Engine = PartBoard.Board['EngineFrame']
        local Rocket = PartBoard.Board['RocketFrame']

        local Delay = 2.75
        local Delay2 = 1.75

        wait(1)
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="B"
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="C"
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="D"
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="E"
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="F"
        GetPart(Ltr, Engine["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(3.5)

        --Rocket
        Ltr="A"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="B"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="C"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="D"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="E"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(Delay)
        Ltr="F"
        GetPart2(Ltr, Rocket["Part"..Ltr].clrText.Text)
        wait(Delay2)
        Assemble()
        wait(5)
    end

    if getgenv().TeacherFarm == true then


        local Workspace = game:GetService("Workspace")
        local Players = game:GetService("Players")
        
        local Player = Players.LocalPlayer
        
        local Closest = nil
        local Right = nil
        local Wrong = nil
        local Question_Raw = nil
        local Distance = 50
        for _, A_1 in next, Workspace:GetChildren() do
            local R = A_1:FindFirstChild("R")
            if R and A_1:FindFirstChild("Q", true) then
                local Player_Distance = Player:DistanceFromCharacter(R.Position)
                if Player_Distance < Distance then
                    Closest = A_1
                    Distance = Player_Distance
                end
            end
        end
        
        if Closest == nil then
            return warn(":(")
        else
            Right = Closest:WaitForChild("R")
            Wrong = Closest:WaitForChild("W")
            Question_Raw = Closest:FindFirstChild("Q", true)
        end
        
        if _G.Hooked ~= true then
            _G.Hooked = true
            local Old;
            Old = hookfunction(getrawmetatable(game).__namecall, function(...)
                local Method = getnamecallmethod()
                local Args = {...}
                if Method == "FireServer" and tostring(Args[1]) == "CursorUpdate" then
                    Args[2] = true
                end
                return Old(unpack(Args))
            end)
        end
        
        while Player:DistanceFromCharacter(Right.Position) <= 10  do
            local Question_Split = Question_Raw.Text:split(" = ")
            local Question_Answer = Question_Split[2]
            local Question_CorrectAnswer = loadstring(
                "return " .. Question_Split[1]
            )()
        
            if Question_Answer == tostring(Question_CorrectAnswer) then
                fireclickdetector(Right:FindFirstChildOfClass("ClickDetector"))
            else
                fireclickdetector(Wrong:FindFirstChildOfClass("ClickDetector"))
            end
        
            Question_Raw.Changed:wait()
            repeat
                wait()
            until #Question_Raw.Text > 1
        end
    end
    if getgenv().ArchFarm == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.GetCompass.Part.CFrame
        wait(2)

        local args = {
            [1] = workspace.Excevation.GetCompass
        }
        game:GetService("ReplicatedStorage").ActionEvents["Get compass"]:FireServer(unpack(args))
        wait(.5)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.DigArea.BASE.CFrame
        wait(.5)

         local args = {
            [1] = workspace.Excevation.DigArea.DigArea
        }
        game:GetService("ReplicatedStorage").ActionEvents.Excevate:FireServer(unpack(args))
        wait(6)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.CleanArea.CF.CFrame
        wait(2)

        local args = {
            [1] = workspace.Excevation.CleanArea.CleanItem
        }
        game:GetService("ReplicatedStorage").ActionEvents["Clean bones"]:FireServer(unpack(args))
        wait(6)

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Excevation.Package.Part.CFrame
        wait(2)
        
        local args = {
            [1] = workspace.Excevation.Package
        }
        game:GetService("ReplicatedStorage").ActionEvents.Package:FireServer(unpack(args))
        wait(3)
    end

    if getgenv().CashierFarm == true then
        local player = game.Players.LocalPlayer

        local cashiers = {}
        local stuff = workspace:GetDescendants()
        for i = 1, #stuff do local v = stuff[i]
            if v.Name == "Cashier" then
                table.insert(cashiers, v)
            end
        end


        for _ = 1, 3 do
            for i,v in pairs(cashiers[_].Customers:GetChildren()) do
                if v:FindFirstChild("ChoiceShow") then
                    if string.find(v.ChoiceShow.TextLabel.Text, "Fries") then
                        player.Character:MoveTo(cashiers[_].QSpot.Position)
                        wait(player:DistanceFromCharacter(cashiers[_].QSpot.Position)/player.Character.Humanoid.WalkSpeed+1)
                        fireclickdetector(cashiers[_].Choices["Bloxy Fries"].ClickDetector, 1)
                    elseif string.find(v.ChoiceShow.TextLabel.Text, "Cola") then
                        player.Character:MoveTo(cashiers[_].QSpot.Position)
                        wait(player:DistanceFromCharacter(cashiers[_].QSpot.Position)/player.Character.Humanoid.WalkSpeed+1)
                        fireclickdetector(cashiers[_].Choices["Bloxy Cola"].ClickDetector, 1)
                    elseif string.find(v.ChoiceShow.TextLabel.Text, "Burger") then
                        player.Character:MoveTo(cashiers[_].QSpot.Position)
                        wait(player:DistanceFromCharacter(cashiers[_].QSpot.Position)/player.Character.Humanoid.WalkSpeed+1)
                        fireclickdetector(cashiers[_].Choices["Bloxy Burger"].ClickDetector, 1)
                    end
                    wait(1)
                end
            end
        end
    end

    if getgenv().BankerFarm == true then
        local player = game.Players.LocalPlayer
        local job

        for i,v in pairs(workspace.Bank.BankerJob:GetChildren()) do
            if v:IsA("Model") and player:DistanceFromCharacter(v.Amm.Position) < 6 then
                job = v
            end
        end


        for i,v in pairs(job.Customers:GetChildren()) do
            if pcall(function() return v.ChoiceShow.TextLabel.Text end) then
                local choice = v.ChoiceShow
                local amount = string.split(choice.TextLabel.Text, "$")[2]
                local mm = tick()
                repeat
                    pcall(function()
                        fireclickdetector(job.Nums[amount].ClickDetector, 1)
                    end)
                    wait(.25)
                until job.Amm.SurfaceGui.TextLabel.Text == "$"..amount or tick() - mm > 2
                if string.find(choice.TextLabel.Text:lower(), "deposit") then
                    fireclickdetector(job.Choices.Deposit.CD, 1)
                else
                    fireclickdetector(job.Choices.Withdraw.CD, 1)
                end
                wait(.7)
            end
        end
    end


end