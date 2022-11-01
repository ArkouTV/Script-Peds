Citizen.CreateThread(function()
    local hash = GetHashKey("nomduped")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed ("PED_TYPE_CIVMALE", "nomduped", pos.x, pos.y, pos.z, pos.heading, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)   
  end)
  