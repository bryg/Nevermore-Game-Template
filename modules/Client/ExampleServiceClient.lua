--[=[
	@class TestServiceNameClient
]=]

local require = require(script.Parent.loader).load(script)

local ExampleServiceClient = {}

function ExampleServiceClient:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	print("ExampleServiceClient:Init() finished!")
end

return ExampleServiceClient