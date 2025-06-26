game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Loading...",
    Text = "You cannot escape",
    Duration = 5
})
--Depth uneasy
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "It's Cold Here...",
    Desc = "I felt scared.",
    Reason = "Executed uneasy mode.",
    Image = "rbxassetid://17651731518"
})
--anti two
if game:GetService("ReplicatedStorage"):FindFirstChild("LOVE") then

    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You're already upset....", true)
    return false

end

local Sadness = Instance.new("Part")

Sadness.Name = "LOVE"

Sadness.Parent = game:GetService("ReplicatedStorage")

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You executed Uneasy Mode[V0.1].", true)

print(math.pi)
print(math.pow(2, 12))

--A combination of Insanity fog mode and Anzor's mode
wait(3)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).remind("You're feeling very uneasy right now.", true)

wait(5)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).titlelocation("Uneasy_Place", true)

--Can't
game:GetService("TextChatService").ChatWindowConfiguration.Enabled = false
game.SoundService.AmbientReverb = "Cave"

--VoidGlitched

coroutine.wrap(function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/GlitchVoid.lua"))()
	
end)()

--A258
coroutine.wrap(function()
    while true do
        wait(99)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/IR_A258.lua'))()
    end
end)()

--Dear(A variant of dread)
coroutine.wrap(function()
    while true do
        wait(math.random(300,530))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Dear.lua'))()
    end
end)()

--Materials
coroutine.wrap(function()
    while true do
        wait(math.random(1000,2000))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1)
loadstring(game:HttpGet('https://pastebin.com/raw/p3LXj0Lx'))()
    end
end)()

-- Colorful
coroutine.wrap(function()
    while true do
        wait(math.random(1000,2000))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1)
loadstring(game:HttpGet('https://pastebin.com/raw/MXW9rVV3'))()
    end
end)()

--Victrola

coroutine.wrap(function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Victrola.lua"))()
	
end)()

--Candle

coroutine.wrap(function()
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Candle.lua"))()
	
end)()

--Admiration
coroutine.wrap(function()
    while true do
        wait(math.random(60,100))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.5)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Admiration.lua'))()
    end
end)()

--Galena
coroutine.wrap(function()
    while true do
        wait(math.random(100,400))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(12)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Galena.lua'))()
    end
end)()

--Ahead
coroutine.wrap(function()
    while true do
        wait(math.random(71,300))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/Ahead.lua'))()
    end
end)()
--RTX
if getgenv().RTX then

    coroutine.wrap(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/RTX.lua"))()
    end)()
end
