Citizen.CreateThread(function()
    --- COCAINE ---
    BikerCocaine = exports['bob74_ipl']:GetBikerCocaineObject()
    BikerCocaine.Ipl.Interior.Load()
    BikerCocaine.Style.Set(BikerCocaine.Style.basic)
    BikerCocaine.Security.Set(BikerCocaine.Security.upgrade)
    BikerCocaine.Details.Enable({BikerCocaine.Details.cokeUpgrade1, BikerCocaine.Details.cokeUpgrade2}, false)
    BikerCocaine.Details.Enable({BikerCocaine.Details.cokeBasic1, BikerCocaine.Details.cokeBasic2, BikerCocaine.Details.cokeBasic3}, true)
    RefreshInterior(BikerCocaine.interiorId)Z

    --- METH ---
    BikerMethLab = exports['bob74_ipl']:GetBikerMethLabObject()
    BikerMethLab.Ipl.Interior.Load()
    BikerMethLab.Style.Set(BikerMethLab.Style.none)
    BikerMethLab.Security.Set(BikerMethLab.Security.upgrade)
    BikerMethLab.Details.Enable(BikerMethLab.Details.production, true)
    RefreshInterior(BikerMethLab.interiorId)

    --- WEED ---
    BikerWeedFarm = exports['bob74_ipl']:GetBikerWeedFarmObject()
    BikerWeedFarm.Ipl.Interior.Load()
    BikerMethLab.Style.Set(BikerWeedFarm.Style.upgrade)
    BikerMethLab.Security.Set(BikerWeedFarm.Security.basic)
    BikerMethLab.Details.Enable({BikerWeedFarm.Details.production,BikerWeedFarm.Details.fans,BikerWeedFarm.Details.drying,}, true)
    BikerMethLab.Details.Enable(BikerWeedFarm.Details.chairs, false)
    -- Plantes
    BikerWeedFarm.Plant1.Set(BikerWeedFarm.Plant1.Stage.medium, BikerWeedFarm.Plant1.Light.basic)
    BikerWeedFarm.Plant2.Set(BikerWeedFarm.Plant2.Stage.full, BikerWeedFarm.Plant2.Light.basic)
    BikerWeedFarm.Plant3.Set(BikerWeedFarm.Plant3.Stage.medium, BikerWeedFarm.Plant3.Light.basic)
    BikerWeedFarm.Plant4.Set(BikerWeedFarm.Plant4.Stage.full, BikerWeedFarm.Plant4.Light.basic)
    BikerWeedFarm.Plant5.Set(BikerWeedFarm.Plant5.Stage.medium, BikerWeedFarm.Plant5.Light.basic)
    BikerWeedFarm.Plant6.Set(BikerWeedFarm.Plant6.Stage.full, BikerWeedFarm.Plant6.Light.basic)
    BikerWeedFarm.Plant7.Set(BikerWeedFarm.Plant7.Stage.medium, BikerWeedFarm.Plant7.Light.basic)
    BikerWeedFarm.Plant8.Set(BikerWeedFarm.Plant8.Stage.full, BikerWeedFarm.Plant8.Light.basic)
    BikerWeedFarm.Plant9.Set(BikerWeedFarm.Plant9.Stage.full, BikerWeedFarm.Plant9.Light.basic)
    RefreshInterior(BikerWeedFarm.interiorId)

    --- BLANCHIMENT ---
    BikerDocumentForgery = exports['bob74_ipl']:GetBikerDocumentForgeryObject()
    BikerDocumentForgery.Ipl.Interior.Load()
    BikerDocumentForgery.Style.Set(BikerDocumentForgery.Style.upgrade)
    BikerDocumentForgery.Equipment.Set(BikerDocumentForgery.Equipment.upgrade)
    BikerDocumentForgery.Security.Set(BikerDocumentForgery.Security.upgrade)
    BikerDocumentForgery.Details.Enable({BikerDocumentForgery.Details.production,BikerDocumentForgery.Details.furnitures,BikerDocumentForgery.Details.Chairs}, true)
    BikerDocumentForgery.Details.Enable(BikerDocumentForgery.Details.clutter, false)
    RefreshInterior(BikerDocumentForgery.interiorId)

    --- BUNKER (ARMES) ---
    GunrunningBunker = exports['bob74_ipl']:GetGunrunningBunkerObject()
    GunrunningBunker.Ipl.Interior.Load()
    GunrunningBunker.Style.Set(GunrunningBunker.Style.blue)
    GunrunningBunker.Tier.Set(GunrunningBunker.Tier.upgrade)
    GunrunningBunker.Security.Set(GunrunningBunker.Security.noEntryGate)
    GunrunningBunker.Details.Enable({GunrunningBunker.Details.officeLocked,GunrunningBunker.Details.rangeLocked,GunrunningBunker.Details.schematics,GunrunningBunker.Details.locker}, true)
    GunrunningBunker.Details.Enable({GunrunningBunker.Details.office,GunrunningBunker.Details.rangeLights,GunrunningBunker.Details.rangeWall}, false)
    RefreshInterior(GunrunningBunker.interiorId)
end)
