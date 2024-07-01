--[=[
	@class ServerStarter

	This is where all your server services start.
]=]

local require = require(script.Parent.loader).load(script)

local ServerStarter = {}
ServerStarter.ServiceName = "ServerStarter"

function ServerStarter:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	-- self._serviceBag:GetService(require("TimeSyncService"))

	-- Internal
	self._serviceBag:GetService(require("ExampleService"))
	-- self._serviceBag:GetService(require("ServiceName"))
end

return ServerStarter
