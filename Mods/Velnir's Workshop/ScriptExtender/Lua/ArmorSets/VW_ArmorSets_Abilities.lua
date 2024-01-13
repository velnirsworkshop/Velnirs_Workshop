VW_AS_ABILITIES = {}

local VW_TSS_Status = {
    {
        Name = "CAT",
        Flags = {
            { active = "WILDSHAPE_CAT_PLAYER", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_CAT" },
        },
    },
    {
        Name = "RAVEN",
        Flags = {
            { active = "WILDSHAPE_RAVEN_PLAYER", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_RAVEN" },
        },
    },
    {
        Name = "BADGER",
        Flags = {
            { active = "WILDSHAPE_BADGER_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER" },
            { active = "WILDSHAPE_BADGER_PLAYER_4",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_4" },
            { active = "WILDSHAPE_BADGER_PLAYER_6",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_6" },
            { active = "WILDSHAPE_BADGER_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_8" },
            { active = "WILDSHAPE_BADGER_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_10" },
            { active = "WILDSHAPE_BADGER_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_12" },
        },
    },
    {
        Name = "SPIDER_GIANT",
        Flags = {
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER" },
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER_4",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_4" },
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER_6",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_6" },
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_8" },
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_10" },
            { active = "WILDSHAPE_SPIDER_GIANT_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_12" },
        },
    },
    {
        Name = "WOLF_DIRE",
        Flags = {
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF" },
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER_4",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_4" },
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER_6",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_6" },
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_8" },
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_10" },
            { active = "WILDSHAPE_WOLF_DIRE_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_12" },
        },
    },
    {
        Name = "BEAR_POLAR",
        Flags = {
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR" },
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER_4",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_4" },
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER_6",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_6" },
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_8" },
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_10" },
            { active = "WILDSHAPE_BEAR_POLAR_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_12" },
        },
    },
    {
        Name = "DEEP_ROTHE",
        Flags = {
            { active = "WILDSHAPE_DEEP_ROTHE_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE" },
            { active = "WILDSHAPE_DEEP_ROTHE_PLAYER_6",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_6" },
            { active = "WILDSHAPE_DEEP_ROTHE_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_8" },
            { active = "WILDSHAPE_DEEP_ROTHE_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_10" },
            { active = "WILDSHAPE_DEEP_ROTHE_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_12" },
        },
    },
    {
        Name = "PANTHER",
        Flags = {
            { active = "WILDSHAPE_PANTHER_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER" },
            { active = "WILDSHAPE_PANTHER_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_8" },
            { active = "WILDSHAPE_PANTHER_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_10" },
            { active = "WILDSHAPE_PANTHER_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_12" },
        },
    },
    {
        Name = "OWLBEAR",
        Flags = {
            { active = "WILDSHAPE_OWLBEAR_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB" },
            { active = "WILDSHAPE_OWLBEAR_PLAYER_8",  setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_8" },
            { active = "WILDSHAPE_OWLBEAR_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_10" },
            { active = "WILDSHAPE_OWLBEAR_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_12" },
        },
    },
    {
        Name = "SABERTOOTH_TIGER",
        Flags = {
            { active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER" },
            { active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER_10" },
            { active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER_12" },
        },
    },
    {
        Name = "DILOPHOSAURUS",
        Flags = {
            { active = "WILDSHAPE_DILOPHOSAURUS_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DSAURUS" },
            { active = "WILDSHAPE_DILOPHOSAURUS_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DSAURUS_12" },
        },
    },
    {
        Name = "MYRMIDON_AIR",
        Flags = {
            { active = "WILDSHAPE_MYRMIDON_AIR_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MAIR" },
            { active = "WILDSHAPE_MYRMIDON_AIR_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MAIR_12" },
        },
    },
    {
        Name = "MYRMIDON_EARTH",
        Flags = {
            { active = "WILDSHAPE_MYRMIDON_EARTH_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MEARTH" },
            { active = "WILDSHAPE_MYRMIDON_EARTH_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MEARTH_12" },
        },
    },
    {
        Name = "MYRMIDON_FIRE",
        Flags = {
            { active = "WILDSHAPE_MYRMIDON_FIRE_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MFIRE" },
            { active = "WILDSHAPE_MYRMIDON_FIRE_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MFIRE_12" },
        },
    },
    {
        Name = "MYRMIDON_WATER",
        Flags = {
            { active = "WILDSHAPE_MYRMIDON_WATER_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MWATER" },
            { active = "WILDSHAPE_MYRMIDON_WATER_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MWATER_12" },
        },
    },
}

function VW_AS_ABILITIES.VW_ChronoshiftRecall(VW_caster, VW_x, VW_y, VW_z, VW_hp, VW_prev_statusTable,VW_prev_slotTable)
    Osi.TeleportToPosition(VW_caster, VW_x, VW_y, VW_z)
    Osi.SetHitpointsPercentage(VW_caster, VW_hp)
    VW_AS_ABILITIES.VW_ChronoshiftCompare(VW_caster, VW_prev_statusTable, VW_prev_slotTable)
end


function VW_AS_ABILITIES.VW_ChronoshiftCheck(VW_caster)
    VW_x, VW_y, VW_z = Osi.GetPosition(VW_caster)
    VW_hp = Osi.GetHitpoints(VW_caster)
    local VW_prev_statusTable = VWLib.GetStatusDetails(VW_caster)
    local VW_prev_slotTable = VWLib.GetSpellSlotDetails(VW_caster)
    
    return VW_x, VW_y, VW_z, VW_hp, VW_prev_statusTable,VW_prev_slotTable
end

function VW_AS_ABILITIES.VW_ChronoshiftCompare(VW_caster, VW_prev_statusTable, VW_prev_slotTable)
    local VW_cur_statusTable = VWLib.GetStatusDetails(VW_caster)
    local VW_cur_slotTable = VWLib.GetSpellSlotDetails(VW_caster)

    VWLib.CompareStatuses(VW_caster,VW_cur_statusTable,VW_prev_statusTable)
    VWLib.CompareSpellSlots(VW_caster,VW_cur_slotTable,VW_prev_slotTable)

    

    --for _, prev_spellslots in pairs(VW_prev_slotTable) do
        --CLUtils.SetEntityResourceValue(VW_entity, prev_spellslots, VW_slotTable, prev_spellslots)
    --end
end

function VW_AS_ABILITIES.VW_EchoesofTime(VW_entity)

end

---Checks whether the character has shapeshifted into one of the supported wildshape forms and if he has all equipped pieces
---of the Grovekeeper set then it allows the transformed character to keep his Equipment bonuses
---@param VW_char string|number
---@param VW_ss_status string
function VW_AS_ABILITIES.VW_AvatarCheck(VW_char, _, _, VW_ss_status)
    local VW_active_bonus = Osi.HasActiveStatus(VW_char, VW_AS.VW_ArmorSets[3].SetBonuses[3])
    local speciesName = string.match(VW_ss_status, "WILDSHAPE_(%w+_?%w*)_PLAYER")
    if speciesName and VW_active_bonus then
        for _, species in pairs(VW_TSS_Status) do
            if species.Name == speciesName then
                for _, status in pairs(species.Flags) do
                    if VW_ss_status == status.active then
                        Osi.ApplyStatus(VW_char, status.setactive, -1, -1)
                        return
                    end
                end
                return
            end
        end
    end
end

Ext.Osiris.RegisterListener("ShapeshiftChanged", 4, "after", function(VW_char, _, _, VW_ss_status)
    VW_AS_ABILITIES.VW_AvatarCheck(VW_char, _, _, VW_ss_status)
end)

Ext.Osiris.RegisterListener("StartedPreviewingSpell", 4, "after", function(VW_caster, VW_spell, _, _)
    if VW_spell == "VW_Chronoshift" then
        VW_x, VW_y, VW_z, VW_hp, VW_status, VW_spellslots = VW_AS_ABILITIES.VW_ChronoshiftCheck(VW_caster)
    end
end)

Ext.Osiris.RegisterListener("CastSpell", 5, "before", function(VW_caster, VW_spell, _, _, _)
    if Osi.HasActiveStatus(VW_caster, "VW_CHRONOSHIFT_RECALL_CHECK") and VW_spell == "VW_Chronoshift_Recall" then
        VW_AS_ABILITIES.VW_ChronoshiftRecall(VW_caster, VW_x, VW_y, VW_z, VW_hp, VW_status, VW_spellslots)
    end
end)
