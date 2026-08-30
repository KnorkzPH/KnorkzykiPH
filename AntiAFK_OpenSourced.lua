local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer

-- remove previous running anti afk (don't modify if you don't know how to code)
    getgenv().__AntiAFK_Stop = getgenv().__AntiAFK_Stop or false
    getgenv().__AntiAFK_Stop = true
end
task.wait()
local antiAFKRunning = true
if getgenv then
    getgenv().__AntiAFK_Stop = false
end
LocalPlayer.Idled:Connect(function()
    if getgenv and getgenv().__AntiAFK_Stop then
        return
    end
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0))
    end)
end)

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "Anti AFK",
        Text = "Anti AFK is now running!",
        Duration = 9
    })
end)
