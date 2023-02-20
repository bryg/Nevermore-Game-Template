local require = require(script.Parent.loader).load(script)

local GameServiceClient = {}

function GameServiceClient:Init(serviceBag)
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- self._serviceBag:GetService(require("ServiceName"))
end

return GameServiceClient
