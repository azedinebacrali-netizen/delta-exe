local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Créer l'interface principale
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "TextInputGui"
screenGui.ResetOnSpawn = false

-- Zone de texte
local textBox = Instance.new("TextBox", screenGui)
textBox.Size = UDim2.new(0, 300, 0, 50)
textBox.Position = UDim2.new(0.5, -150, 0.8, 0)
textBox.PlaceholderText = "Écris ton texte ici..."
textBox.TextScaled = true
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Font = Enum.Font.GothamBold

-- Bouton
local button = Instance.new("TextButton", screenGui)
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0.5, -75, 0.9, 0)
button.Text = "Afficher"
button.TextScaled = true
button.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold

-- Fonction d'affichage
button.MouseButton1Click:Connect(function()
    local userText = textBox.Text
    if userText ~= "" then
        local displayGui = Instance.new("ScreenGui", playerGui)
        local label = Instance.new("TextLabel", displayGui)
        label.Size = UDim2.new(0, 500, 0, 60)
        label.Position = UDim2.new(0.5, -250, 0.1, 0)
        label.Text = userText
        label.TextScaled = true
        label.BackgroundTransparency = 0.4
        label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.Font = Enum.Font.GothamBold
        label.ZIndex = 10

        task.delay(5, function()
            displayGui:Destroy()
        end)
    end
end)
