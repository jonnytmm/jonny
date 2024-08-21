ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('snow', function(reason, playerCoords, playerName)
    local myCoords = GetEntityCoords(PlayerPedId())
    if #(playerCoords - myCoords) < 30 then
        TriggerEvent("s_hud:notify", "Information", "Anti Combat Log - " .. playerName .. " has disconnected (Reason: " .. reason .. ")", 'info')
    end
end)