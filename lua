
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("thaer", "BloodTheme")
local Tab1 = Window.NewTab("Legendary Pets")
local Section1 = Tab1.NewSection("Spawn Legendary (Visual Only)")

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