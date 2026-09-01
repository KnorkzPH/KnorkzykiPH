local StarterGui = game:GetService("StarterGui")

local DiscordLink = "https://discord.gg/2PeDVr6pt"

local function CopyDiscordLink()
    return pcall(function()
        if setclipboard then
            setclipboard(DiscordLink)
        elseif toclipboard then
            toclipboard(DiscordLink)
        else
            error("Clipboard function unavailable")
        end
    end)
end

local function SendNotification(data)
    for _ = 1, 10 do
        local success = pcall(function()
            StarterGui:SetCore("SendNotification", data)
        end)

        if success then
            return true
        end

        task.wait(1)
    end

    return false
end

task.spawn(function()
    local copied = CopyDiscordLink()

    task.wait(0.9)

    if copied then
        SendNotification({
            Title = "Fixing Auto Assign etc etc in short script is down",
            Text = "for a meantime join our discord server",
            Duration = 10
        })
    else
        SendNotification({
            Title = "Copy Failed",
            Text = "Your executor does not support clipboard functions.",
            Duration = 4
        })
    end
end)
