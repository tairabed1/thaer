
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("thaer", "BloodTheme")
local Tab1 = Window.NewTab("Legendary Pets")
local Section1 = Tab1.NewSection("Spawn Legendary (Visual Only)")

local pets = {
    "Mega Shadow Dragon",
    "Neon Frost Dragon",
    "Giraffe",
    "Bat Dragon",
    "Owl",
    "Parrot",
    "Evil Unicorn",
    "Crow"
}

for _, petName in pairs(pets) do
    Section1.NewButton("Spawn " .. petName, "Adds " .. petName .. " to visual inventory", function()
        -- إشعار يظهر على الشاشة كأنه حقيقي
        game.StarterGui:SetCore("SendNotification", {
            Title = "PET SPAWNED!",
            Text = petName .. " has been added to your inventory.",
            Icon = "rbxassetid://12345678", -- هنا يوضع آيدي الصورة
            Duration = 5
        })
        print(petName .. " spawned visually.")
    end)
end

-- قائمة التريد الوهمي
local Tab2 = Window.NewTab("Fake Trade")
local Section2 = Tab2.NewSection("Trade Hacks")

Section2.NewButton("Auto Accept Trade", "Forces visual green light", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Trade Hack",
        Text = "Fake Accept Enabled",
        Duration = 3
    })
end)

Section2.NewButton("Clear Trade (Fake)", "Visual reset", function()
    print("Trade Cleared")
end)

-- قائمة اللاعب (السرعة والقفز)
local Tab3 = Window.NewTab("Player Settings")
local Section3 = Tab3.NewSection("Abilities")

Section3.NewSlider("Speed", "Move Faster", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section3.NewButton("Fly Mode (Visual)", "Makes it look like you are flying", function()
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
end)
-- القائمة الأولى: رسبنة الحيوانات (بصري)
local Tab1 = Window.NewTab("Pets Spawner")
local Section1 = Tab1.NewSection("Legendary Pets (Visual)")

local legendaryPets = {"Shadow Dragon", "Frost Dragon", "Bat Dragon", "Giraffe", "Owl", "Parrot"}

for _, pet in pairs(legendaryPets) do
    Section1.NewButton("Spawn Mega Neon " .. pet, "Adds visual pet to inventory", function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Success!",
            Text = "Mega Neon " .. pet .. " Spawned!",
            Duration = 5
        })
    end)
end

-- القائمة الثانية: التريد الوهمي
local Tab2 = Window.NewTab("Fake Trade")
local Section2 = Tab2.NewSection("Trade Options")

Section2.NewButton("Force Accept (Visual)", "Makes you look like you accepted", function()
    print("Fake Accept Enabled")
end)

Section2.NewToggle("Infinite Items", "Visual infinite items in trade", function(state)
    if state then
        print("Infinite Enabled")
    else
        print("Infinite Disabled")
    end
end)

-- القائمة الثالثة: إعدادات اللاعب
local Tab3 = Window.NewTab("Player")
local Section3 = Tab3.NewSection("Abilities")

Section3.NewSlider("Speed", "Control your walk speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section3.NewKeybind("Hide Menu", "Press a key to hide", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
local Window = Library.CreateLib("THAER PRIVATE MOD", "BloodTheme")

-- 1. قائمة الحيوانات (Pets)
local Tab1 = Window.NewTab("Pets Spawner")
local Section1 = Tab1.NewSection("Legendary Pets (Visual)")

local pets = {"Shadow Dragon", "Frost Dragon", "Bat Dragon", "Giraffe", "Owl", "Parrot"}

for _, petName in pairs(pets) do
    Section1.NewButton("Spawn Mega Neon " .. petName, "Adds visual pet", function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "PET SPAWNED!",
            Text = petName .. " has been added!",
            Duration = 5
        })
    end)
end

-- 2. قائمة التريد (Trade)
local Tab2 = Window.NewTab("Fake Trade")
local Section2 = Tab2.NewSection("Trade Hacks")

Section2.NewButton("Force Accept (Visual)", "Green light", function()
    print("Fake Accept Enabled")
end)

-- 3. قائمة اللاعب (Player)
local Tab3 = Window.NewTab("Player Settings")
local Section3 = Tab3.NewSection("Abilities")

Section3.NewSlider("Speed", "Move Fast", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section3.NewKeybind("Hide Menu", "Press F to Toggle", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)