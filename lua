
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("THAER PRIVATE MOD", "Midnight")

-- 2. قسم الحيوانات (كما في صورتك تماماً)
local Tab1 = Window:NewTab("Pets Spawner")
local Section1 = Tab1:NewSection("Legendary Pets")

local myPets = {"Shadow Dragon", "Frost Dragon", "Bat Dragon", "Owl", "Crow"}

for _, petName in pairs(myPets) do
    -- تم تعديل السطر التالي ليصبح ":" بدلاً من "." لضمان ظهور الزر
    Section1:NewButton("Spawn " .. petName, "Visual Spawn Only", function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "SUCCESS",
            Text = petName .. " has been spawned!",
            Duration = 5
        })
    end)
end

-- 3. قسم اللاعب والتريد (الذي ظهر في لقطة الشاشة)
local Tab2 = Window:NewTab("Player & Trade")
local Section2 = Tab2:NewSection("Abilities")

Section2:NewSlider("WalkSpeed", "Change your speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewButton("Force Trade Accept", "Visual green check", function()
    print("Trade Accept Activated")
end)

-- 4. إخفاء القائمة بحرف F
Section2:NewKeybind("Hide Menu", "Press F to Toggle", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
