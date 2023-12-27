local VAdd = {}

-- Define the armor sets and their bonuses in a configuration table
local VW_ArmorSets = {
    {
        Name = "Lightbringer",
        Slots = {
            { Slot = "Helmet", ID = "fdb9bb85-9518-4df8-9259-c39c79f416bd", EQ = false }, -- Lightbringer Diadem
            { Slot = "Breast", ID = "da41b2e0-e1c9-41c8-94dd-92c275396600", EQ = false }, -- Lightbringer Breastplate
            { Slot = "Gloves", ID = "3046c467-d67d-4c68-b213-e28788d1b17b", EQ = false }, -- Lightbringer Gauntlets
            { Slot = "Boots",  ID = "a7bd178c-fd15-41d1-aeb5-e3327c7b4dbd", EQ = false }, -- Lightbringer Greaves
        },
        SetBonuses = {
            "VW_LIGHTBRINGER_SET_BONUS_0",
            "VW_LIGHTBRINGER_SET_BONUS_2",
            "VW_LIGHTBRINGER_SET_BONUS_4",
        }
    },
    {
        Name = "Deathstalker",
        Slots = {
            { Slot = "Helmet", ID = "33c60c32-0ab0-473f-8c4a-c578887d75d7", EQ = false }, -- Deathstalker Deathmask
            { Slot = "Breast", ID = "c56bd0de-c271-4e48-a8f9-f34aa8a5c00f", EQ = false }, -- Deathstalker Cuirass
            { Slot = "Gloves", ID = "e31da82f-bd2f-4272-b0cb-685bf020358d", EQ = false }, -- Deathstalker Handguards
            { Slot = "Boots",  ID = "a1c73177-9026-4a0a-a09a-c5a4e83eb1f5", EQ = false }, -- Deathstalker Boots
        },
        SetBonuses = {
            "VW_DEATHSTALKER_SET_BONUS_0",
            "VW_DEATHSTALKER_SET_BONUS_2",
            "VW_DEATHSTALKER_SET_BONUS_4",
        }
    },

}


local function VW_SetCheck(VW_character)
    for _, armorSet in ipairs(VW_ArmorSets) do
        local allSlotsEmpty = true
        for _, slot in ipairs(armorSet.Slots) do
            local equippedItem = Osi.GetEquippedItem(VW_character, slot.Slot)
            if equippedItem ~= nil then
                local itemID = Osi.GetTemplate(equippedItem):sub(-36)
                slot.EQ = (itemID == slot.ID)
                allSlotsEmpty = false
            else
                slot.EQ = nil
            end
        end

        if allSlotsEmpty then
            for _, status in ipairs(armorSet.SetBonuses) do
                Osi.RemoveStatus(VW_character, status)
            end
        end
    end
end
VAdd["VW_SetCheck"] = VW_SetCheck


local function VW_SetBonus(VW_character)
    local activeSet = nil
    local setCounter = 0
    
    for _, armorSet in ipairs(VW_ArmorSets) do
        local currentSetCounter = 0

        for _, slot in ipairs(armorSet.Slots) do
            if slot.EQ == true then
                currentSetCounter = currentSetCounter + 1
            end
        end

        if currentSetCounter >= setCounter then
            activeSet = armorSet
            setCounter = currentSetCounter
        end
    end

    for _, status in ipairs(activeSet.SetBonuses) do
        Osi.RemoveStatus(VW_character, status)
    end

    if setCounter == 1 then
        local statusToApply = activeSet.SetBonuses[setCounter]
        if statusToApply then
            Osi.ApplyStatus(VW_character, statusToApply, -1, -1)
        end
    elseif setCounter == 2 or setCounter == 3 then
        local statusToApply = activeSet.SetBonuses[2]
        if statusToApply then
            Osi.ApplyStatus(VW_character, statusToApply, -1, -1)
        end
    elseif setCounter == 4 then
        local statusToApply = activeSet.SetBonuses[3]
        if statusToApply then
            Osi.ApplyStatus(VW_character, statusToApply, -1, -1)
        end
    end
end
VAdd["VW_SetBonus"] = VW_SetBonus

return VAdd












