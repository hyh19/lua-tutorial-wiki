function ipairs(...)
    local t = {...}
    local tmp = {...}
    -- if nothing to iterate over just return a dummy iterator
    if #tmp == 0 then
        return function()
        end, nil, nil
    end
    local function mult_ipairs_it(t, i)
        i = i + 1
        for j = 1, #t do
            local val = t[j][i]
            if val == nil then
                return val
            end
            tmp[j] = val
        end
        return i, unpack(tmp)
    end
    return mult_ipairs_it, t, 0
end

local t1 = {"a", "b", "c", "d", "e"}
local t2 = {"A", "B", "C", "D", "E", "F"}

for k, v1, v2 in ipairs(t1, t2) do
    print(k, v1, v2)
end

--[[
1       a       A
2       b       B
3       c       C
4       d       D
5       e       E
]]
