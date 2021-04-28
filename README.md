# Import implimentation for Synapse X.

Put this script in your Synapse X autoexec folder.
```lua
local success, err = pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ou1z/lua-modules/main/import.lua'))()
end)
if err then rconsoleprint(string.format([[
    Failed to load module "import"
    Error: %s
]], err)) return end
```

# Usage

```lua
import 'requests'

print(requests.get('https://pastebin.com/raw/VeABrS5f').text) --> outputs "lua-modules is cool"
```

## Questions/Module Requests
Add my discord:
<p align="center">
  <img src="https://discord.c99.nl/widget/theme-3/480196622962393089.png"/>
</p>

### Credits
```
Coding: 
    komt#0005 / cj!#1390
    
Maintained by:
    cj!#1390
```
