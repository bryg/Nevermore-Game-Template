--[=[
	@class GameServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local GameServiceClient = {}

function GameServiceClient:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	-- self._serviceBag:GetService(require("TimeSyncService"))

	-- Internal
	self._serviceBag:GetService(require("ExampleServiceClient"))
	-- self._serviceBag:GetService(require("ServiceName"))
end

return GameServiceClient