--[=[
	@class GameServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local GameServiceClient = {}

function GameServiceClient:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("TimeSyncService"))
	self._serviceBag:GetService(require("RagdollServiceClient"))
	self._serviceBag:GetService(require("IKServiceClient"))
	self._serviceBag:GetService(require("CameraStackService"))

	-- Internal
	self._serviceBag:GetService(require("ExampleServiceClient"))
	self._serviceBag:GetService(require("GameBindersClient"))
	self._serviceBag:GetService(require("GameTranslator"))
	-- self._serviceBag:GetService(require("ServiceName"))
end

return GameServiceClient