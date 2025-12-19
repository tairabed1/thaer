
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("thaer", "BloodTheme")
for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ThaerFinalMod" then v:Destroy() end
end

-- 2. إنشاء الواجهة الأساسية
local sg = Instance.new("ScreenGui", game.CoreGui)
sg.Name = "ThaerFinalMod"

local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 260, 0, 420)
main.Position = UDim2.new(0.5, -130, 0.5, -210)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 2
main.Active = true
main.Draggable = true -- يمكنك تحريك القائمة بالماوس

-- العنوان العلوي
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 45)
title.Text = "THAER MOD - ADOPT ME"
title.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16

-- حاوية الأزرار (قابلة للسحب)
local container = Instance.new("ScrollingFrame", main)
container.Size = UDim2.new(1, -10, 1, -55)
container.Position = UDim2.new(0, 5, 0, 50)
container.BackgroundTransparency = 1
container.CanvasSize = UDim2.new(0, 0, 1.8, 0)
container.ScrollBarThickness = 3

local layout = Instance.new("UIListLayout", container)
layout.Padding = UDim.new(0, 7)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- وظيفة برمجة الأزرار
local function addBtn(txt, color, action)
    local b = Instance.new("TextButton", container)
    b.Size = UDim2.new(0.95, 0, 0, 40)
    b.Text = txt
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.GothamMedium
    b.TextSize = 14
    b.MouseButton1Click:Connect(action)
end

-- 3. قائمة الأوامر (جاهزة للعمل)
addBtn("Spawn Mega Shadow Dragon", Color3.fromRGB(50, 50, 50), function()
    game.StarterGui:SetCore("SendNotification", {Title = "PET", Text = "Shadow Dragon Added!"})
end)

addBtn("Spawn Neon Frost Dragon", Color3.fromRGB(50, 50, 50), function()
    game.StarterGui:SetCore("SendNotification", {Title = "PET", Text = "Frost Dragon Added!"})
end)

addBtn("Spawn Bat Dragon", Color3.fromRGB(50, 50, 50), function()
    game.StarterGui:SetCore("SendNotification", {Title = "PET", Text = "Bat Dragon Added!"})
end)

addBtn("Visual Trade Accept (ON)", Color3.fromRGB(0, 150, 0), function()
    game.StarterGui:SetCore("SendNotification", {Title = "TRADE", Text = "Fake Trade Active!"})
end)

addBtn("Speed Hack (x100)", Color3.fromRGB(0, 100, 200), function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

addBtn("Super Jump", Color3.fromRGB(0, 100, 200), function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end)

addBtn("إغلاق القائمة", Color3.fromRGB(100, 0, 0), function()
    sg:Destroy()
end)