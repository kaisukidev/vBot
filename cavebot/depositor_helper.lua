CaveBot.deposit = {}

-- Creating UI in panel
UI.Separator()
UI.Label('Depositor Helper')
local depositGold = macro(50, "Deposit Gold", function() end)
local depositPotion = macro(50, "Deposit Potion", function() end)
UI.Separator()

-- function to check if id exists in the array "notDeposit"
local function checkInList (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function CaveBot.deposit.gold(id)
    local goldIds = {3031, 3135, 3043}
    if (depositGold.isOn() and checkInList(goldIds, id)) then
        return true
    else return false
    end
end

function CaveBot.deposit.potion(id)
    local potionIds = {266, 268, 236, 237, 238, 239, 7642, 7643, 23373, 23374, 23375}
    if (depositPotion.isOn() and checkInList(potionIds, id)) then
        return true
    else return false
    end
end