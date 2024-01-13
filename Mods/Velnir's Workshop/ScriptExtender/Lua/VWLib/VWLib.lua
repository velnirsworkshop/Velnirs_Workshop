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
        Ext.Stats.LoadStatsFile("Public/Velnir's Workshop/Stats/Generated/Data/" .. file)
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
            local handle, value = string.match(line, '<content contentuid="(%w+)".->(.+)</content>')
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

function VWLib.GetStatusDetails(VW_caster)
    CLUtils.Info("RetrieveStatus")
    local statusDetailsList = {}
    local VW_entity = VWLib.RetrieveEntity(VW_caster)
    for _, statusDetails in ipairs(VW_entity.ServerCharacter.StatusManager.Statuses) do
        local details = {
            StatusId = tostring(statusDetails.StatusId),
            Lifetime = statusDetails.LifeTime,
            CurrentLifeTime = statusDetails.CurrentLifeTime,
            Owner = statusDetails.Owner,
            StackId = statusDetails.StackId,
            ForceStatus = statusDetails.ForceStatus
        }
        CLUtils.AddToTable(statusDetailsList, details)
    end

    return statusDetailsList
end

function VWLib.CompareStatuses(VW_caster, cur_status, prev_status)
    _D(cur_status)
    _D(prev_status)
    for _, currentStatus in ipairs(cur_status) do
        local found = false
        for _, previousStatus in ipairs(prev_status) do
            if currentStatus.StatusId == previousStatus.StatusId then
                -- Found Matching Statuses
                found = true
                break
            end
        end
        if not found then
            -- Status should not exist based on our previous statuses.
            Osi.RemoveStatus(VW_caster, currentStatus.StatusId)
        end
    end

    -- Check for statuses to apply
    for _, previousStatus in ipairs(prev_status) do
        local found = false
        for _, currentStatus in ipairs(cur_status) do
            if previousStatus.StatusId == currentStatus.StatusId then
                -- Found Matching Statuses
                found = true
                break
            end
        end
        if not found then
            local resultForce
            if previousStatus.ForceStatus then --Make sure ForceStatus which is a bool is translated properly to number for Osi.ApplyStatus
                resultForce = 1
            else
                resultForce = 0
            end
            -- Status is Missing from current statuses. We must apply based on what state this status was when we casted Chronoshift.
            Osi.ApplyStatus(VW_caster, previousStatus.StatusId, previousStatus.CurrentLifeTime, resultForce)
        end
    end
end

function VWLib.GetSpellSlotDetails(VW_caster)
    CLUtils.Info("RetrieveSpellSlotDetails")
    local entityToCall = VWLib.RetrieveEntity(VW_caster)
    VW_Globals.ValidSlots = CLUtils.LoadSpellSlotsGroupToArray(VW_Globals.ValidSlots)
    VW_slotTable = CLUtils.FilterEntityResources(VW_Globals.ValidSlots, entityToCall.ActionResources.Resources)
    return VW_slotTable
end

function VWLib.CompareSpellSlots(VW_caster, cur_spellslots, prev_spellslots)
    _D(cur_spellslots)
    _D(prev_spellslots)
    local entityToCall = VWLib.RetrieveEntity(VW_caster)
    for _, currentSS in ipairs(cur_spellslots) do
        for _, previousSS in ipairs(prev_spellslots) do
            
        end
    end
end
