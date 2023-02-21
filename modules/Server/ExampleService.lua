--[=[
	@class ExampleService
]=]
local require = require(script.Parent.loader).load(script)

local ExampleService = {}

function ExampleService:Init(serviceBag)
    self._serviceBag = assert(serviceBag, "No serviceBag")

    print("Server: ExampleService:Init() finished!")
end


return ExampleService