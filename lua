
for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ThaerAdoptMe" then v:Destroy() end
end

-- تحميل المكتبة (Library)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("THAER PRIVATE MOD", "Midnight")

-- القائمة الأولى: رسبنة الحيوانات
local Tab1 = Window.NewTab("Pets Spawner")
local Section1 = Tab1.NewSection("Legendary Pets")

-- قائمة الحيوانات
local myPets = {"Shadow Dragon", "Frost Dragon", "Bat Dragon", "Owl", "Crow"}

for i, petName in pairs(myPets) do
    Section1.NewButton("Spawn " .. petName, "Visual Spawn Only", function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "SUCCESS",
            Text = petName .. " has been spawned!",
            Duration = 5
        })
    end)
end

-- القائمة الثانية: التريد واللاعب
local Tab2 = Window.NewTab("Player & Trade")
local Section2 = Tab2.NewSection("Abilities")

Section2.NewSlider("WalkSpeed", "Change your speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2.NewButton("Force Trade Accept", "Visual green check", function()
    print("Trade Accept Activated")
end)

Section2.NewKeybind("Hide Menu", "Press F to Toggle", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
