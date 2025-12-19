
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
-- إنشاء النافذة باسمك
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
