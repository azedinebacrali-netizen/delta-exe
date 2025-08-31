local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local label = Instance.new("TextLabel", gui)

label.Size = UDim2.new(0, 400, 0, 50)
label.Position = UDim2.new(0.5, -200, 0.1, 0)
label.Text = "✅ Ton script fonctionne !"
label.TextScaled = true
label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
