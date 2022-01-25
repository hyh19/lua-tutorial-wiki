print(_ENV == _G) --> true

a = 1

local function f(t)
    local print = print

    local _ENV = t

    print(getmetatable) --> nil

    a = 2
    b = 3
end

local t = {}
f(t)

print(a, b) --> 1       nil
print(t.a, t.b) --> 2       3
