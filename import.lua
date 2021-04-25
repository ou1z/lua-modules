local genv = getgenv() do
    genv.env = genv
end

genv.import = function(module)
    assert(not module, 'Missing required argument #1 "module"') 
    local dir = string.format('https://raw.githubusercontent.com/ou1z/lua-modules/main/modules/%s.luamod', module)
    local res = syn.request({
        Url = dir
    }).Body
    if res:find("return") then
        loadstring(res)()
    else
        rconsoleprint(string.format("Failed to import module: %s", module))
    end
end
