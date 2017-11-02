# This is url base64 library for lua 5.1, 5.2

origin code come from [lhf](origin.md)

Usage:

```lua
urlbase64 = require("urlbase64")
origin    = "abc"
s = urlbase64.encode(origin)
s2 = urlbase64.decode(s)

print(s2)
```
