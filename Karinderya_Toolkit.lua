local StarterGui = game:GetService("StarterGui")

local DiscordLink = "https://discord.gg/RQRZ7XkfCy"

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "FREE FOR NOW",
        Text = "NO CHECKPOINT TASKS. GET YOUR KEY FAST.",
        Duration = 14
    })
end)

task.wait(1)

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "SCRIPT UPDATE",
        Text = "Please join our Discord to see what's being updated and what's coming next.",
        Duration = 14
    })
end)

if setclipboard then
    pcall(function()
        setclipboard(DiscordLink)
    end)
end

pcall(function()
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/4a486c7d3a528d95c98c03ed00c72423f33969a6d9da657b8143c21f2a175bc2/download"))()
end)
