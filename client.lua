RegisterNetEvent("ftl:ZalagujZmrda")
AddEventHandler("ftl:ZalagujZmrda", function()

	while true do end

end)


if unkw.weaponblacklisting == true then
Citizen.CreateThread(function()
	while true do
		Wait(1)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			nothing, weapon = GetCurrentPedWeapon(playerPed, true)
			if isWeaponBlacklisted(weapon) then 
		  RemoveWeaponFromPed(playerPed, weapon)
		 --[[   exports['nui']:requestScreenshotUpload("https://discord.com/api/webhooks/819901517851131914/eoX5MGBtjknyOq387oN96xu2gtoq6sofu4Cqpei9nTYLOoYYhGWd78nKGUhURPA8gVu_", "files[]", function(data)end)
			TriggerServerEvent("notbad:log","Givnuta zbran")]]
			end
		end
	end
end)
end
function isWeaponBlacklisted(model)
	for _, blacklistedWeapon in pairs(unkw.zbrane) do
		if model == GetHashKey(blacklistedWeapon) then
			return true
		end
	end
	return false
end



