-- تحميل Orion (نسخة خاصة فينا)
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tairabed1/thaer/refs/heads/main/lua"))() -- لاحقاً ممكن نستبدل الرابط بكود مكتبتك المحلي

-- إنشاء نافذة باسمك
local Window = OrionLib:MakeWindow({
    Name = "NOR MOD - ADOPT ME",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "NORMODConfig"
})

-- ==============================
-- Pets Spawner Tab
-- ==============================
local PetsTab = Window:MakeTab({Name = "Pets", Icon = "rbxassetid://4483345998"})

local pets = {
    "Mega Shadow Dragon",
    "Neon Frost Dragon",
    "Bat Dragon",
    "Giraffe",
    "Owl"
}

-- fixed loop variable (use _ for unused index)
for _, pet in ipairs(pets) do
    PetsTab:AddButton({
        Name = "Spawn " .. pet .. " (Visual)",
        Callback = function()
            pcall(function()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "PET",
                    Text = pet .. " Added!"
                })
            end)
        end
    })
end

-- ==============================
-- Fake Trade Tab
-- ==============================
local TradeTab = Window:MakeTab({Name = "Fake Trade", Icon = "rbxassetid://4483345998"})

TradeTab:AddTextbox({
    Name = "Player Name",
    Default = "Ahmed",
    TextDisappear = false,
    Callback = function(Value)
        _G.FakeTradeName = Value
    end
})

_G.FakeTradeName = "Ahmed"

TradeTab:AddButton({
    Name = "Send Trade Request",
    Callback = function()
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "TRADE",
                Text = _G.FakeTradeName .. " sent you a trade request!"
            })
        end)
    end
})

TradeTab:AddButton({
    Name = "Accept Trade",
    Callback = function()
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "TRADE",
                Text = "You accepted " .. _G.FakeTradeName .. "'s trade"
            })
        end)
    end
})

TradeTab:AddButton({
    Name = "Decline Trade",
    Callback = function()
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "TRADE",
                Text = "You declined " .. _G.FakeTradeName .. "'s trade"
            })
        end)
    end
})

-- ==============================
-- Player & Fly Tab
-- ==============================
local PlayerTab = Window:MakeTab({Name = "Player & Fly", Icon = "rbxassetid://4483345998"})

-- safe function to set WalkSpeed
local function setWalkSpeed(value)
    local player = game.Players.LocalPlayer
    if not player then return end
    local char = player.Character or player.CharacterAdded:Wait()
    if not char then return end
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = value
    end
end

PlayerTab:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Increment = 1,
    Callback = function(Value)
        pcall(function() setWalkSpeed(Value) end)
    end
})

-- Fly toggle with safe ChangeState (Enum) and connection handling
local FlyActivated = false
local FlyConnection

PlayerTab:AddButton({
    Name = "Toggle Fly",
    Callback = function()
        local player = game.Players.LocalPlayer
        if not player then return end

        FlyActivated = not FlyActivated

        if FlyActivated then
            -- prevent creating multiple connections
            if FlyConnection and FlyConnection.Connected then
                FlyConnection:Disconnect()
                FlyConnection = nil
            end

            FlyConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                local char = player.Character
                local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    -- use Enum value (not a string)
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                    -- alternatively: humanoid.Jump = true
                end
            end)

            pcall(function()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "FLY",
                    Text = "Jump to Fly Active!"
                })
            end)
        else
            if FlyConnection then
                FlyConnection:Disconnect()
                FlyConnection = nil
            end
            pcall(function()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "FLY",
                    Text = "Fly Disabled"
                })
            end)
        end
    end
})

-- ==============================
-- Block List Tab
-- ==============================
local BlockTab = Window:MakeTab({Name = "Block List", Icon = "rbxassetid://4483345998"})

BlockTab:AddTextbox({
    Name = "Enter Name to Block",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "BLOCK",
                Text = "Player " .. Value .. " Blocked!"
            })
        end)
    end
})

-- ==============================
-- Init Library
-- ==============================

OrionLib:Init()

