Config 					= {}

Config.Locale 			= 'en'
Config.DrawDistance 	= 100
Config.Size 			= {x = 1.5, y = 1.5, z = 1.5}
Config.Color 			= {r = 255, g = 120, b = 0}
Config.Type 			= 1

Config.taxRate = 1.0  -- percentagem

Config.enableTimer = false -- timer
local second = 1000
local minute = 60 * second
local hour = 60 * minute

Config.timer = 5 * second 

--[[ 
	Below are the zones for laundering. You can set multiple zones just follow the format below. 
	Failure to do so will result in the script breaking.
	Set the job to 'any' if you want anybody to use the location. Otherwise set the required job you want to use for the location
	Any job not allowed to use the location WILL NOT see a marker or get a popup to use it.

	
	EXAMPLE LOCATION!!! JUST COPY THIS AND PASTE TO ADD MORE LOCATIONS!
		
	{
		Pos = {
			{x = 1090.84 , y = -2233.43 , z = 31.5}
		},
		
		Jobs = {
			--'any', -- SET THE 'any' TAG TO ALLOW ALL JOBS INCLUDING POLICE TO USE THE LOCATION
			--'miner',
			--'cardealer'
		}
	},
	
]]

Config.Zones = {
	
	{	
		Pos = { 
			{x = 1122.5 , y = -3194.98 , z = -41.60}, -- mudar coordenadas
		},
		
		Jobs = {
			'vannila'
		}
	},
	
	--[[{
		Pos = {
			{x = 1090.84 , y = -2233.43 , z = 31.5}
		},
		
		Jobs = {
			'any' <-- exemplo para todos conseguirem lavar
		}
	},]]
}
