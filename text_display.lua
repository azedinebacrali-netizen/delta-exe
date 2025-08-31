local player = game.Players.LocalPlayer

player.Chatted:Connect(function(msg)
    local prefix = "/a "
    if string.sub(msg, 1, #prefix) == prefix then
        local userText = string.sub(msg, #prefix + 1)

        -- Affichage du texte
        local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
        local label = Instance.new("TextLabel", gui)
        label.Size = UDim2.new(0, 500, 0, 60)
        label.Position = UDim2.new(0.5, -250, 0.1, 0)
        label.Text = userText
        label.TextScaled = true
        label.BackgroundTransparency = 0.4
        label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.GothamBold

        task.delay(5, function()
            gui:Destroy()
        end)

        -- Commande spéciale : kill
        if string.find(userText, "./kill") then
            local targetName = string.match(userText, './kill%s+"(.-)"')
            if targetName then
                local target = game.Players:FindFirstChild(targetName)
                if target and target.Character and target.Character:FindFirstChild("Humanoid") then
                    target.Character.Humanoid.Health = 0
                end
            end
        end
    end
end)
