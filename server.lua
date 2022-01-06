local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("gofast", "Apply full performance upgrades", {}, false, function(source)
	TriggerClientEvent('mj-vehiclelimits:client:GoFast', source)
end, "admin")

QBCore.Commands.Add("goslow", "Remove full performance upgrades", {}, false, function(source)
	TriggerClientEvent('mj-vehiclelimits:client:GoSlow', source)
end, "admin")
