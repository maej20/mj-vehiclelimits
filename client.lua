local QBCore = exports['qb-core']:GetCoreObject()

local Vehicles = QBCore.Shared.Vehicles
local speedMultiplier = Config.UseMPH and 2.23694 or 3.6

CreateThread(function()
  local ped = PlayerPedId()
  local VehicleHashes = exports['mj-vehiclelimits']:GetVehicleHashes()

  while true do
      Wait(100)
      if IsPedInAnyVehicle(ped, false) then
        local vehicle = GetVehiclePedIsIn(ped, false)
        local hash = GetEntityModel(vehicle)
        local model = VehicleHashes[hash].model
        local category = Vehicles[model].category
        local limit = Categories[category].limit / speedMultiplier
        SetVehicleMaxSpeed(vehicle, limit)
        -- if GetEntitySpeed(vehicle) > limit then SetVehicleForwardSpeed(vehicle, limit) end
      end
  end
end)

exports("GetVehicleHashes", function()
  local hashes = {}
  for _, veh in pairs(Vehicles) do
    hashes[GetHashKey(veh.model)] = {
      ['model'] = veh.model
    }
  end
  return hashes
end)