local StarterGui = game:GetService("StarterGui")

local DiscordLink = "https://discord.gg/RQRZ7XkfCy"

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "Script is Under Maintenance",
        Text = "Please join our Discord to see what's being updated and what's coming next.",
        Duration = 8
    })
end)

if setclipboard then
    pcall(function()
        setclipboard(DiscordLink)
    end)
end
