bag = {}
bagmt = {
    put = function(t, item)
        table.insert(t.items, item)
    end,
    take = function(t, item)
        return table.remove(t.items, item)
    end

}
bagmt["__index"] = bagmt
function bag.new()
    local t = {
        items = {}
    }
    setmetatable(t, bagmt)
    return t
end

local b = bag.new()
b:put("apple")
print(b:take())