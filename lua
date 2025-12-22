--==============================
-- Orion Library
--==============================
local OrionLib = loadstring(game:HttpGet( "https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

--==============================
-- Window
--==============================
local Window = OrionLib:MakeWindow({
    Name = "Adopt Me | Fake Trade",
    SaveConfig = true,
    ConfigFolder = "FakeTradeAM"
})

--==============================
-- Globals
--==============================
local fakeName = "Ahmed"

local ICON = "rbxassetid://4483345998"
local NOTIFY_TIME = 3

--==============================
-- Notify Function
--==============================
local function notify(title, text)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = NOTIFYTIME
        })
    end)
end

--==============================
-- Trade Tab
--==============================
local TradeTab = Window:MakeTab({
    Name = "Trade",
    Icon = ICON
})

TradeTab:AddTextbox({
    Name = "Player Name",
    Default = fakeName,
    TextDisappear = false,
    Callback = function(v)
        if v ~= "" then
            fakeName = v
        end
    end
})

TradeTab:AddButton({
    Name = "Send Trade",
    Callback = function()
        notify("Trade Request", fakeName .. " sent you a trade request!")
    end
})

TradeTab:AddButton({
    Name = "Accept Trade",
    Callback = function()
        notify("Trade", "You accepted " .. fakeName .. "'s trade")
    end
})

TradeTab:AddButton({
    Name = "Decline Trade",
    Callback = function()
        notify("Trade", "You declined " .. fakeName .. "'s trade")
    end
})

--==============================
-- Pets Tab
--==============================
local PetsTab = Window:MakeTab({
    Name = "Pets",
    Icon = ICON
})

local pets = {
    "Shadow Dragon",
    "Frost Dragon",
    "Bat Dragon",
    "Giraffe",
    "Owl"
}

for , pet in ipairs(pets) do
    PetsTab:AddButton({
        Name = "Add " .. pet,
        Callback = function()
            notify("Trade Offer", fakeName .. " added " .. pet)
        end
    })
end

--==============================
-- Block Tab
--==============================
local BlockTab = Window:MakeTab({
    Name = "Block",
    Icon = ICON
})

BlockTab:AddButton({
    Name = "Block Player",
    Callback = function()
        notify("Blocked", "You blocked " .. fakeName)
    end
})

BlockTab:AddButton({
    Name = "Unblock Player",
    Callback = function()
        notify("Unblocked", "You unblocked " .. fakeName)
    end
})

--==============================
-- Init
--==============================
OrionLib:Init()
