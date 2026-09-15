local CoreGui = game:GetService("CoreGui")

local DiscordLink = "https://discord.gg/RQRZ7XkfCy"
local ScriptURL = "https://api.jnkie.com/api/v1/luascripts/public/4a486c7d3a528d95c98c03ed00c72423f33969a6d9da657b8143c21f2a175bc2/download"

pcall(function()
    local old = CoreGui:FindFirstChild("PremiumScriptLoader")
    if old then
        old:Destroy()
    end
end)

local Gui = Instance.new("ScreenGui")
Gui.Name = "PremiumScriptLoader"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.Size = UDim2.new(0.92, 0, 0, 340)
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.BorderSizePixel = 0
Main.Parent = Gui

local MainConstraint = Instance.new("UISizeConstraint")
MainConstraint.MinSize = Vector2.new(300, 310)
MainConstraint.MaxSize = Vector2.new(560, 360)
MainConstraint.Parent = Main

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(55, 55, 55)
MainStroke.Thickness = 1
MainStroke.Transparency = 0.2
MainStroke.Parent = Main

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, -32, 0, 52)
Header.Position = UDim2.fromOffset(16, 12)
Header.BackgroundTransparency = 1
Header.Parent = Main

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -48, 0, 27)
Title.BackgroundTransparency = 1
Title.Text = "Karinderya Launcher"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local Subtitle = Instance.new("TextLabel")
Subtitle.Name = "Subtitle"
Subtitle.Size = UDim2.new(1, -48, 0, 20)
Subtitle.Position = UDim2.fromOffset(0, 28)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Premium access • Ready to execute"
Subtitle.TextColor3 = Color3.fromRGB(145, 145, 145)
Subtitle.TextSize = 11
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = Header

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.fromOffset(32, 32)
Close.AnchorPoint = Vector2.new(1, 0)
Close.Position = UDim2.new(1, 0, 0, 1)
Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Close.BorderSizePixel = 0
Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(215, 215, 215)
Close.TextSize = 22
Close.Font = Enum.Font.GothamMedium
Close.AutoButtonColor = true
Close.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = Close

Close.MouseButton1Click:Connect(function()
    if Gui and Gui.Parent then
        Gui:Destroy()
    end
end)

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -32, 1, -82)
Content.Position = UDim2.fromOffset(16, 70)
Content.BackgroundTransparency = 1
Content.Parent = Main

local NewsPanel = Instance.new("Frame")
NewsPanel.Name = "NewsPanel"
NewsPanel.Size = UDim2.new(0.64, -6, 1, 0)
NewsPanel.Position = UDim2.fromOffset(0, 0)
NewsPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
NewsPanel.BorderSizePixel = 0
NewsPanel.Parent = Content

local NewsCorner = Instance.new("UICorner")
NewsCorner.CornerRadius = UDim.new(0, 12)
NewsCorner.Parent = NewsPanel

local NewsPadding = Instance.new("UIPadding")
NewsPadding.PaddingTop = UDim.new(0, 15)
NewsPadding.PaddingBottom = UDim.new(0, 12)
NewsPadding.PaddingLeft = UDim.new(0, 15)
NewsPadding.PaddingRight = UDim.new(0, 12)
NewsPadding.Parent = NewsPanel

local NewsTitle = Instance.new("TextLabel")
NewsTitle.Name = "Title"
NewsTitle.Size = UDim2.new(1, 0, 0, 25)
NewsTitle.BackgroundTransparency = 1
NewsTitle.Text = "NEWS & UPDATES"
NewsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
NewsTitle.TextSize = 13
NewsTitle.Font = Enum.Font.GothamBold
NewsTitle.TextXAlignment = Enum.TextXAlignment.Left
NewsTitle.Parent = NewsPanel

local NewsLine = Instance.new("Frame")
NewsLine.Name = "Line"
NewsLine.Size = UDim2.new(1, 0, 0, 1)
NewsLine.Position = UDim2.fromOffset(0, 31)
NewsLine.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
NewsLine.BorderSizePixel = 0
NewsLine.Parent = NewsPanel

local NewsScroll = Instance.new("ScrollingFrame")
NewsScroll.Name = "Scroll"
NewsScroll.Size = UDim2.new(1, 0, 1, -45)
NewsScroll.Position = UDim2.fromOffset(0, 43)
NewsScroll.BackgroundTransparency = 1
NewsScroll.BorderSizePixel = 0
NewsScroll.ScrollBarThickness = 3
NewsScroll.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
NewsScroll.ScrollBarImageTransparency = 0.35
NewsScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
NewsScroll.CanvasSize = UDim2.new()
NewsScroll.ScrollingDirection = Enum.ScrollingDirection.Y
NewsScroll.Parent = NewsPanel

local NewsText = Instance.new("TextLabel")
NewsText.Name = "Text"
NewsText.Size = UDim2.new(1, -8, 0, 0)
NewsText.AutomaticSize = Enum.AutomaticSize.Y
NewsText.BackgroundTransparency = 1
NewsText.Text =
    "The script has been fully fixed and is currently available to Premium users.\n\n" ..
    "In the meantime, please wait a few days while I finish fixing the Freemium version.\n\n" ..
    "Please keep in mind that I’m just one person working on this script, " ..
    "so updates and fixes may take some time.\n\n" ..
    "In the meantime, please join our Discord server for the latest updates and announcements."
NewsText.TextColor3 = Color3.fromRGB(205, 205, 205)
NewsText.TextSize = 13
NewsText.Font = Enum.Font.Gotham
NewsText.TextWrapped = true
NewsText.TextXAlignment = Enum.TextXAlignment.Left
NewsText.TextYAlignment = Enum.TextYAlignment.Top
NewsText.LineHeight = 1.15
NewsText.Parent = NewsScroll

local ActionPanel = Instance.new("Frame")
ActionPanel.Name = "ActionPanel"
ActionPanel.Size = UDim2.new(0.36, -6, 1, 0)
ActionPanel.Position = UDim2.new(0.64, 6, 0, 0)
ActionPanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ActionPanel.BorderSizePixel = 0
ActionPanel.Parent = Content

local ActionCorner = Instance.new("UICorner")
ActionCorner.CornerRadius = UDim.new(0, 12)
ActionCorner.Parent = ActionPanel

local ActionPadding = Instance.new("UIPadding")
ActionPadding.PaddingTop = UDim.new(0, 15)
ActionPadding.PaddingBottom = UDim.new(0, 15)
ActionPadding.PaddingLeft = UDim.new(0, 12)
ActionPadding.PaddingRight = UDim.new(0, 12)
ActionPadding.Parent = ActionPanel

local ActionTitle = Instance.new("TextLabel")
ActionTitle.Name = "Title"
ActionTitle.Size = UDim2.new(1, 0, 0, 25)
ActionTitle.BackgroundTransparency = 1
ActionTitle.Text = "ACTIONS"
ActionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionTitle.TextSize = 13
ActionTitle.Font = Enum.Font.GothamBold
ActionTitle.TextXAlignment = Enum.TextXAlignment.Left
ActionTitle.Parent = ActionPanel

local ActionDesc = Instance.new("TextLabel")
ActionDesc.Name = "Description"
ActionDesc.Size = UDim2.new(1, 0, 0, 34)
ActionDesc.Position = UDim2.fromOffset(0, 30)
ActionDesc.BackgroundTransparency = 1
ActionDesc.Text = "Join the Discord for updates, then execute the script."
ActionDesc.TextColor3 = Color3.fromRGB(135, 135, 135)
ActionDesc.TextSize = 10
ActionDesc.Font = Enum.Font.Gotham
ActionDesc.TextWrapped = true
ActionDesc.TextXAlignment = Enum.TextXAlignment.Left
ActionDesc.TextYAlignment = Enum.TextYAlignment.Top
ActionDesc.Parent = ActionPanel

local CopyDiscord = Instance.new("TextButton")
CopyDiscord.Name = "CopyDiscord"
CopyDiscord.Size = UDim2.new(1, 0, 0, 48)
CopyDiscord.Position = UDim2.fromOffset(0, 72)
CopyDiscord.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
CopyDiscord.BorderSizePixel = 0
CopyDiscord.Text = "COPY DISCORD"
CopyDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscord.TextSize = 11
CopyDiscord.Font = Enum.Font.GothamBold
CopyDiscord.AutoButtonColor = true
CopyDiscord.Parent = ActionPanel

local CopyCorner = Instance.new("UICorner")
CopyCorner.CornerRadius = UDim.new(0, 9)
CopyCorner.Parent = CopyDiscord

local CopyStroke = Instance.new("UIStroke")
CopyStroke.Color = Color3.fromRGB(60, 60, 60)
CopyStroke.Thickness = 1
CopyStroke.Transparency = 0.5
CopyStroke.Parent = CopyDiscord

local Copying = false

CopyDiscord.MouseButton1Click:Connect(function()
    if Copying or not Gui.Parent then
        return
    end

    if type(setclipboard) ~= "function" then
        ActionDesc.Text = "Clipboard is unavailable."
        return
    end

    Copying = true

    local success = pcall(function()
        setclipboard(DiscordLink)
    end)

    if success then
        CopyDiscord.Text = "COPIED!"
        ActionDesc.Text = "Discord link copied."

        task.delay(1.5, function()
            if not Gui.Parent then
                return
            end

            CopyDiscord.Text = "COPY DISCORD"
            ActionDesc.Text = "Join the Discord for updates, then execute the script."
            Copying = false
        end)
    else
        ActionDesc.Text = "Failed to copy the Discord link."
        Copying = false
    end
end)

local Execute = Instance.new("TextButton")
Execute.Name = "Execute"
Execute.Size = UDim2.new(1, 0, 0, 48)
Execute.Position = UDim2.fromOffset(0, 130)
Execute.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
Execute.BorderSizePixel = 0
Execute.Text = "EXECUTE"
Execute.TextColor3 = Color3.fromRGB(15, 15, 15)
Execute.TextSize = 12
Execute.Font = Enum.Font.GothamBold
Execute.AutoButtonColor = true
Execute.Parent = ActionPanel

local ExecuteCorner = Instance.new("UICorner")
ExecuteCorner.CornerRadius = UDim.new(0, 9)
ExecuteCorner.Parent = Execute

local ExecuteStroke = Instance.new("UIStroke")
ExecuteStroke.Color = Color3.fromRGB(255, 255, 255)
ExecuteStroke.Thickness = 1
ExecuteStroke.Transparency = 0.5
ExecuteStroke.Parent = Execute

local Status = Instance.new("TextLabel")
Status.Name = "Status"
Status.Size = UDim2.new(1, 0, 0, 35)
Status.Position = UDim2.new(0, 0, 1, -35)
Status.BackgroundTransparency = 1
Status.Text = "https://discord.gg/RQRZ7XkfCy"
Status.TextColor3 = Color3.fromRGB(125, 125, 125)
Status.TextSize = 10
Status.Font = Enum.Font.Gotham
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Center
Status.TextYAlignment = Enum.TextYAlignment.Center
Status.Parent = ActionPanel

local Executing = false
local ExecuteConnection

ExecuteConnection = Execute.MouseButton1Click:Connect(function()
    if Executing or not Gui.Parent then
        return
    end

    Executing = true
    Execute.Active = false
    Execute.AutoButtonColor = false
    Execute.Text = "LOADING..."
    ActionDesc.Text = "Fetching the latest script..."

    task.spawn(function()
        local success, source = pcall(function()
            return game:HttpGet(ScriptURL)
        end)

        if not Gui.Parent then
            return
        end

        if not success or type(source) ~= "string" or source == "" then
            Execute.Text = "FAILED"
            Execute.Active = true
            Execute.AutoButtonColor = true
            ActionDesc.Text = "Unable to load the script."
            Executing = false
            return
        end

        ActionDesc.Text = "Preparing script..."

        local loadSuccess, loadedScript = pcall(function()
            return loadstring(source)
        end)

        source = nil

        if not loadSuccess or type(loadedScript) ~= "function" then
            Execute.Text = "INVALID SCRIPT"
            Execute.Active = true
            Execute.AutoButtonColor = true
            ActionDesc.Text = "The downloaded script could not be compiled."
            Executing = false
            return
        end

        if ExecuteConnection then
            ExecuteConnection:Disconnect()
            ExecuteConnection = nil
        end

        Gui:Destroy()

        task.spawn(function()
            pcall(loadedScript)
            loadedScript = nil

            pcall(function()
                collectgarbage("collect")
            end)
        end)
    end)
end)
