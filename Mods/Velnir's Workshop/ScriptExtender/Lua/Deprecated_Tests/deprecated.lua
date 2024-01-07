--[[
local VW_TSS_Status1 = {

    {active = "WILDSHAPE_CAT_PLAYER",                 setactive = "VW_WILDSHAPE_AVATAR_PLAYER_CAT"},
    {active = "WILDSHAPE_RAVEN_PLAYER",               setactive = "VW_WILDSHAPE_AVATAR_PLAYER_RAVEN"},
    {active = "WILDSHAPE_BADGER_PLAYER",              setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER"},
    {active = "WILDSHAPE_BADGER_PLAYER_4",            setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_4"},
    {active = "WILDSHAPE_BADGER_PLAYER_6",            setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_6"},
    {active = "WILDSHAPE_BADGER_PLAYER_8",            setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_8"},
    {active = "WILDSHAPE_BADGER_PLAYER_10",           setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_10"},
    {active = "WILDSHAPE_BADGER_PLAYER_12",           setactive = "VW_WILDSHAPE_AVATAR_PLAYER_BADGER_12"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER_4",      setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_4"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER_6",      setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_6"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER_8",      setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_8"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER_10",     setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_10"},
    {active = "WILDSHAPE_SPIDER_GIANT_PLAYER_12",     setactive = "VW_WILDSHAPE_AVATAR_PLAYER_GSPIDER_12"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER",           setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER_4",         setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_4"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER_6",         setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_6"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER_8",         setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_8"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER_10",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_10"},
    {active = "WILDSHAPE_WOLF_DIRE_PLAYER_12",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DWOLF_12"},
    {active = "WILDSHAPE_BEAR_POLAR_PLAYER",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR"},
    {active = "WILDSHAPE_BEAR_POLAR_PLAYER_6",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_6"},
    {active = "WILDSHAPE_BEAR_POLAR_PLAYER_8",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_8"},
    {active = "WILDSHAPE_BEAR_POLAR_PLAYER_10",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_10"},
    {active = "WILDSHAPE_BEAR_POLAR_PLAYER_12",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PBEAR_12"},
    {active = "WILDSHAPE_DEEP_ROTHE_PLAYER",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE"},
    {active = "WILDSHAPE_DEEP_ROTHE_PLAYER_6",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_6"},
    {active = "WILDSHAPE_DEEP_ROTHE_PLAYER_8",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_8"},
    {active = "WILDSHAPE_DEEP_ROTHE_PLAYER_10",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_10"},
    {active = "WILDSHAPE_DEEP_ROTHE_PLAYER_12",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DROTHE_12"},
    {active = "WILDSHAPE_PANTHER_PLAYER",             setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER"},
    {active = "WILDSHAPE_PANTHER_PLAYER_8",           setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_8"},
    {active = "WILDSHAPE_PANTHER_PLAYER_10",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_10"},
    {active = "WILDSHAPE_PANTHER_PLAYER_12",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_PANTHER_12"},
    {active = "WILDSHAPE_OWLBEAR_PLAYER",             setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB"},
    {active = "WILDSHAPE_OWLBEAR_PLAYER_8",           setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_8"},
    {active = "WILDSHAPE_OWLBEAR_PLAYER_10",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_10"},
    {active = "WILDSHAPE_OWLBEAR_PLAYER_12",          setactive = "VW_WILDSHAPE_AVATAR_PLAYER_OWLB_12"},
    {active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER"},
    {active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER_10", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER_10"},
    {active = "WILDSHAPE_SABERTOOTH_TIGER_PLAYER_12", setactive = "VW_WILDSHAPE_AVATAR_PLAYER_STIGER_12"},
    {active = "WILDSHAPE_DILOPHOSAURUS_PLAYER",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DSAURUS"},
    {active = "WILDSHAPE_DILOPHOSAURUS_PLAYER_12",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_DSAURUS_12"},
    {active = "WILDSHAPE_MYRMIDON_AIR_PLAYER",        setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MAIR"},
    {active = "WILDSHAPE_MYRMIDON_AIR_PLAYER_12",     setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MAIR_12"},
    {active = "WILDSHAPE_MYRMIDON_EARTH_PLAYER",      setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MEARTH"},
    {active = "WILDSHAPE_MYRMIDON_EARTH_PLAYER_12",   setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MEARTH_12"},
    {active = "WILDSHAPE_MYRMIDON_FIRE_PLAYER",       setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MFIRE"},
    {active = "WILDSHAPE_MYRMIDON_FIRE_PLAYER_12",    setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MFIRE_12"},
    {active = "WILDSHAPE_MYRMIDON_WATER_PLAYER",      setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MWATER"},
    {active = "WILDSHAPE_MYRMIDON_WATER_PLAYER_12",   setactive = "VW_WILDSHAPE_AVATAR_PLAYER_MWATER_12"},

}
]]

--[[
Ext.RegisterConsoleCommand("anim", function ( cmd, uuid )
	local host = Osi.GetHostCharacter()
    Osi.PlayAnimation(host, uuid, "")
end)

]]

Ext.Events.DoConsoleCommand:Subscribe(function(e)
    if e.Command == "LoadStats" then
        for _, file in pairs {
            "VW_Arcane_Bolt.txt",
            "VW_AS_Deathstalker.txt",
            "VW_AS_Grovekeeper.txt",
            "VW_Avatar_Wildshapes.txt",
            "VW_AS_Lightbringer.txt",
            "VW_Sunlight_Spear.txt",
            "VW_Timelord_Robe.txt",
            "VW_W_Aethelion.txt",
            "VW_W_Mpekatsoksulo.txt",
        } do
          ---@diagnostic disable-next-line: undefined-field
          Ext.Stats.LoadStatsFile("Public/Velnir's Workshop/Stats/Generated/Data/"..file)
            
        end
    end
end)
--[[
---Change the visual of any item courtesy of Focus. Find him here --- https://www.nexusmods.com/users/21094599 ---
---@param item any
---@param appearance any

function Helpers.Appearance:SetItemAppearance(item, appearance)
    local entity = Helpers.Object:GetItem(item)
    if entity ~= nil then
        local appearanceUUID = Ext.Template.GetTemplate(appearance) ~= nil and appearance
        if not appearanceUUID then
            local appearanceEntity = Helpers.Object:GetItem(appearance)
            if appearanceEntity ~= nil then
                appearanceUUID = appearanceEntity.GameObjectVisual.RootTemplateId
            end
        end
        if appearanceUUID then
            self.CurrentAppearances[entity.Uuid.EntityUuid] = appearanceUUID
            entity:Replicate("GameObjectVisual")
            Osi.RemoveTransforms(entity.Uuid.EntityUuid)
            Events.Entity.GameObjectVisual:Subscribe(function(e)
                if self.CurrentAppearances[entity.Uuid.EntityUuid] == appearanceUUID then
                    e.Visual.RootTemplateId = appearanceUUID
                else
                    e:Unsubscribe()
                end
            end, {Entity = entity})
        end
    end
end
]]--


