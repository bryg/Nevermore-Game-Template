--[=[
	@class TestServiceNameClient
]=]

local require = require(script.Parent.loader).load(script)

local BaseObject = require("BaseObject")

local TestServiceNameClient = setmetatable({}, BaseObject)
TestServiceNameClient.ClassName = "TestServiceNameClient"
TestServiceNameClient.__index = TestServiceNameClient

function TestServiceNameClient.new(obj)
	local self = setmetatable(BaseObject.new(obj), TestServiceNameClient)
	print("Hello from inside testClientService")
	return self
end

return TestServiceNameClient