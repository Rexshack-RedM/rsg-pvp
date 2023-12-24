local RSGCore = exports['rsg-core']:GetCoreObject()

local pvp = true

RegisterNetEvent('rsg-pvp:client:pvpToggle',function()
    local ped = PlayerPedId()

    if pvp == true then
        SetRelationshipBetweenGroups(1,`PLAYER`, `PLAYER`)
        NetworkSetFriendlyFireOption(false)
        Citizen.InvokeNative(0xB8DE69D9473B7593, ped, 6) -- Disable choking other people

        pvp = false

        
        lib.notify({ title = Lang:t('primary.pvp_off'), duration = 5000, type = 'warning' })
        
        
        return
    end

    SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
    NetworkSetFriendlyFireOption(true)
    Citizen.InvokeNative(0x949B2F9ED2917F5D, ped, 6) -- Enable choking other people

    pvp = true

    
    lib.notify({ title = Lang:t('primary.pvp_on'), duration = 5000, type = 'success' })
end)

CreateThread(function()
    while true do
        DisableControlAction(0, 0x1F6D95E5, true) -- Disable F4 HUD menu

        if Citizen.InvokeNative(0x91AEF906BCA88877, 0, 0x1F6D95E5) then
            TriggerEvent('rsg-pvp:client:pvpToggle')
        end

        Wait(5)
    end
end)
