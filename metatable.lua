t = {a=15}
mt = {
    __add = function(a,b)
        return a.a+b
    end,
}
setmetatable(t,mt)
print(t+1)  

t1 = {a=15}
mt1 = {
    __index = {
        abc = 123,
        def = 456,
    }
}
setmetatable(t1,mt1)
print(t1["abc"])

t2 = {a=15}
mt2 = {
    __newindex = function(t,k,v)
        rawset(t,k,v)
    end
}
setmetatable(t2,mt2)
t2["abc"] = 1
print(t2["abc"])