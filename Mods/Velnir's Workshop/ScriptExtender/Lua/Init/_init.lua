VW = {}
VW.UUID = "82ad0c92-bc12-4194-a973-57ca1ec87d98"
VW.modTableKey = "VW"
VW.modPrefix = "VW"
VW.isRelease = false
VW.modVersion = Ext.Mod.GetMod(VW.UUID).Info.ModVersion
Mods.VW = Mods.Velnirs_Workshop

Ext.Require("VWLib/VWLib.lua")
Ext.Require("ArmorSets/VW_init_as.lua")
Ext.Require("Deprecated_Tests/deprecated.lua")
Ext.Require("Globals.lua")
Ext.Require("Conditions.lua")

if Ext.Mod.IsModLoaded("396c5966-09b0-40a1-af3f-93a5e9ce71c0") then
    local clImports = {}
    clImports[1] = "Globals"
    clImports[2] = "Strings"
    clImports[3] = "DictUtils"
    clImports[4] = "Utils"
    clImports[5] = "Validators"

    CLGlobals, CLStrings, CLDictUtils, CLUtils, CLValidators = Mods.CommunityLibrary.Import(clImports)
else
---@diagnostic disable-next-line: redundant-parameter
    Ext.Utils.Print("CL is not Loaded!")
end


VWLib.IsRelease(VW.isRelease)


Ext.Events.ResetCompleted:Subscribe(VWLib.on_reset_completed)
Ext.Events.GameStateChanged:Subscribe(VWLib.GetTeamMembers) 
