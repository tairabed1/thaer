
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("thaer", "BloodTheme")

for _, v in pairs(game.CoreGui:GetChildren()) do
    if v:IsA("ScreenGui") and v.Name == "DirectHack" then v:Destroy() end
end

local sg = Instance.new("ScreenGui", game.CoreGui)
sg.Name = "DirectHack"

-- وظيفة لصنع زر بسيط ومستقل
local function quickBtn(name, pos, color, func)
    local b = Instance.new("TextButton", sg)
    b.Size = UDim2.new(0, 180, 0, 40)
    b.Position = pos
    b.Text = name
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.SourceSansBold
    b.TextSize = 16
    b.MouseButton1Click:Connect(func)

    -- إضافة زوايا دائرية للزر
    local corner = Instance.new("UICorner", b)
    corner.CornerRadius = UDim.new(0, 8)
end

-- توزيع الأزرار على الشاشة (يمين ويسار) عشان ما يغطون على اللعب
quickBtn("Mega Shadow (Visual)", UDim2.new(0, 10, 0.2, 0), Color3.fromRGB(80, 0, 0), function()
    game.StarterGui:SetCore("SendNotification", {Title = "PET", Text = "Shadow Dragon Added!"})
end)

quickBtn("Frost Dragon (Visual)", UDim2.new(0, 10, 0.3, 0), Color3.fromRGB(0, 80, 150), function()
    game.StarterGui:SetCore("SendNotification", {Title = "PET", Text = "Frost Dragon Added!"})
end)

quickBtn("Speed x100", UDim2.new(0, 10, 0.4, 0), Color3.fromRGB(0, 120, 0), function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

quickBtn("Fake Accept ON", UDim2.new(0, 10, 0.5, 0), Color3.fromRGB(200, 100, 0), function()
    game.StarterGui:SetCore("SendNotification", {Title = "TRADE", Text = "Visual Accept Active"})
end)

quickBtn("إغلاق الأزرار", UDim2.new(0, 10, 0.6, 0), Color3.fromRGB(50, 50, 50), function()
    sg:Destroy()
end)