print("-- count from 1 to 3")
for i = 1, 3 do
    print(i)
end

print("-- count from 3 to 1 in steps of 1. zero iterations!")
for i = 3, 1 do
    print(i)
end

print("-- count down from 3 to 1")
for i = 3, 1, -1 do
    print(i)
end

print("-- we're not limited to integers")
for i = 1, 0, -0.25 do
    print(i)
end
