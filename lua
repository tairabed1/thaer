
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/thaer"))()
local Window = Library.CreateLib("thaer", "BloodTheme")


local Tab1 = Window.NewTab("Fake Trade")
local Section1 = Tab1.NewSection("Visual Pets (Only You See)")

Section1.NewButton("Add Mega Shadow Dragon", "Shows a shadow dragon in trade", function()
   
    game.StarterGui:SetCore("SendNotification", {
        Title = "MOD ACTIVE",
        Text = "Visual Mega Shadow Added!",
        Duration = 5
    })
    print("Success: Mega Shadow Added visually")
end)

Section1.NewButton("Fake Accept Trade", "Forces the green check mark (Visual)", function()
    -- كود إظهار علامة الصح الخضراء عندك
    print("Visual Accept Enabled")
end)

(Spawner)
local Tab2 = Window.NewTab("Fake Spawner")
local Section2 = Tab2.NewSection("Visual Spawner")

Section2.NewButton("Spawn Frost Dragon (Visual)", "Spawn a dragon next to you", function()
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Spawner",
        Text = "Frost Dragon Spawned (Local)",
        Duration = 3
    })
end)


local Tab3 = Window.NewTab("Player")
local Section3 = Tab3.NewSection("Speed & Jump")

Section3.NewSlider("WalkSpeed", "Changes your speed", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section3.NewButton("Inf Jump", "Jump as much as you want", function()
    
    game:GetService("UserInputService").JumpRequest:Connect(function()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end)
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
