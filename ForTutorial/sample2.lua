t = {3, 7, ["pi"] = 3.14159, 10, ["banana"] = "yellow", 17}

print("-- pairs: ")

for key, value in pairs(t) do
    print(key, value)
end

print("-- ipairs: ")

for index, value in ipairs(t) do
    print(index, value)
end

print("-- next: ")

for key, value in next, t, nil do
    print(key, value)
end
