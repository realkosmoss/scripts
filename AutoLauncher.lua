-- Define the list of games and their associated loadstrings
local games = {
   ["10660791703"] = {name = "Cart Ride Around Nothing", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/cartridearoundnothing.lua", working = true},
   ["11454403177"] = {name = "Cart Ride Delivery Service", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/CartRideDeliveryService.lua", working = true},
   ["12514151964"] = {name = "Cart Ride Delivery Service Galaxy", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/CartRideDeliveryServiceGalaxy.lua", working = true},
   ["10914683361"] = {name = "Busy Business", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/BusyBusinessNotDone.lua", working = true},
   ["10042772221"] = {name = "Lumber Unsecure", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/lumberunsecure.lua", working = true},
   ["5902977746"] = {name = "Ultimate Tower Defense", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/UltimateTowerDefense.lua", working = true},
   ["7952502098"] = {name = "Impossible Glass Bridge Obby", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/ImpossibleGlassBridgeObby.lua", working = true},
   ["1962086868"] = {name = "Tower Of Hell", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/TowerOfHell.lua", working = true},
   ["6279039046"] = {name = "Sled Simulator", script = "https://raw.githubusercontent.com/realkosmoss/scripts/main/scripts/SledSimulatorAutoFarm.lua", working = true},
}

-- Check if the current game's PlaceId matches one of the specified game IDs
if games[tostring(game.PlaceId)] then
   print("Correct Game: " .. games[tostring(game.PlaceId)].name)
   
   -- Load the associated loadstring for the current game
   loadstring(game:HttpGet(games[tostring(game.PlaceId)].script))()
else
   print("Incorrect Game")
end
