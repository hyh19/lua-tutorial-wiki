-- slow
local s = ''
for i = 1, 10000 do
    s = s .. math.random() .. ','
end
io.stdout:write(s)
