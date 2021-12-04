local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local lib
pcall(function()
    lib = loadstring(game:HttpGet("https://pastebin.com/raw/uBh4tS50"))()
end)

local version, changelog = lib:GetInfo()
local window = lib:CreateWindow("Ript Scripts")
local label = lib:CreateLabel(window, "Teleports")

function equipSword()
    ReplicatedStorage.ConnectM6D:FireServer(BodyAttach)
    local char = Players.LocalPlayer.Character
    char.Sword.SwordLocal.Cosmetic:FireServer("Equip", "FakeSword")
end
function golemTP1()
    local golemSpawn = CFrame.new(-147.291489, -2.85410118, -29.5529366, 0.128549665, -1.35128971e-07, -0.991703093, 1.24604824e-08, 1, -1.34644324e-07, 0.991703093, 4.95138286e-09, 0.128549665)

    local char = game:GetService("Players").LocalPlayer.Character
    local root = char.HumanoidRootPart

    root.CFrame = golemSpawn
end
function golemTP2()
    local golemSpawn = CFrame.new(1129.99146, -20.9945183, -762.160522, -0.737256944, -0.000719521544, -0.675612032, 2.23262347e-07, 0.999999404, -0.00106523524, 0.67561245, -0.000785502896, -0.737256527)

    local char = game:GetService("Players").LocalPlayer.Character
    local root = char.HumanoidRootPart

    root.CFrame = golemSpawn
end
function sellTP2()
    local sellNpc = CFrame.new(1303.77795, -42.1987267, -700.549011, 0.94967407, 9.50448467e-08, 0.313239604, -7.39927728e-08, 1, -7.90954431e-08, -0.313239604, 5.19374304e-08, 0.94967407)

    local char = game:GetService("Players").LocalPlayer.Character
    local root = char.HumanoidRootPart

    root.CFrame = sellNpc
end
function sellTP1()
    local sellNpc = CFrame.new(187.513336, -26.2384586, 41.999897, 0.37332195, -1.84309332e-08, -0.927701831, -9.84037527e-08, 1, -5.94665366e-08, 0.927701831, 1.13489513e-07, 0.37332195)
    
    local char = game:GetService("Players").LocalPlayer.Character
    local root = char.HumanoidRootPart

    root.CFrame = sellNpc
end
_G.killAuraState = false
local killAuraDelay = 0.5
function killAura()
    while _G.killAuraState == true do
        wait(0.01)
        local char = Players.LocalPlayer.Character
        char.Sword.SwordLocal.Function:FireServer("Attack", 1, 2)
    end
end
local button = lib:CreateButton(window, "Golem 1", function()
    golemTP1()
end)
local button2 = lib:CreateButton(window, "Sell 1", function()
    sellTP1()
end)
local button = lib:CreateButton(window, "Golem 2", function()
    golemTP2()
end)
local button2 = lib:CreateButton(window, "Sell 2", function()
    sellTP2()
end)
local keybind = lib:CreateKeyBind(window, "Kill Aura", "r", function()
    if _G.killAuraState == true then
        _G.killAuraState = false
    elseif _G.killAuraState == false then
        _G.killAuraState = true
        killAura()
    end
end)
print"ok"
