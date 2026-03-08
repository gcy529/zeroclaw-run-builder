module("luci.controller.zeroclaw", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/zeroclaw") then
        return
    end

    local page = entry({"admin", "services", "zeroclaw"}, cbi("zeroclaw"), _("ZeroClaw"), 60)
    page.dependent = true
    page.acl_depends = { "luci-app-zeroclaw" }
end
