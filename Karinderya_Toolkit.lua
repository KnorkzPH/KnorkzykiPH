local a = game:GetService("CoreGui")
local b = {
    ["d"] = "https://discord.gg/RQRZ7XkfCy",
    ["s"] = "https://api.jnkie.com/api/v1/luascripts/public/4a486c7d3a528d95c98c03ed00c72423f33969a6d9da657b8143c21f2a175bc2/download",
    ["n"] = "PremiumScriptLoader",
    ["t"] = "Karinderya Launcher",
    ["st"] = "Online • Ready to execute"
}

pcall(function()
    local c = a:FindFirstChild(b.n)
    if c then c:Destroy() end
end)

local c = Instance.new("ScreenGui")
c.Name = b.n
c.ResetOnSpawn = false
c.IgnoreGuiInset = true
c.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
c.Parent = a

local d = Instance.new("Frame")
d.Name = "Main"
d.AnchorPoint = Vector2.new(.5,.5)
d.Position = UDim2.fromScale(.5,.5)
d.Size = UDim2.new(.92,0,.86,0)
d.BackgroundColor3 = Color3.fromRGB(18,18,18)
d.BorderSizePixel = 0
d.Parent = c

local e = Instance.new("UISizeConstraint")
e.MinSize = Vector2.new(300,400)
e.MaxSize = Vector2.new(620,620)
e.Parent = d

local f = Instance.new("UICorner")
f.CornerRadius = UDim.new(0,16)
f.Parent = d

local g = Instance.new("UIStroke")
g.Color = Color3.fromRGB(55,55,55)
g.Thickness = 1
g.Transparency = .2
g.Parent = d

local h = Instance.new("Frame")
h.Name = "Header"
h.Size = UDim2.new(1,-32,0,58)
h.Position = UDim2.fromOffset(16,12)
h.BackgroundTransparency = 1
h.Parent = d

local i = Instance.new("TextLabel")
i.Name = "Title"
i.Size = UDim2.new(1,-48,0,29)
i.BackgroundTransparency = 1
i.Text = b.t
i.TextColor3 = Color3.fromRGB(255,255,255)
i.TextSize = 20
i.Font = Enum.Font.GothamBold
i.TextXAlignment = Enum.TextXAlignment.Left
i.TextYAlignment = Enum.TextYAlignment.Center
i.Parent = h

local j = Instance.new("TextLabel")
j.Name = "Subtitle"
j.Size = UDim2.new(1,-48,0,20)
j.Position = UDim2.fromOffset(0,31)
j.BackgroundTransparency = 1
j.Text = b.st
j.TextColor3 = Color3.fromRGB(145,145,145)
j.TextSize = 11
j.Font = Enum.Font.Gotham
j.TextXAlignment = Enum.TextXAlignment.Left
j.TextYAlignment = Enum.TextYAlignment.Center
j.Parent = h

local k = Instance.new("TextButton")
k.Name = "Close"
k.Size = UDim2.fromOffset(34,34)
k.AnchorPoint = Vector2.new(1,0)
k.Position = UDim2.new(1,0,0,1)
k.BackgroundColor3 = Color3.fromRGB(35,35,35)
k.BorderSizePixel = 0
k.Text = "×"
k.TextColor3 = Color3.fromRGB(215,215,215)
k.TextSize = 22
k.Font = Enum.Font.GothamMedium
k.AutoButtonColor = true
k.Parent = h

local l = Instance.new("UICorner")
l.CornerRadius = UDim.new(0,9)
l.Parent = k

k.MouseButton1Click:Connect(function()
    if c and c.Parent then
        c:Destroy()
    end
end)

local m = Instance.new("Frame")
m.Name = "Content"
m.Size = UDim2.new(1,-32,1,-82)
m.Position = UDim2.fromOffset(16,70)
m.BackgroundTransparency = 1
m.Parent = d

local n = Instance.new("UIListLayout")
n.FillDirection = Enum.FillDirection.Horizontal
n.HorizontalAlignment = Enum.HorizontalAlignment.Left
n.VerticalAlignment = Enum.VerticalAlignment.Top
n.SortOrder = Enum.SortOrder.LayoutOrder
n.Padding = UDim.new(0,10)
n.Parent = m

local o = Instance.new("Frame")
o.Name = "NewsPanel"
o.LayoutOrder = 1
o.Size = UDim2.new(.64,-5,1,0)
o.BackgroundColor3 = Color3.fromRGB(25,25,25)
o.BorderSizePixel = 0
o.Parent = m

local p = Instance.new("UICorner")
p.CornerRadius = UDim.new(0,12)
p.Parent = o

local q = Instance.new("UIPadding")
q.PaddingTop = UDim.new(0,15)
q.PaddingBottom = UDim.new(0,12)
q.PaddingLeft = UDim.new(0,15)
q.PaddingRight = UDim.new(0,12)
q.Parent = o

local r = Instance.new("TextLabel")
r.Name = "Title"
r.Size = UDim2.new(1,0,0,25)
r.BackgroundTransparency = 1
r.Text = "NEWS & UPDATES"
r.TextColor3 = Color3.fromRGB(255,255,255)
r.TextSize = 13
r.Font = Enum.Font.GothamBold
r.TextXAlignment = Enum.TextXAlignment.Left
r.TextYAlignment = Enum.TextYAlignment.Center
r.Parent = o

local s = Instance.new("Frame")
s.Name = "Line"
s.Size = UDim2.new(1,0,0,1)
s.Position = UDim2.fromOffset(0,31)
s.BackgroundColor3 = Color3.fromRGB(48,48,48)
s.BorderSizePixel = 0
s.Parent = o

local t = Instance.new("ScrollingFrame")
t.Name = "Scroll"
t.Size = UDim2.new(1,0,1,-45)
t.Position = UDim2.fromOffset(0,43)
t.BackgroundTransparency = 1
t.BorderSizePixel = 0
t.ScrollBarThickness = 4
t.ScrollBarImageColor3 = Color3.fromRGB(100,100,100)
t.ScrollBarImageTransparency = .25
t.ScrollingDirection = Enum.ScrollingDirection.Y
t.CanvasPosition = Vector2.zero
t.CanvasSize = UDim2.fromOffset(0,0)
t.Active = true
t.Selectable = true
t.ScrollingEnabled = true
t.ElasticBehavior = Enum.ElasticBehavior.Always
t.ClipsDescendants = true
t.Parent = o

local u = Instance.new("TextLabel")
u.Name = "Text"
u.Size = UDim2.new(1,-10,0,0)
u.AutomaticSize = Enum.AutomaticSize.Y
u.BackgroundTransparency = 1
u.Text =
    "The script has been fully fixed and is currently available to Premium users.\n\n" ..
    "In the meantime, please wait a few days while I finish fixing the Freemium version.\n\n" ..
    "Please keep in mind that I'm just one person working on this script, " ..
    "so updates and fixes may take some time.\n\n" ..
    "Please join our Discord server for the latest updates and announcements.\n\n" ..
    "━━━━━━━━━━━━ PREMIUM KEY Q&A ━━━━━━━━━━━━\n\n" ..
    "Q: How do I get a Premium Key?\n" ..
    "A: You can purchase a Premium Key through our Discord server. " ..
    "Head over to #buypremiumkey and follow the instructions.\n\n" ..
    "Q: Why can't I get a Keylink?\n" ..
    "A: Premium Keys are provided directly by the script owner after purchase. " ..
    "Once you purchase a Premium Key through our Discord server, your Key will be provided by the script owner.\n\n" ..
    "Q: Does the Premium Key expire?\n" ..
    "A: Yes. Premium Keys have different durations available: 3, 7, 15, and 31 days. " ..
    "The Key will expire when its purchased duration ends.\n\n" ..
    "Premium Keys are cheap and affordable.\n\n" ..
    "━━━━━━━━━━━ PREMIUM CHANGELOG ━━━━━━━━━━\n\n" ..
    "• Fixed TweenServe and WalkServe getting stuck or behaving unexpectedly.\n" ..
    "• Slightly optimized the script and removed unused code.\n" ..
    "• Fixed the Shop not buying items and causing lag.\n\n" ..
    "━━━━━━━━━━━ FREEMIUM CHANGELOG ━━━━━━━━━━\n\n" ..
    "• ?\n\n" ..
    "• ?\n\n" ..
    "• ?\n\n" ..
    "• ?\n\n"
u.TextColor3 = Color3.fromRGB(205,205,205)
u.TextSize = 13
u.Font = Enum.Font.Gotham
u.TextWrapped = true
u.TextXAlignment = Enum.TextXAlignment.Left
u.TextYAlignment = Enum.TextYAlignment.Top
u.LineHeight = 1.2
u.Parent = t

local v = Instance.new("UIPadding")
v.PaddingBottom = UDim.new(0,20)
v.Parent = u

local w = function()
    if not t.Parent or not u.Parent then
        return
    end
    task.defer(function()
        if not t.Parent or not u.Parent then
            return
        end
        t.CanvasSize = UDim2.fromOffset(0,u.AbsoluteSize.Y + 25)
    end)
end

u:GetPropertyChangedSignal("AbsoluteSize"):Connect(w)

t.InputChanged:Connect(function(x)
    if x.UserInputType == Enum.UserInputType.Touch then
        t.ScrollingEnabled = true
    end
end)

local x = Instance.new("Frame")
x.Name = "ActionPanel"
x.LayoutOrder = 2
x.Size = UDim2.new(.36,-5,1,0)
x.BackgroundColor3 = Color3.fromRGB(25,25,25)
x.BorderSizePixel = 0
x.Parent = m

local y = Instance.new("UICorner")
y.CornerRadius = UDim.new(0,12)
y.Parent = x

local z = Instance.new("UIPadding")
z.PaddingTop = UDim.new(0,15)
z.PaddingBottom = UDim.new(0,15)
z.PaddingLeft = UDim.new(0,12)
z.PaddingRight = UDim.new(0,12)
z.Parent = x

local A = Instance.new("TextLabel")
A.Name = "Title"
A.Size = UDim2.new(1,0,0,25)
A.BackgroundTransparency = 1
A.Text = "ACTIONS"
A.TextColor3 = Color3.fromRGB(255,255,255)
A.TextSize = 13
A.Font = Enum.Font.GothamBold
A.TextXAlignment = Enum.TextXAlignment.Left
A.TextYAlignment = Enum.TextYAlignment.Center
A.Parent = x

local B = Instance.new("TextLabel")
B.Name = "Description"
B.Size = UDim2.new(1,0,0,40)
B.Position = UDim2.fromOffset(0,30)
B.BackgroundTransparency = 1
B.Text = "Join the Discord for updates, then execute the script."
B.TextColor3 = Color3.fromRGB(135,135,135)
B.TextSize = 10
B.Font = Enum.Font.Gotham
B.TextWrapped = true
B.TextXAlignment = Enum.TextXAlignment.Left
B.TextYAlignment = Enum.TextYAlignment.Top
B.Parent = x

local C = Instance.new("TextButton")
C.Name = "CopyDiscord"
C.Size = UDim2.new(1,0,0,48)
C.Position = UDim2.fromOffset(0,78)
C.BackgroundColor3 = Color3.fromRGB(42,42,42)
C.BorderSizePixel = 0
C.Text = "COPY DISCORD"
C.TextColor3 = Color3.fromRGB(255,255,255)
C.TextSize = 11
C.Font = Enum.Font.GothamBold
C.AutoButtonColor = true
C.Parent = x

local D = Instance.new("UICorner")
D.CornerRadius = UDim.new(0,9)
D.Parent = C

local E = Instance.new("UIStroke")
E.Color = Color3.fromRGB(60,60,60)
E.Thickness = 1
E.Transparency = .5
E.Parent = C

local F = false

C.MouseButton1Click:Connect(function()
    if F or not c.Parent then
        return
    end
    if type(setclipboard) ~= "function" then
        B.Text = "Clipboard is unavailable."
        return
    end
    F = true
    local G = pcall(function()
        setclipboard(b.d)
    end)
    if G then
        C.Text = "COPIED!"
        B.Text = "Discord link copied."
        task.delay(1.5,function()
            if not c.Parent then
                return
            end
            C.Text = "COPY DISCORD"
            B.Text = "Join the Discord for updates, then execute the script."
            F = false
        end)
    else
        B.Text = "Failed to copy the Discord link."
        F = false
    end
end)

local H = Instance.new("TextButton")
H.Name = "Execute"
H.Size = UDim2.new(1,0,0,48)
H.Position = UDim2.fromOffset(0,138)
H.BackgroundColor3 = Color3.fromRGB(235,235,235)
H.BorderSizePixel = 0
H.Text = "EXECUTE"
H.TextColor3 = Color3.fromRGB(15,15,15)
H.TextSize = 12
H.Font = Enum.Font.GothamBold
H.AutoButtonColor = true
H.Parent = x

local I = Instance.new("UICorner")
I.CornerRadius = UDim.new(0,9)
I.Parent = H

local J = Instance.new("UIStroke")
J.Color = Color3.fromRGB(255,255,255)
J.Thickness = 1
J.Transparency = .5
J.Parent = H

local K = Instance.new("TextLabel")
K.Name = "Status"
K.Size = UDim2.new(1,0,0,40)
K.Position = UDim2.new(0,0,1,-40)
K.BackgroundTransparency = 1
K.Text = b.d
K.TextColor3 = Color3.fromRGB(125,125,125)
K.TextSize = 9
K.Font = Enum.Font.Gotham
K.TextWrapped = true
K.TextXAlignment = Enum.TextXAlignment.Center
K.TextYAlignment = Enum.TextYAlignment.Center
K.Parent = x

local L = false
local M

M = H.MouseButton1Click:Connect(function()
    if L or not c.Parent then
        return
    end

    L = true
    H.Active = false
    H.AutoButtonColor = false
    H.Text = "LOADING..."
    B.Text = "Fetching the latest script..."

    task.spawn(function()
        local N,O = pcall(function()
            return game:HttpGet(b.s)
        end)

        if not c.Parent then
            return
        end

        if not N or type(O) ~= "string" or O == "" then
            H.Text = "FAILED"
            H.Active = true
            H.AutoButtonColor = true
            B.Text = "Unable to load the script."
            L = false
            return
        end

        B.Text = "Preparing script..."

        local P,Q = pcall(function()
            return loadstring(O)
        end)

        O = nil

        if not P or type(Q) ~= "function" then
            H.Text = "INVALID SCRIPT"
            H.Active = true
            H.AutoButtonColor = true
            B.Text = "The downloaded script could not be compiled."
            L = false
            return
        end

        if M then
            M:Disconnect()
            M = nil
        end

        c:Destroy()

        task.spawn(function()
            pcall(Q)
            Q = nil
            pcall(function()
                collectgarbage("collect")
            end)
        end)
    end)
end)

local R = function()
    if not d.Parent then
        return
    end

    local S = workspace.CurrentCamera
    if not S then
        return
    end

    local T = S.ViewportSize
    local U = T.X

    if U <= 500 then
        d.Size = UDim2.new(.94,0,.9,0)
        h.Size = UDim2.new(1,-28,0,54)
        h.Position = UDim2.fromOffset(14,10)
        i.TextSize = 18
        j.TextSize = 10
        m.Size = UDim2.new(1,-28,1,-74)
        m.Position = UDim2.fromOffset(14,64)
        n.FillDirection = Enum.FillDirection.Vertical
        n.Padding = UDim.new(0,8)
        o.Size = UDim2.new(1,0,.58,-4)
        x.Size = UDim2.new(1,0,.42,-4)
        u.TextSize = 12
        u.LineHeight = 1.15
        q.PaddingTop = UDim.new(0,13)
        q.PaddingLeft = UDim.new(0,13)
        q.PaddingRight = UDim.new(0,10)
        t.ScrollBarThickness = 5
        z.PaddingTop = UDim.new(0,12)
        z.PaddingBottom = UDim.new(0,12)
        z.PaddingLeft = UDim.new(0,12)
        z.PaddingRight = UDim.new(0,12)
        B.TextSize = 10
    else
        d.Size = UDim2.new(.92,0,.86,0)
        h.Size = UDim2.new(1,-32,0,58)
        h.Position = UDim2.fromOffset(16,12)
        i.TextSize = 20
        j.TextSize = 11
        m.Size = UDim2.new(1,-32,1,-82)
        m.Position = UDim2.fromOffset(16,70)
        n.FillDirection = Enum.FillDirection.Horizontal
        n.Padding = UDim.new(0,10)
        o.Size = UDim2.new(.64,-5,1,0)
        x.Size = UDim2.new(.36,-5,1,0)
        u.TextSize = 13
        u.LineHeight = 1.2
        q.PaddingTop = UDim.new(0,15)
        q.PaddingLeft = UDim.new(0,15)
        q.PaddingRight = UDim.new(0,12)
        t.ScrollBarThickness = 4
        z.PaddingTop = UDim.new(0,15)
        z.PaddingBottom = UDim.new(0,15)
        z.PaddingLeft = UDim.new(0,12)
        z.PaddingRight = UDim.new(0,12)
        B.TextSize = 10
    end

    task.defer(w)
end

local V = workspace.CurrentCamera

if V then
    V:GetPropertyChangedSignal("ViewportSize"):Connect(R)
end

R()
w()
