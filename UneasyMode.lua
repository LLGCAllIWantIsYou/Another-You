-- Uneasy Mode [v0.8]
-- Made by Nameless_MONSTER (Scripter) & FOCUSED_LIGHT (Helper)

if game:GetService("ReplicatedStorage"):FindFirstChild("CHECKED") then
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You're already upset....", true)
    return false
end

local Sadness = Instance.new("Part")
Sadness.Name = "CHECKED"
Sadness.Parent = game:GetService("ReplicatedStorage")

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

Library.ForceCheckbox = false -- 强制将 AddToggle 转为 AddCheckbox
Library.ShowToggleFrameInKeybinds = true

local Window = Library:CreateWindow({
	Title = "Uneasy Mode",
	Footer = "Version: v0.8_Beta | Made by Nameless_MONSTER & FOCUSED_LIGHT",
	Icon = 12537555348,
	NotifySide = "Right",
	ShowCustomCursor = true,
})

-- 可以在 https://lucide.dev/ 找到更多图标
local Tabs = {
	Main = Window:AddTab("模式准备", "clipboard-check"),
	["UI Settings"] = Window:AddTab("UI 设置", "settings"),
}

local PlayerAttributesGroup = Tabs.Main:AddLeftGroupbox("玩家属性", "chart-bar-stacked")

PlayerAttributesGroup:AddToggle("CanJump", {
	Text = "启用跳跃",
	Tooltip = "开启后你可以在任何时间跳跃", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = false, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

PlayerAttributesGroup:AddToggle("CanSprint", {
	Text = "体力系统",
	Tooltip = "开启后你可以使用疾跑功能", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = true, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

PlayerAttributesGroup:AddDivider()

local MaterialsGroup = Tabs.Main:AddRightGroupbox("材质光影", "sun")

MaterialsGroup:AddToggle("ReSkin", {
	Text = "重制纹理",
	Tooltip = "开启后房间的纹理会改变", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = true, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

MaterialsGroup:AddToggle("ReShape", {
	Text = "改变建模",
	Tooltip = "开启后房间内的部分建模会出现变化", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = false, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

MaterialsGroup:AddToggle("RTX", {
	Text = "光线追踪",
	Tooltip = "开启后全图会出现光影效果, 低配置建议关闭", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = false, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = true, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

MaterialsGroup:AddDivider()

local GameFeaturesGroup = Tabs.Main:AddLeftGroupbox("游戏功能", "cpu")

GameFeaturesGroup:AddToggle("DisabledRift", {
	Text = "时空封锁",
	Tooltip = "开启后第0门和100门的裂缝都将无法使用", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = true, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

GameFeaturesGroup:AddToggle("ChoiceHellDupe", {
	Text = "地狱选择",
	Tooltip = "开启后Dupe的假门牌号会与真门一致", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = false, -- 默认值（true / false）
	Disabled = true, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = false, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

GameFeaturesGroup:AddDropdown("SetLights", {
	Values = { "正常", "停电", "失控" },
	Default = 1, -- 值的数字索引 / 字符串
	Multi = false, -- true / false, 允许多选
	Text = "供电设置",
	Tooltip = "除0号门, 50号门和100号门之外所有房间都会按照选项的不同而变化", -- 悬停在下拉框上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在下拉框上显示的信息

	Searchable = false, -- true / false, 使下拉框可搜索（适用于长值列表）
	Disabled = false, -- 禁用下拉框（true / false）
	Visible = true, -- 使下拉框不可见（true / false）
})

GameFeaturesGroup:AddDivider()

local OthersGroup = Tabs.Main:AddRightGroupbox("其他", "aperture")

OthersGroup:AddToggle("TTTrueGodmode", {
	Text = "\"无敌模式\"",
	Tooltip = "<font color='rgb(255,0,0)'><s>千万不要</s></font>一定要开启这个选项!!!", -- 悬停在切换开关上时显示的信息
	DisabledTooltip = "已禁用", -- 当禁用时悬停在切换开关上显示的信息

	Default = false, -- 默认值（true / false）
	Disabled = false, -- 禁用切换开关（true / false）
	Visible = true, -- 使切换开关不可见（true / false）
	Risky = true, -- 使文本变红（颜色可通过 Library.Scheme.Red 更改）（默认值 = false）
})

OthersGroup:AddDivider()

local ExecuteGroup = Tabs.Main:AddLeftGroupbox("配置与运行", "play")

local Start = ExecuteGroup:AddButton({
	Text = "开始",
	Func = function()
		print("已确认配置! 模式开始运行")
		Library:Unload()
		
		if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 0 then
            warn("You shouldn't be here. GET OUT!")
            if replicatesignal then
                replicatesignal(game.Players.LocalPlayer.Kill)
            else
                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            end
            game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Error: Not The Right Place [Door "..game.ReplicatedStorage.GameData.LatestRoom.Value.."≠0]"
            firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You can only execute the script at Door 0.", "Please remember this!"}, 'Blue')
        end

        local caption = game.Players.LocalPlayer:WaitForChild("PlayerGui").MainUI.MainFrame.Caption
        caption.TextColor3 = Color3.fromRGB(0, 0, 0)
        -- Hello
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Loading...",
            Text = "You can't escape!",
            Duration = 2,
            Icon = "rbxassetid://12537555348"
        })
        task.wait(2)
        -- Depth uneasy
        task.spawn(function()
            local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

            ---====== Display achievement ======---
            achievementGiver({
                Title = "It's Cold Here...",
                Desc = "I felt scared.",
                Reason = "Executed \"Uneasy Mode\".",
                Image = "rbxassetid://17651731518"
            })

            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Uneasy Mode executed successfully!", true)
            task.wait(2)
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Version: v0.8_Beta.", true)
            task.wait(2)
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Made by Nameless_MONSTER.", true)
            task.wait(2)
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Additional Help: FOCUSED_LIGHT.", true)

            -- A combination of Insanity fog mode and Anzor's mode
            task.wait(3)
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).remind("You're feeling very uneasy right now.", true)
        end)
        
        print(math.pi)
        print(math.pow(2, 12))
        
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).titlelocation("The Uneasy Place", true)
                end
            end)
        end)

        -- Can't
        game:GetService("TextChatService").ChatWindowConfiguration.Enabled = false
        game.SoundService.AmbientReverb = "Cave"

        -- A258
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(99)
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(2)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/IR_A258.lua'))()
                    end
                end
            end)
        end)

        -- Lurk
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(1008)
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(521)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/Lurk.lua'))()
                    end
                end
            end)
        end)

        -- doorssndaa
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/Doors-Custom-Things/refs/heads/main/DoorsSound.lua"))()
                end
            end)
        end)

        -- Cave Ambience
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/Cave-Ambience.lua"))()
                end
            end)
        end)

        -- Candle2
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/ca.lua"))()
                end
            end)
        end)

        -- New Sound
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/EntityUneasySound.lua"))()
                end
            end)
        end)

        -- Dear (A variant of dread)
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(300,530))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(1)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Dear.lua'))()
                    end
                end
            end)
        end)

        -- Victrola (check78 but I fix it)
        task.spawn(function()	
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Victrola.lua"))()	
        end)

        -- Admiration
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(60,100))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(0.5)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Admiration.lua'))()
                    end
                end
            end)
        end)

        -- Galena
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(100,400))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(12)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Galena.lua'))()
                    end
                end
            end)
        end)

        -- Ahead (Anzor)
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(71,300))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(1)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Ahead.lua'))()
                    end
                end
            end)
        end)

        -- SHY
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        local sctm = math.random(40,100)
                        task.wait(sctm)
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/ShY.lua"))()
                    end
                end
            end)
        end)

        -- ambience sound1
        task.spawn(function()
            while true do
                local sb = math.random(60,100)
                task.wait(sb)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/MP3player.lua"))()
            end
        end)

        -- Room 50, Room 100 Light Shatter
        task.spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/50.lua"))()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/100.lua"))()
        end)
        
        -- House number prefix (X-001)
        task.spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/S-.lua"))()
        end)

        -- Specter
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(100,420))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Specter.lua'))()
                    end
                end
            end)
        end)

        -- Scream
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(50,514))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait(0.5)
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Scream.lua'))()
                    end
                end
            end)
        end)

        -- LightRed
        task.spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Light.lua"))()
        end)

        -- The BOILED ONE [Credits to OG Hunger]
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(250,500))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Theboiledone.lua'))()
                    end
                end
            end)
        end)

    -- A-55
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        local ok = math.random(290,377)
                        task.wait(ok)
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/A-55.lua"))() 
                    end
                end
            end)
        end)

        -- Overseer eyes [check78] C87FM
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        task.wait(math.random(500,991))
                        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                        task.wait()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/OverseerEyes.lua'))()
                    end
                end
            end)
        end)

        -- Bliss but bad
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                    while true do
                        local sm = math.random(900,1000)
                        task.wait(sm)
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Bliss.lua"))()
                    end
                end
            end)
        end)

        -- BOSS ENTITY-001 (FOCUS & ASH_Uranium235)
        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                local currentValue = game.ReplicatedStorage.GameData.LatestRoom.Value
                if currentValue == 50 then
                    task.wait(10)
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/MyScript/Assets/ASH_Entity-001.lua"))()
                else
                    if math.random(1, 100000) <= 235 then
                        local function CheckSpawn()
                            if workspace.Ambience_Seek.Playing then
                                CheckSpawn()
                                return
                            end
                            game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/MyScript/Assets/ASH_Entity-001.lua"))()
                        end
                        CheckSpawn()
                    end
                end
            end)
        end)

        -- Change the Guiding Light
        task.spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/MyScript/UneasyMode/Change_GuidingLight.lua"))()
        end)

        -- Can Jump
        if Toggles.CanJump and Toggles.CanJump.Value then
            task.spawn(function()
                game.Players.LocalPlayer.Character:SetAttribute("CanJump", true)
            end)
        end

        -- Stamina System (FOCUS)
        if Toggles.CanSprint and Toggles.CanSprint.Value then
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/StaminaSystem.lua"))()
            end)
        end

        -- ReSkin
        if Toggles.ReSkin and Toggles.ReSkin.Value then
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/icherryKardes.lua"))() -- materials map (iCherrykardes)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/Doors-Custom-Things/refs/heads/main/DoorsMaterials.lua"))() -- Door Materials
                -- Remake Entities
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/OgRush.lua"))()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/NMAmbush.lua"))()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/GlitchHalt.lua"))()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/ScaryEyes.lua"))()
            end)
        end

        -- Change Shape
        if Toggles.ReShape and Toggles.ReShape.Value then
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Shape.lua"))()
            end)
        end

        -- RTX
        if Toggles.RTX and Toggles.RTX.Value then
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/RTX.lua"))()
            end)
        end

        -- Disabled Rift
        if Toggles.DisabledRift and Toggles.DisabledRift.Value then
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/MyScript/UneasyMode/DisabledRift.lua"))()
            end)
        end

        -- Choice Hell (Super Dupe)
        if Toggles.ChoiceHellDupe and Toggles.ChoiceHellDupe.Value then --[[ 正在制作中... ]] end
        
        -- Set Lights
        if Options.SetLights.Value == "正常" then
            print("There is no fault in the power supply system.")
        elseif Options.SetLights.Value == "停电" then
            task.spawn(function()
                game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                    local Lights = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:FindFirstChild("Light_Fixtures")
                    if Lights then
                        Lights:Destroy()
                    end
                    local Chandelier = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:FindFirstChild("Chandelier")
                    if Chandelier then
                        Chandelier:Destroy()
                    end
                end)
            end)
        elseif Options.SetLights.Value == "失控" then
            task.spawn(function()
                game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                    local Range = math.random(1, 100)
                    if Range <= 50 then
                        ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
                        ModuleEvents.flicker(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value], 99999)
                    elseif Range >= 50 then
                        ModuleEvents = require(game:GetService("ReplicatedStorage").ClientModules.Module_Events)
                        ModuleEvents.shatter(workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value])
                    end
                end)
            end)
        end
        -- "Godmode" 😱😱😱
        if Toggles.TTTrueGodmode and Toggles.TTTrueGodmode.Value == false then
            print("Good! No Godmode.")
        else
            warn("I'm Loser! I open Godmode.")
            task.spawn(function()
                game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
                    if replicatesignal then
                        replicatesignal(game.Players.LocalPlayer.Kill)
                    else
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    end
                    game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "NULL"
                    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You were eaten back.", "Because you couldn't bear the power of the Godmode."}, 'Blue')
                    game.Players.LocalPlayer:Kick("你还开上无敌模式了想屁吃呢 🤣👉🤡")
                end)
            end)
        end

        task.wait(2)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/WarningUI.lua"))()

        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
	
	DoubleClick = true,
	Tooltip = "按下此按钮会确认配置并开始运行模式",
	DisabledTooltip = "已禁用",
	Disabled = false,
	Visible = true,
	Risky = false,
})

local Reset = ExecuteGroup:AddButton({
	Text = "重置",
	Func = function()
		print("配置已全部恢复默认!")
		Toggles.CanJump:SetValue(false)
		Toggles.CanSprint:SetValue(true)
		Toggles.ReSkin:SetValue(true)
		Toggles.ReShape:SetValue(false)
		Toggles.RTX:SetValue(false)
		Toggles.DisabledRift:SetValue(true)
		Toggles.ChoiceHellDupe:SetValue(false)
		Options.SetLights:SetValue("正常")
		Toggles.TTTrueGodmode:SetValue(false)
	end,
	DoubleClick = true,
	Tooltip = "按下此按钮会把配置恢复到默认状态",
	DisabledTooltip = "已禁用",
	Disabled = false,
	Visible = true,
	Risky = false,
})

ExecuteGroup:AddDivider()

-- UI 设置
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("菜单", "wrench")

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "打开按键绑定菜单",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "自定义光标",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "通知位置",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI 缩放",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("菜单绑定")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "菜单按键绑定" })

MenuGroup:AddButton("卸载", function()
    Sadness:Destroy()
	Library:Unload()
end)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("UneasyMode")
SaveManager:SetFolder("UneasyMode/doors")
SaveManager:SetSubFolder("ModeSettings")

SaveManager:BuildConfigSection(Tabs["UI Settings"])

ThemeManager:ApplyToTab(Tabs["UI Settings"])

SaveManager:LoadAutoloadConfig()
