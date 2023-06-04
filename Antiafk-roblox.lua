local function simulateActivity()

    if game:GetService("UserInputService").MouseIconEnabled then

        game:GetService("VirtualUser"):CaptureController()

        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

    else

        local input = game:GetService("UserInputService")

        local displaySize = game:GetService("GuiService"):GetScreenResolution()

        input.TouchDown:Fire(Vector2.new(displaySize.X / 2, displaySize.Y / 2))

        input.TouchUp:Fire(Vector2.new(displaySize.X / 2, displaySize.Y / 2))

    end

end

local function showGui()

    local gui = Instance.new("ScreenGui")

    gui.Name = "Anti-AFK Gui"

    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    

    local creatorLabel = Instance.new("TextLabel")

    creatorLabel.Size = UDim2.new(1, 0, 0, 25)

    creatorLabel.Position = UDim2.new(0, 0, 0, 0)

    creatorLabel.BackgroundColor3 = Color3.new(0, 0, 0)

    creatorLabel.BackgroundTransparency = 0.5

    creatorLabel.BorderSizePixel = 0

    creatorLabel.TextColor3 = Color3.new(1, 1, 1)

    creatorLabel.Text = "Creator: SUPER VDC"

    creatorLabel.Font = Enum.Font.SourceSansBold

    creatorLabel.FontSize = Enum.FontSize.Size18

    creatorLabel.Parent = gui

    

    local antiAfkLabel = Instance.new("TextLabel")

    antiAfkLabel.Size = UDim2.new(1, 0, 0, 25)

    antiAfkLabel.Position = UDim2.new(0, 0, 0, 25)

    antiAfkLabel.BackgroundColor3 = Color3.new(0, 0, 0)

    antiAfkLabel.BackgroundTransparency = 0.5

    antiAfkLabel.BorderSizePixel = 0

    antiAfkLabel.TextColor3 = Color3.new(1, 1, 1)

    antiAfkLabel.Text = "Anti-AFK"

    antiAfkLabel.Font = Enum.Font.SourceSansBold

    antiAfkLabel.FontSize = Enum.FontSize.Size18

    antiAfkLabel.Parent = gui

end

local function hideGui()

    game.Players.LocalPlayer.PlayerGui:FindFirstChild("Anti-AFK Gui"):Destroy()

end

game:GetService("Players").LocalPlayer.Idled:Connect(simulateActivity)

showGui()

wait(7)

hideGui()
