ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('esx_aiTaxi:pay')
AddEventHandler('esx_aiTaxi:pay', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', _source, 'Isso faz ~g~€'..price..'~s~. Muito Obrigado!')
end)