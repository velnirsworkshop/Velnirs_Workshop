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
