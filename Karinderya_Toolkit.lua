local StarterGui = game:GetService("StarterGui")

local Loader = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/KnorkzPH/KnorkzykiPH/refs/heads/main/Toolkit_GameHub_Loader.lua"))()'

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ToolkitLoaderGUI"
ScreenGui.ResetOnSpawn = false

local success = pcall(function()
    ScreenGui.Parent = game:GetService("CoreGui")
end)

if not success or not ScreenGui.Parent then
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 390, 0, 225)
Frame.Position = UDim2.new(0.5, -195, 0.5, -112)
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 10)

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(65, 65, 75)
Stroke.Thickness = 1
Stroke.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -55, 0, 40)
Title.Position = UDim2.new(0, 16, 0, 7)
Title.BackgroundTransparency = 1
Title.Text = "Toolkit Loader"
Title.TextColor3 = Color3.fromRGB(240, 240, 245)
Title.TextSize = 19
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -40, 0, 10)
Close.BackgroundColor3 = Color3.fromRGB(38, 38, 45)
Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(230, 230, 235)
Close.TextSize = 22
Close.Font = Enum.Font.Gotham
Close.Parent = Frame

Instance.new("UICorner", Close).CornerRadius = UDim.new(0, 6)

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local Message = Instance.new("TextLabel")
Message.Size = UDim2.new(1, -32, 0, 36)
Message.Position = UDim2.new(0, 16, 0, 45)
Message.BackgroundTransparency = 1
Message.Text = "Copy and paste it into your executor and execute it."
Message.TextColor3 = Color3.fromRGB(175, 175, 185)
Message.TextSize = 12
Message.Font = Enum.Font.Gotham
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left
Message.Parent = Frame

local CodeBox = Instance.new("TextBox")
CodeBox.Size = UDim2.new(1, -32, 0, 65)
CodeBox.Position = UDim2.new(0, 16, 0, 84)
CodeBox.BackgroundColor3 = Color3.fromRGB(27, 27, 33)
CodeBox.BorderSizePixel = 0
CodeBox.Text = Loader
CodeBox.TextColor3 = Color3.fromRGB(192, 205, 227)
CodeBox.TextSize = 11
CodeBox.Font = Enum.Font.Code
CodeBox.TextWrapped = true
CodeBox.TextEditable = false
CodeBox.ClearTextOnFocus = false
CodeBox.MultiLine = true
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Center
CodeBox.Parent = Frame

Instance.new("UICorner", CodeBox).CornerRadius = UDim.new(0, 6)

local CodePadding = Instance.new("UIPadding")
CodePadding.PaddingLeft = UDim.new(0, 9)
CodePadding.PaddingRight = UDim.new(0, 9)
CodePadding.PaddingTop = UDim.new(0, 6)
CodePadding.PaddingBottom = UDim.new(0, 6)
CodePadding.Parent = CodeBox

local CopyButton = Instance.new("TextButton")
CopyButton.Size = UDim2.new(1, -32, 0, 40)
CopyButton.Position = UDim2.new(0, 16, 0, 161)
CopyButton.BackgroundColor3 = Color3.fromRGB(143, 174, 213)
CopyButton.BorderSizePixel = 0
CopyButton.Text = "Copy Loader"
CopyButton.TextColor3 = Color3.fromRGB(18, 24, 32)
CopyButton.TextSize = 14
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Parent = Frame

Instance.new("UICorner", CopyButton).CornerRadius = UDim.new(0, 7)

CopyButton.MouseButton1Click:Connect(function()
    local copied = pcall(function()
        if setclipboard then
            setclipboard(Loader)
        elseif toclipboard then
            toclipboard(Loader)
        else
            error("Clipboard unavailable")
        end
    end)

    if copied then
        ScreenGui:Destroy()
    else
        CopyButton.Text = "Copy Failed"

        task.delay(1.5, function()
            if CopyButton.Parent then
                CopyButton.Text = "Copy Loader"
            end
        end)
    end
end)
