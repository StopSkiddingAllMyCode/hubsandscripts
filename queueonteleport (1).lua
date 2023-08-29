task.wait(1)
local id = game:GetService('RbxAnalyticsService'):GetSessionId()
getgenv().queue_on_teleport = function(str)
    if not isfile('serverhop.txt') then writefile('serverhop.txt', id..'\n') end
    appendfile('serverhop.txt', str)
end
if isfile('serverhop.txt') then 
    local lines = readfile('serverhop.txt'):split('\n')
    delfile('serverhop.txt')
    if lines[1] == id then 
        table.remove(lines, 1)
        loadstring(table.concat(lines, '\n'))()
    end
end