
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "ShowNPC_CFrame"

local label = Instance.new("TextLabel", gui)
label.Size = UDim2.new(0, 500, 0, 120)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
label.BackgroundTransparency = 0.2
label.TextColor3 = Color3.new(1,1,1)
label.TextWrapped = true
label.TextXAlignment = Left
label.TextYAlignment = Top
label.Font = Enum.Font.Code
label.TextSize = 16

local function getClosestNPC()
    local char = player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart

    local closest, dist = nil, math.huge
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
            local d = (v.HumanoidRootPart.Position - hrp.Position).Magnitude
            if d < dist then
                dist = d
                closest = v
            end
        end
    end
    return closest
end

RunService.RenderStepped:Connect(function()
    local npc = getClosestNPC()
    if npc then
        label.Text =
            "NPC: "..npc.Name..
            "\nCFrame:\n"..tostring(npc.HumanoidRootPart.CFrame)
    else
        label.Text = "Không tìm thấy NPC"
    end
end)
