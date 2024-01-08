VWLib = {}

function VWLib.DelayedCall(delayInMs, func)
    local startTime = Ext.Utils.MonotonicTime()
    local handlerId;
    handlerId = Ext.Events.Tick:Subscribe(function()
        local endTime = Ext.Utils.MonotonicTime()
        if (endTime - startTime > delayInMs) then
            Ext.Events.Tick:Unsubscribe(handlerId)
            func()
        end
    end)
end

function VWLib.GetTeamMembers(event)
    if event.FromState ~= "Sync" or event.ToState ~= "Running" then
        return
    end
    local VW_TeamDB = Osi.DB_PartOfTheTeam:Get(nil)
    local VW_TeamMembers = {}
    for _, v in pairs(VW_TeamDB) do
        local uuid = v[1]
        print("Team Member: " .. uuid)
        VW_TeamMembers[uuid] = true
        VW_AS.VW_SetCheck(uuid)
        VW_AS.VW_SetBonus(uuid)
    end
    return VW_TeamMembers
end

function VWLib.on_reset_completed()
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
    ---@diagnostic disable-next-line: redundant-parameter
    _P('Reloading stats!')
end

---@param files string[]
---@diagnostic disable-next-line: undefined-doc-param
---@param debug? boolean
function VWLib.LoadLoca(files)
    for _, file in ipairs(files) do
        local fileName = string.format("Localization/English/%s.xml", file)
        local contents = Ext.IO.LoadFile(fileName, "data")

        for line in string.gmatch(contents, "([^\r\n]+)\r*\n") do
            local handle, value= string.match(line, '<content contentuid="(%w+)".->(.+)</content>')
            if handle ~= nil and value ~= nil then
                value = value:gsub("&[lg]t;", {
                    ['&lt;'] = "<",
                    ['&gt;'] = ">"
                })
                Ext.Loca.UpdateTranslatedString(handle, value)
            end
        end
    end
end

function VWLib.IsRelease(VW_bool)
    CLGlobals.Debug = VW_bool
    CLGlobals.ShowWarnings = VW_bool
end

function VWLib.RetrieveEntity(entity)
    CLUtils.Info("RetrieveEntity FilterEntityResources")
    local res
  
    if type(entity) == "string" then
      res = Ext.Entity.Get(entity)
    else
      res = entity
    end
  
    return res
  end


 function VWLib.GetStatusDetails(entity)
    CLUtils.Info("RetrieveStatus")
    local entityToCall = VWLib.RetrieveEntity(entity)
    VW_Globals.StatusDetails = {}

    for _, statusDetails in ipairs(entityToCall.ServerCharacter.Character.StatusManager.Statuses) do
        local statusEntry = {
            StatusId = statusDetails.StatusId,
            Lifetime = statusDetails.LifeTime,
            CurrentLifeTime = statusDetails.CurrentLifeTime,
            Owner = statusDetails.Owner,
            StackId = statusDetails.StackId,
            ForceStatus = statusDetails.ForceStatus
        }

        VW_Globals.StatusDetails[statusDetails.StatusId] = statusEntry
    end

    return VW_Globals.StatusDetails
end

function VWLib.CompareStatus(entity,cur_status,prev_status)
    -- Remove statuses that are in VW_entity.StatusContainer.Statuses but not in VW_status
    for _, cur_status in pairs(cur_status) do
        if not CLUtils.IsInTable(prev_status, cur_status) then
            print("Removing Status:", cur_status)
            Osi.RemoveStatus(entity, cur_status)
        end
    end
    -- Apply statuses that are in VW_status but not in VW_entity.StatusContainer.Statuses
    for _, desired_status in pairs(prev_status) do
        if not CLUtils.IsInTable(cur_status, desired_status) then
            print("Applying Status:", desired_status)
            Osi.ApplyStatus(entity, desired_status, 100, 1,owner)
        end
    end
end

function VWLib.GetSpellSlotDetails(entity)
    CLUtils.Info("RetrieveSpellSlotDetails")
    local entityToCall = VWLib.RetrieveEntity(entity)
    VW_Globals.ValidSlots = CLUtils.LoadSpellSlotsGroupToArray(VW_Globals.ValidSlots)
    VW_slotTable = CLUtils.FilterEntityResources(VW_Globals.ValidSlots, entityToCall.ActionResources.Resources)

    return VW_slotTable
end

function VWLib.CompareSpellSlots(entity,cur_spellslots,prev_spellslots)

end




