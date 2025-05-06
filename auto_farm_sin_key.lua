local GameId = game.GameId
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local StarterGui = game:GetService("StarterGui")
local ContentProvider = game:GetService("ContentProvider")

repeat task.wait() until game:IsLoaded() and Players.LocalPlayer

plr = Players.LocalPlayer

local isSupport = nil
local GameList = {
	[994732206] = "e4aedc7ccd2bacd83555baa884f3d4b1", -- Blox Fruit
	[7018190066] = "bf149e75708e91ad902bd72e408fae02", -- Dead Rails
	[383310974] = "b83e9255dc81e9392da975a89d26e363", -- Adopt Me
	[4777817887] = "35ad587b07c00b82c218fcf0e55eeea6", -- Blade Ball
	[5477548919] = "0a9bfef9eb03d0cb17dd85451e4be696", -- Honkai Star Rail Simulator
	[5750914919] = "b94343ca266a778e5da8d72e92d4aab5", -- Fisch
	[3359505957] = "095fbd843016a7af1d3a9ee8871d3a9ee88714c64a", -- Collect All Pets
	[6167925365] = "e220573a9f986e150c6af8d4d1fb9b7c", -- Cong Dong Viet Nam
	[5361032378] = "ff4e04500b94246eaa3f5c5be92a8b4a", -- Sol's RNG
}

for id, scriptid in pairs(GameList) do
	if id == GameId then
		isSupport = scriptid
	end
end

if _G.loadCustomId then
	isSupport = _G.loadCustomId
end

if not isSupport then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/ScriptLoadButOlder.lua'))()
	wait(9e9)
end

local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = isSupport

-- Directly load the script without key check
api.load_script()
