VW = {}
VW.UUID = "82ad0c92-bc12-4194-a973-57ca1ec87d98"
VW.modTableKey = "VW"
VW.modPrefix = "VW"
VW.modVersion = Ext.Mod.GetMod(VW.UUID).Info.ModVersion
Mods.VW = Mods.Velnirs_Workshop

Ext.Require("VWLib/VWLib.lua")
Ext.Require("ArmorSets/VW_init_as.lua")
Ext.Require("Deprecated_Tests/deprecated.lua")

if Ext.Mod.IsModLoaded("396c5966-09b0-40a1-af3f-93a5e9ce71c0") then
    local clImports = {}
    clImports[1] = "Globals"
    clImports[2] = "Strings"
    clImports[3] = "DictUtils"
    clImports[4] = "Utils"
    clImports[5] = "Validators"

    CLGlobals, CLStrings, CLDictUtils, CLUtils, CLValidators = Mods.CommunityLibrary.Import(clImports)
else
    Ext.Utils.Print("CL is not Loaded!")
end

local function on_reset_completed()
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
      Ext.Stats.LoadStatsFile("Public/Velnir's Workshop/Stats/Generated/Data/"..file,1)
        
    end
    _P('Reloading stats!')
end

---@param files string[]
---@param debug? boolean
function LoadLoca(files)
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


Ext.Events.ResetCompleted:Subscribe(on_reset_completed)
