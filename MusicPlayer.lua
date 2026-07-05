local player = game.Players.LocalPlayer
local key = "CobraStudioFreeScripts1291"
local keyEntered = false

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui
screenGui.ResetOnSpawn = false

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 300, 0, 200)
keyFrame.Position = UDim2.new(0.5, -150, 0.3, 0)
keyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
keyFrame.BackgroundTransparency = 0.15
keyFrame.BorderSizePixel = 2
keyFrame.BorderColor3 = Color3.fromRGB(255, 200, 0)
keyFrame.Active = true
keyFrame.Draggable = true
keyFrame.Parent = screenGui

local keyTitle = Instance.new("TextLabel")
keyTitle.Size = UDim2.new(1, 0, 0.2, 0)
keyTitle.Position = UDim2.new(0, 0, 0, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "Key System 🔑"
keyTitle.TextColor3 = Color3.fromRGB(255, 200, 0)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.GothamBold
keyTitle.Parent = keyFrame

local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0.8, 0, 0.2, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.25, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyInput.BackgroundTransparency = 0.3
keyInput.BorderSizePixel = 1
keyInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyInput.PlaceholderText = "Enter Key"
keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
keyInput.Text = ""
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.TextScaled = true
keyInput.Font = Enum.Font.Gotham
keyInput.ClearTextOnFocus = false
keyInput.Parent = keyFrame

local keyButton = Instance.new("TextButton")
keyButton.Size = UDim2.new(0.4, 0, 0.2, 0)
keyButton.Position = UDim2.new(0.3, 0, 0.5, 0)
keyButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
keyButton.BackgroundTransparency = 0.2
keyButton.BorderSizePixel = 2
keyButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
keyButton.Text = "UNLOCK"
keyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keyButton.TextScaled = true
keyButton.Font = Enum.Font.GothamBold
keyButton.Parent = keyFrame

local keyStatus = Instance.new("TextLabel")
keyStatus.Size = UDim2.new(1, 0, 0.15, 0)
keyStatus.Position = UDim2.new(0, 0, 0.75, 0)
keyStatus.BackgroundTransparency = 1
keyStatus.Text = ""
keyStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
keyStatus.TextScaled = true
keyStatus.Font = Enum.Font.Gotham
keyStatus.Parent = keyFrame

local musicFrame = Instance.new("Frame")
musicFrame.Size = UDim2.new(0, 350, 0, 220)
musicFrame.Position = UDim2.new(0.5, -175, 0.1, 0)
musicFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
musicFrame.BackgroundTransparency = 0.15
musicFrame.BorderSizePixel = 2
musicFrame.BorderColor3 = Color3.fromRGB(255, 50, 50)
musicFrame.Active = true
musicFrame.Draggable = true
musicFrame.Visible = false
musicFrame.Parent = screenGui

local musicTitle = Instance.new("TextLabel")
musicTitle.Size = UDim2.new(1, 0, 0.15, 0)
musicTitle.Position = UDim2.new(0, 0, 0, 0)
musicTitle.BackgroundTransparency = 1
musicTitle.Text = "Music Player By: CobraStudio 😈"
musicTitle.TextColor3 = Color3.fromRGB(255, 50, 50)
musicTitle.TextScaled = true
musicTitle.Font = Enum.Font.GothamBold
musicTitle.Parent = musicFrame

local musicInput = Instance.new("TextBox")
musicInput.Size = UDim2.new(0.8, 0, 0.2, 0)
musicInput.Position = UDim2.new(0.1, 0, 0.2, 0)
musicInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
musicInput.BackgroundTransparency = 0.3
musicInput.BorderSizePixel = 1
musicInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
musicInput.PlaceholderText = "Enter Music ID"
musicInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
musicInput.Text = ""
musicInput.TextColor3 = Color3.fromRGB(255, 255, 255)
musicInput.TextScaled = true
musicInput.Font = Enum.Font.Gotham
musicInput.ClearTextOnFocus = false
musicInput.Parent = musicFrame

local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0.3, 0, 0.2, 0)
playButton.Position = UDim2.new(0.1, 0, 0.45, 0)
playButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
playButton.BackgroundTransparency = 0.2
playButton.BorderSizePixel = 2
playButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
playButton.Text = "PLAY"
playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playButton.TextScaled = true
playButton.Font = Enum.Font.GothamBold
playButton.Parent = musicFrame

local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0.3, 0, 0.2, 0)
stopButton.Position = UDim2.new(0.6, 0, 0.45, 0)
stopButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
stopButton.BackgroundTransparency = 0.2
stopButton.BorderSizePixel = 2
stopButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
stopButton.Text = "STOP"
stopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
stopButton.TextScaled = true
stopButton.Font = Enum.Font.GothamBold
stopButton.Parent = musicFrame

local musicStatus = Instance.new("TextLabel")
musicStatus.Size = UDim2.new(1, 0, 0.15, 0)
musicStatus.Position = UDim2.new(0, 0, 0.7, 0)
musicStatus.BackgroundTransparency = 1
musicStatus.Text = "Stopped"
musicStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
musicStatus.TextScaled = true
musicStatus.Font = Enum.Font.Gotham
musicStatus.Parent = musicFrame

local exitButton = Instance.new("TextButton")
exitButton.Size = UDim2.new(0.15, 0, 0.15, 0)
exitButton.Position = UDim2.new(0.85, 0, 0.85, 0)
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.BackgroundTransparency = 0.3
exitButton.BorderSizePixel = 1
exitButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
exitButton.Text = "X"
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.TextScaled = true
exitButton.Font = Enum.Font.GothamBold
exitButton.Parent = musicFrame

local currentSound = nil
local isPlaying = false

local function playMusic()
    if not keyEntered then return end
    local musicId = musicInput.Text
    if musicId == "" then
        musicStatus.Text = "Enter ID"
        musicStatus.TextColor3 = Color3.fromRGB(255, 200, 0)
        return
    end
    
    if isPlaying then
        if currentSound then
            currentSound:Stop()
            currentSound:Destroy()
            currentSound = nil
        end
    end
    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. musicId
    sound.Volume = 1
    sound.Looped = true
    sound.Parent = game:GetService("SoundService")
    sound:Play()
    
    local sound2 = Instance.new("Sound")
    sound2.SoundId = "rbxassetid://" .. musicId
    sound2.Volume = 1
    sound2.Looped = true
    sound2.Parent = game.Workspace
    sound2:Play()
    
    currentSound = sound
    isPlaying = true
    musicStatus.Text = "Playing"
    musicStatus.TextColor3 = Color3.fromRGB(0, 255, 0)
end

local function stopMusic()
    if currentSound then
        currentSound:Stop()
        currentSound:Destroy()
        currentSound = nil
    end
    
    for _, sound in pairs(game.Workspace:GetChildren()) do
        if sound:IsA("Sound") then
            sound:Stop()
            sound:Destroy()
        end
    end
    
    for _, sound in pairs(game:GetService("SoundService"):GetChildren()) do
        if sound:IsA("Sound") then
            sound:Stop()
            sound:Destroy()
        end
    end
    
    isPlaying = false
    musicStatus.Text = "Stopped"
    musicStatus.TextColor3 = Color3.fromRGB(150, 150, 150)
end

keyButton.MouseButton1Click:Connect(function()
    if keyInput.Text == key then
        keyEntered = true
        keyFrame.Visible = false
        musicFrame.Visible = true
    else
        keyStatus.Text = "Invalid Key"
        keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

playButton.MouseButton1Click:Connect(playMusic)
stopButton.MouseButton1Click:Connect(stopMusic)

exitButton.MouseButton1Click:Connect(function()
    stopMusic()
    screenGui:Destroy()
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Return then
        if musicInput:IsFocused() and keyEntered then
            playMusic()
        end
        if keyInput:IsFocused() and not keyEntered then
            if keyInput.Text == key then
                keyEntered = true
                keyFrame.Visible = false
                musicFrame.Visible = true
            else
                keyStatus.Text = "Invalid Key"
                keyStatus.TextColor3 = Color3.fromRGB(255, 0, 0)
            end
        end
    end
end)
