function foo()
    print("foo", 1)
    coroutine.yield()
    print("foo", 2)
end

co = coroutine.create(foo)
print(type(co)) --> thread

print(coroutine.status(co)) --> suspended

--[[
foo     1
true
]]
print(coroutine.resume(co))

--[[
foo     2
true
]]
print(coroutine.resume(co)) --> true

print(coroutine.status(co)) --> dead

print(coroutine.resume(co)) --> false   cannot resume dead coroutine
