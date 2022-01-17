-- fast, but uses more memory
local t = {}
for i = 1, 10000 do
    t[i] = tostring(math.random())
end
io.stdout:write(table.concat(t, ','), ',')
