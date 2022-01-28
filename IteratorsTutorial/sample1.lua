function square(state, n)
    if n < state then
        n = n + 1
        return n, n * n
    end
end

for i, n in square, 5, 0 do
    print(i, n)
end

function squares(nbvals)
    return square, nbvals, 0 -- iterator,state,initial value
end

for i, n in squares(5) do
    print(i, n)
end

--[[
1       1
2       4
3       9
4       16
5       25
1       1
2       4
3       9
4       16
5       25
]]
