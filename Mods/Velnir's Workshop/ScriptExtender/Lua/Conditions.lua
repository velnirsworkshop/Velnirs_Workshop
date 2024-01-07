VW_Conditions = {}

function VW_Conditions.IsResourceNotStunted(resource)
    CLUtils.Info("Entering IsResourceStunted")
  
    return resource ~= CLGlobals.ActionResources.CL_StuntedSpellSlot
  end