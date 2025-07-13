-- Uneasy Mode [v0.45]
-- Made by Nameless_MONSTER (Scripter) & FOCUSED_LIGHT (Helper)

--[[
Settings, can modify some materials or player attributes, and so on.
The following is the default config.

For Example:
getgenv().Settings = {
    CanJump = false,
    CanSprint = true,
    ReMaterials = true,
    RTX = false,
    Godmode = nil
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/Another-You/refs/heads/main/UneasyMode.lua"))()
]]

if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 0 then
    warn("You shouldn't be here. GET OUT!")
    if replicatesignal then
        replicatesignal(game.Players.LocalPlayer.Kill)
    else
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
    game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Error: Not The Right Place ["..game.ReplicatedStorage.GameData.LatestRoom.Value.."≠0]"
    firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"You can only execute the script at Door 0.", "Please remember this!"}, 'Blue')
end

local caption = game.Players.LocalPlayer:WaitForChild("PlayerGui").MainUI.MainFrame.Caption
caption.TextColor3 = Color3.fromRGB(0, 0, 0)
-- Hello
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loading...",
    Text = "You can't escape!",
    Duration = 5,
    Icon = "rbxassetid://12537555348"
})
-- Depth uneasy
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "It's Cold Here...",
    Desc = "I felt scared.",
    Reason = "Executed \"Uneasy Mode\".",
    Image = "rbxassetid://17651731518"
})
-- anti two (Muhammad)
if game:GetService("ReplicatedStorage"):FindFirstChild("LOVE") then

    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You're already upset....", true)
    return false

end

local Sadness = Instance.new("Part")
Sadness.Name = "LOVE"
Sadness.Parent = game:GetService("ReplicatedStorage")

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Uneasy Mode executed successfully!", true)
task.wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Version: v0.45_Beta.", true)
task.wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Made by LLGCAllIWantIsYou.", true)
task.wait(2)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Additional Help: Focuslol666.", true)

print(math.pi)
print(math.pow(2, 12))

-- A combination of Insanity fog mode and Anzor's mode
task.wait(3)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).remind("You're feeling very uneasy right now.", true)

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
    while true do
        task.wait(99)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(2)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/IR_A258.lua'))()
    end
end)

-- DoorsMaterials

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/Doors-Custom-Things/refs/heads/main/DoorsMaterials.lua"))()
	
end)

-- Lurk
task.spawn(function()
    while true do
        task.wait(1008)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(521)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/Lurk.lua'))()
    end
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
    while true do
        task.wait(math.random(300,530))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(1)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Dear.lua'))()
    end
end)

-- Victrola (check78 but I fix it)

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Victrola.lua"))()
	
end)

-- Stamina System (FOCUS)
if getgenv().Settings.CanSprint then
    task.spawn(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/StaminaSystem.lua"))()
            end
        end)
    end)
end

-- Admiration
task.spawn(function()
    while true do
        task.wait(math.random(60,100))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Admiration.lua'))()
    end
end)

-- Galena
task.spawn(function()
    while true do
        task.wait(math.random(100,400))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(12)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Galena.lua'))()
    end
end)

-- Ahead (Anzor)
task.spawn(function()
    while true do
        task.wait(math.random(71,300))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(1)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Ahead.lua'))()
    end
end)

-- Z-367 Pandemonium (dripcapybara)

task.spawn(function()
 
    while true do
 
        local sctm = math.random(4500,5600)
 
        task.wait(sctm)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))() 

    end

end)

-- SHY

task.spawn(function()
 
    while true do
 
        local sctm = math.random(40,100)
 
        task.wait(sctm)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/ShY.lua"))()

    end

end)

-- ambience sound1

task.spawn(function()
 
    while true do
 
        local sb = math.random(60,100)
 
        task.wait(sb)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/green-fog/refs/heads/main/MP3player.lua"))()

    end

end)

-- eyes scary

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/ScaryEyes.lua"))()
	
end)

-- House number prefix (X-001)

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/S-.lua"))()
	
end)

-- Specter
task.spawn(function()
    while true do
        task.wait(math.random(100,420))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Specter.lua'))()
    end
end)

-- OG Rush

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/OgRush.lua"))()
	
end)

-- NM ambush

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/NMAmbush.lua"))()
	
end)

-- Scream
task.spawn(function()
    while true do
        task.wait(math.random(50,514))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait(0.5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Scream.lua'))()
    end
end)

-- LightRed

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Light.lua"))()
	
end)

-- HaltGlitch (glitch ambush made it)

task.spawn(function()
	
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/GlitchHalt.lua"))()
	
end)

-- The BOILED ONE [Credits to OG Hunger]
task.spawn(function()
    while true do
        task.wait(math.random(250,500))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Theboiledone.lua'))()
    end
end)

-- A-55

task.spawn(function()
 
    while true do
 
        local ok = math.random(290,377)
 
        task.wait(ok)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/A-55.lua"))() 

    end

end)

-- Overseer eyes [check78] C87FM
task.spawn(function()
    while true do
        task.wait(math.random(500,991))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        task.wait()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/OverseerEyes.lua'))()
    end
end)

-- Bliss but bad
task.spawn(function()
 
    while true do
 
        local sm = math.random(900,1000)
 
        task.wait(sm)

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Bliss.lua"))()

    end

end)

-- Can Jump
if getgenv().Settings.CanJump then
    task.spawn(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                game.Players.LocalPlayer.Character:SetAttribute("CanJump", true)
            end
        end)
    end)
end

-- Stamina System (FOCUS)
if getgenv().Settings.CanSprint then
    task.spawn(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/RbxScripts/refs/heads/main/DOORS/StaminaSystem.lua"))()
            end
        end)
    end)
end

-- materials map (iCherrykardes)
if getgenv().Settings.ReMaterials then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/icherryKardes.lua"))()
    end)
end

-- RTX (idk fog)
if getgenv().Settings.RTX then
    task.spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/RTX.lua"))()
    end)
end

-- "Godmode" 😱😱😱
if getgenv().Settings.Godmode == nil or getgenv().Settings.Godmode == false then
    return
else
    task.spawn(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if game.ReplicatedStorage.GameData.LatestRoom.Value == 1 then
                if replicatesignal then
                    replicatesignal(game.Players.LocalPlayer.Kill)
                else
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                end
                game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Being Eaten Back By Godmode"
                firesignal(game.ReplicatedStorage.RemotesFolder.DeathHint.OnClientEvent, {"还想要无敌模式你想屁吃🤣👉🤡"}, 'Blue')
            end
        end)
    end)
end

task.wait(5)

loadstring(request({Url="https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/WarningUI.lua"}).Body)()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game), workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
