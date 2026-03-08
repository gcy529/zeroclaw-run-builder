local m = Map("zeroclaw", translate("ZeroClaw"), translate("ZeroClaw proxy tool configuration"))

local s = m:section(TypedSection, "zeroclaw", translate("Settings"))
s.addremove = false
s.anonymous = true

local o = s:option(Flag, "enabled", translate("Enable"))
o.default = 0
o.rmempty = false

o = s:option(Value, "port", translate("Port"))
o.default = "8080"
o.datatype = "port"
o.rmempty = false

return m
