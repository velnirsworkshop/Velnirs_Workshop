local VWLib = Ext.Require("VWLib/VWLib.lua")
if VWLib[1] ~= nil then VWLib = VWLib[1] end
local VAdd = Ext.Require("Server/VW_Additions.lua")
if VAdd[1] ~= nil then VAdd = VAdd[1] end

Mods.V_Workshop.VWLib = VWLib
Mods.V_Workshop.VAdd = VAdd


Ext.Events.DoConsoleCommand:Subscribe(function(e)
    if e.Command == "LoadStats" then
        for _, file in pairs {
            "VW_A_Alerias.txt",
            "VW_Arcane_Bolt.txt",
            "VW_AS_Deathstalker.txt",
            "VW_AS_Grovekeeper.txt",
            "VW_AS_Lightbringer.txt",
            "VW_Sunlight_Spear.txt",
            "VW_Timelord_Robe.txt",
            "VW_W_Aethelion.txt",
            "VW_W_Mpekatsoksulo.txt",
        } do
          Ext.Stats.LoadStatsFile("Public/Velnir's Workshop/Stats/Generated/Data/"..file,1)
            
        end
    end
end)

Ext.Stats.GetModifierAttributes("DisableEquipmentSlots")

Ext.Osiris.RegisterListener("TemplateEquipped", 2, "after", function(_, VW_character)
    VAdd.VW_SetCheck(VW_character)
    print("Registered Equip")
    VAdd.VW_SetBonus(VW_character)
    print("Register Set")
end)

Ext.Osiris.RegisterListener("TemplateUnequipped", 2, "after", function(_, VW_character)
    VAdd.VW_SetCheck(VW_character)
    print("Registered UnEquip")
    VAdd.VW_SetBonus(VW_character)
    print("Register Set")
end)

Ext.Events.GameStateChanged:Subscribe(VWLib.GetTeamMembers)


Ext.RegisterConsoleCommand("anim", function ( cmd, uuid )
	local host = Osi.GetHostCharacter()
    Osi.PlayAnimation(host, uuid, "")
end)

