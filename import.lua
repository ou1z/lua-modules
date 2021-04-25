local env = getgenv() do
    env.env = env
end

env.import = function(module)
    local dir = string.format('https://raw.githubusercontent.com/ou1z/lua-modules/main/modules/%s.luamod')
    local res = syn.request({
        Url = dir
    }).Body
    if res:find("return") then
        loadstring(res)()
    end
end
