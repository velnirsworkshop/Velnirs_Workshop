
local VAdd = {}

LB_Set =
{
    { Slot = "Helmet", Name = "Lightbringer Diadem",      ID = "fdb9bb85-9518-4df8-9259-c39c79f416bd", EQ = false },
    { Slot = "Breast", Name = "Lightbringer Breastplate", ID = "da41b2e0-e1c9-41c8-94dd-92c275396600", EQ = false },
    { Slot = "Gloves", Name = "Lightbringer Gauntlets",   ID = "3046c467-d67d-4c68-b213-e28788d1b17b", EQ = false },
    { Slot = "Boots",  Name = "Lightbringer Greaves",     ID = "a7bd178c-fd15-41d1-aeb5-e3327c7b4dbd", EQ = false }
}

LB_Status =
{
    { LB_SetBonus = "VW_LIGHTBRINGER_SET_BONUS_0", IsActive = false },
    { LB_SetBonus = "VW_LIGHTBRINGER_SET_BONUS_2", IsActive = false },
    { LB_SetBonus = "VW_LIGHTBRINGER_SET_BONUS_4", IsActive = false },
}



local LBSet_Check = function(LB_character)
    for _, temp in pairs(LB_Set) do
        if Osi.GetEquippedItem(LB_character, temp.Slot) ~= nil then
            local LB_eq = tostring(Osi.GetEquippedItem(LB_character, temp.Slot))
            local LB_tmp = Osi.GetTemplate(LB_eq):sub(-36)
            temp.EQ = (LB_tmp == temp.ID)
        else
            temp.EQ = nil
        end
    end
end
VAdd["LBSet_Check"] = LBSet_Check


local LBSet_Bonus = function(LB_character)
    local SetCounter = 0

    for _, tempBonus in pairs(LB_Set) do
        if tempBonus.EQ == true then
            SetCounter = SetCounter + 1
        end
    end

    SetCounter = math.max(0, math.min(SetCounter, 4))

    Osi.RemoveStatus(LB_character, LB_Status[1].LB_SetBonus)
    Osi.RemoveStatus(LB_character, LB_Status[2].LB_SetBonus)
    Osi.RemoveStatus(LB_character, LB_Status[3].LB_SetBonus)

    if SetCounter == 0 then
        Osi.RemoveStatus(LB_character, LB_Status[1].LB_SetBonus)
    elseif SetCounter < 2 then
        Osi.ApplyStatus(LB_character, LB_Status[1].LB_SetBonus, -1, -1)
    elseif SetCounter < 4 then
        Osi.ApplyStatus(LB_character, LB_Status[2].LB_SetBonus, -1, -1)
    else
        Osi.ApplyStatus(LB_character, LB_Status[3].LB_SetBonus, -1, -1)
    end
end
VAdd["LBSet_Bonus"] = LBSet_Bonus

local VW_Diadem_Check = function(LB_character)
    local char = LB_character
    
end
VAdd["VW_Diadem_Check"] = VW_Diadem_Check



return VAdd