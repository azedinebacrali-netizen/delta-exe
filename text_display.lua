game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/a feu" then
            local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
            local label = Instance.new("TextLabel", gui)
            label.Size = UDim2.new(0, 400, 0, 50)
            label.Position = UDim2.new(0.5, -200, 0.1, 0)
            label.Text = "🔥 Pouvoir de feu activé !"
            label.TextScaled = true
            label.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end)
