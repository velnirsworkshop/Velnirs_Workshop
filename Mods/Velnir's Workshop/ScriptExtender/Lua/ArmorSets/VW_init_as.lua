Ext.Require("ArmorSets/VW_ArmorSets.lua")
Ext.Require("ArmorSets/VW_ArmorSets_Abilities.lua")

Ext.Osiris.RegisterListener("TemplateEquipped", 2, "after", function(_, VW_char)
    VW_AS.VW_SetCheck(VW_char)
    VW_AS.VW_SetBonus(VW_char)
end)

Ext.Osiris.RegisterListener("TemplateUnequipped", 2, "after", function(_, VW_char)
    VW_AS.VW_SetCheck(VW_char)
    VW_AS.VW_SetBonus(VW_char)
end)










