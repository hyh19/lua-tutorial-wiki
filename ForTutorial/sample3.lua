io.output(io.open("my.txt", "w"))
io.write("This is\nsome sample text\nfor Lua.")
io.close()

print("-- io.lines: ")
for line in io.lines("my.txt") do
    print(line)
end

print("-- file:lines: ")
file = assert(io.open("my.txt", "r"))
for line in file:lines() do
    print(line)
end
file:close()
