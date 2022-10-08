--[[
Lua create by ice1337
QQ:2637651422 / Wechat:icece_7 / Discord:iceice#6918
]]

local misc = ui.create(">> Name")
local name = misc:switch("Name Change")
local name_create = name:create()
local name_input = name_create:input("Name Input")

events.createmove:set(function()
	if name:get() then
		common.set_name(name_input:get())
	end
end)
