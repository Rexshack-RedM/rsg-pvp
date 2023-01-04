local RSGCore = exports['rsg-core']:GetCoreObject()

local pvp = true

RegisterNetEvent('rsg-pvp:client:pvpToggle',function()

	if pvp == true then
		SetRelationshipBetweenGroups(1,`PLAYER`, `PLAYER`)
		NetworkSetFriendlyFireOption(false)
		pvp = false
		RSGCore.Functions.Notify(Lang:t('primary.pvp_off'), 'primary')
	else
		SetRelationshipBetweenGroups(5, `PLAYER`, `PLAYER`)
		NetworkSetFriendlyFireOption(true)
		pvp = true
		RSGCore.Functions.Notify(Lang:t('primary.pvp_on'), 'primary')
	end

end)
