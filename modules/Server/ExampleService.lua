--[=[
	@class ExampleService
]=]
local require = require(script.Parent.loader).load(script)

print("Server: Hello from ExampleService!")

local ExampleService = {}

function ExampleService:Init(serviceBag)
    print("Server: ExampleService:Init() started!")
    self._serviceBag = assert(serviceBag, "No serviceBag")

    print("Server: ExampleService:Init() finished!")
end


return ExampleService