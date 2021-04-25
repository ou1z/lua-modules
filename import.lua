local genv = getgenv() do
    genv.env = env
end

genv.import = function(module)
    local dir = string.format('https://raw.githubusercontent.com/ou1z/lua-modules/main/modules/%s.luamod', module)
    local res = syn.request({
        Url = dir
    }).Body
    if res:find("return") then
        warn(res)
        loadstring(res)()
    end
end
