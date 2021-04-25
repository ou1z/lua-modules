local genv = getgenv() do
    genv.env = genv
end

genv.import = function(module)
    local dir = string.format('https://raw.githubusercontent.com/ou1z/lua-modules/main/modules/%s.luamod', module)
    local res = syn.request({
        Url = dir
    }).Body
    if res:find("return") then
        loadstring(res)()
    end
end
