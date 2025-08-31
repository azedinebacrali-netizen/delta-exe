game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        local prefix = "/a "
        if string.sub(msg, 1, #prefix) == prefix then
            local userText = string.sub(msg, #prefix + 1)

            local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
            local label = Instance.new("TextLabel", gui)

            label.Size = UDim2.new(0, 400, 0, 50)
            label.Position = UDim2.new(0.5, -200, 0.1, 0)
            label.Text = userText
            label.TextScaled = true
            label.BackgroundTransparency = 0.3
            label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.Font = Enum.Font.GothamBold

            -- Disparition automatique après 5 secondes
            task.delay(5, function()
                gui:Destroy()
            end)
        end
    end)
end)
