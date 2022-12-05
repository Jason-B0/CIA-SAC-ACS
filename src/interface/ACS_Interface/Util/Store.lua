local Roact = require(game:GetService('ReplicatedStorage').Packages.Roact)
local Hooks = require(game:GetService('ReplicatedStorage').Packages.Hooks)
local Rodux = require(game:GetService('ReplicatedStorage').Packages.Rodux)
local RoactRodux = require(game:GetService('ReplicatedStorage').Packages.RoactRodux)
local e = Roact.createElement

return Rodux.Store.new(
    Rodux.combineReducers({
        
        page = Rodux.createReducer(nil, {
            UpdatePage = function(_, action)
                return action.newPage
            end
        });
        
    }), 
    nil, 
    {Rodux.loggerMiddleware}
)