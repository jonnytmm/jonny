ESX = exports["es_extended"]:getSharedObject()

AddEventHandler('playerDropped', function(reason)
    local player = source
    local ped = GetPlayerPed(player)
    local playerCoords = GetEntityCoords(ped)
    local playerName = GetPlayerName(player)

    TriggerClientEvent('snow', -1, reason, playerCoords, playerName)
end)
