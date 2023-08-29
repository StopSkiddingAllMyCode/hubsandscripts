local Old
Old = hookmetamethod(game, "__namecall", function(self, ...)
local Args = {...}
local Method = getnamecallmethod()

if Method == "GetClientId" and tostring(self) == "RbxAnalyticsService" then
return "1" --- your clientID desired
end
return Old(self, ...)
end)

print(game:GetService("RbxAnalyticsService"):GetClientId())