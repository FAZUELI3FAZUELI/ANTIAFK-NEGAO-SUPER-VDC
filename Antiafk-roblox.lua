local gui = Instance.new("ScreenGui")

gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")

frame.Size = UDim2.new(0, 200, 0, 50)

frame.Position = UDim2.new(0.5, -100, 0.5, -25)

frame.BackgroundColor3 = Color3.new(0, 0, 0)

frame.BackgroundTransparency = 0.5

frame.BorderSizePixel = 0

frame.Parent = gui

local textLabel = Instance.new("TextLabel")

textLabel.Size = UDim2.new(1, 0, 1, 0)

textLabel.BackgroundColor3 = Color3.new(1, 1, 1)

textLabel.BackgroundTransparency = 1

textLabel.TextColor3 = Color3.new(1, 1, 1)

textLabel.Text = "ENABLE AFK\nCreator: SUPER VDC"

textLabel.Font = Enum.Font.SourceSansBold

textLabel.FontSize = Enum.FontSize.Size18

textLabel.Parent = frame

wait(7)

gui:Destroy()
