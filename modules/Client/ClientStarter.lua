--[=[
	@Service ClientStarter
	
	This is where all your client services start.
]=]

local require = require(script.Parent.loader).load(script)

local ClientStarter = {}
ClientStarter.ServiceName = "ClientStarter"

function ClientStarter:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	-- self._serviceBag:GetService(require("TimeSyncService"))

	-- Internal
	self._serviceBag:GetService(require("ExampleServiceClient"))
	-- self._serviceBag:GetService(require("ServiceName"))
end

return ClientStarter