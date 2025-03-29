local TextChatService = game:GetService("TextChatService")
local RBXSystem = TextChatService.TextChannels.RBXSystem

local messages = {
    "I love U",
    "Tomorrow will be fine",
    "I am U",
    "Listen to the wind outside the window",
    "Hello",
    "Forget Everything",
    "Lost in the dark",
    "Can you hear the knock on the door?",
    "Look around you",
    "Do you have to be alive?",
    "There's only emptiness outside the car",
    "This is last chance to escape",
    "Remember what you are doing",
    "It's late at night",
    "I can't sleep. Help me.",
    "Do you really want to know who you are?"
}

-- Set the probability for the first message to be the smallest
local probabilities = {
    0.05, -- First message has the smallest probability
    0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1
}

local function displayRandomMessage()
    local totalProbability = 0
    for _, prob in ipairs(probabilities) do
        totalProbability = totalProbability + prob
    end

    local randomValue = math.random() * totalProbability
    local cumulativeProbability = 0

    for i, prob in ipairs(probabilities) do
        cumulativeProbability = cumulativeProbability + prob
        if randomValue <= cumulativeProbability then
            RBXSystem:DisplaySystemMessage(messages[i])
            break
        end
    end
end

-- Set up a loop to display a random message every 60 seconds
while true do
    wait(60)
    displayRandomMessage()
end
