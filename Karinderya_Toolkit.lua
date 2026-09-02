local StarterGui = game:GetService("StarterGui")

local DiscordLink = "https://discord.gg/X8wszxanhU"

task.spawn(function()
    for _ = 1, 5 do
        local success = pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = "Updating",
                Text = "",
                Duration = 12
            })
        end)

        if success then
            break
        end

        task.wait(1)
    end

    task.wait(1.8)

    local BindableFunction = Instance.new("BindableFunction")

    BindableFunction.OnInvoke = function(button)
        if button == "Copy" then
            pcall(function()
                if setclipboard then
                    setclipboard(DiscordLink)
                elseif toclipboard then
                    toclipboard(DiscordLink)
                end
            end)
        end
    end

    for _ = 1, 5 do
        local success = pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = "For more info:",
                Text = "Join our Discord | STATUS: UPDATING | GMT+8 (Philippines)",
                Duration = 12.9,
                Button1 = "Copy",
                Callback = BindableFunction
            })
        end)

        if success then
            break
        end

        task.wait(1)
    end
end)
