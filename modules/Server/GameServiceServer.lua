--[=[
	@class GameServiceServer
]=]

local require = require(script.Parent.loader).load(script)

local GameServiceServer = {}

function GameServiceServer:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("TimeSyncService"))
	self._serviceBag:GetService(require("RagdollService"))
	self._serviceBag:GetService(require("IKService"))

	-- Internal
	self._serviceBag:GetService(require("ExampleService"))
	self._serviceBag:GetService(require("GameBindersServer"))
	-- self._serviceBag:GetService(require("ServiceName"))
end

return GameServiceServer
