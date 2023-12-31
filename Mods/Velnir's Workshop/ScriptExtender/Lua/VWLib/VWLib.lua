local VAdd = Ext.Require("VW_Additions.lua")
if VAdd[1] ~= nil then VAdd = VAdd[1] end

local VWLib = {}


local DelayedCall = function(delayInMs, func)
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
VWLib["DelayedCall"] = DelayedCall

local GetTeamMembers = function(event)

    if event.FromState ~= "Sync" or event.ToState ~= "Running" then
        return
    end

    local VW_TeamDB = Osi.DB_PartOfTheTeam:Get(nil)

    local VW_TeamMembers = {}
    for _, v in pairs(VW_TeamDB) do
        local uuid = v[1]
        print("Team Member: " .. uuid)
        VW_TeamMembers[uuid] = true
        VAdd.VW_SetCheck(uuid)
        VAdd.VW_SetBonus(uuid)
    end
    return VW_TeamMembers
end
VWLib["GetTeamMembers"] = GetTeamMembers


return VWLib
