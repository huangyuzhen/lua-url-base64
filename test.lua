-- test urlbase64 library

local urlbase64 = require"urlbase64"

print(urlbase64.version)
print""

function test(s)
 local a=urlbase64.encode(s)
 local b=urlbase64.decode(a)
 print(string.len(s),b==s,a,s)
 assert(b==s)
end

for i=0,9 do
 local s=string.sub("Lua-scripting-language",1,i)
 test(s)
end

function test(p)
 print("testing prefix "..string.len(p))
 for i=0,255 do
  local s=p..string.char(i)
  local a=urlbase64.encode(s)
  local b=urlbase64.decode(a)
  assert(b==s,i)
 end
end

print""
test""
test"x"
test"xy"
test"xyz"

print""
s="Lua-scripting-language"
a=urlbase64.encode(s)
b=urlbase64.decode(a)
print(a,b,string.len(b))

a=urlbase64.encode(s)
a=string.gsub(a,"[A-Z]","?")
b=urlbase64.decode(a)
print(a,b)

a=urlbase64.encode(s)
a=string.gsub(a,"[a-z]","?")
b=urlbase64.decode(a)
print(a,b)

a=urlbase64.encode(s)
a=string.gsub(a,"[A-Z]",".")
print(a)
b=urlbase64.decode(a)
print(a,b,string.len(b))

a=urlbase64.encode(s)
a=string.gsub(a,"[a-z]",".")
b=urlbase64.decode(a)
print(a,b,string.len(b))

print""
print(urlbase64.version)

-- eof
