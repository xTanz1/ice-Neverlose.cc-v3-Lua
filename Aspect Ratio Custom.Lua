--[[
Lua create by ice1337
QQ:2637651422 / Wechat:icece_7 / Discord:iceice#6918
]]

local misc = ui.create(">> Ratio")
local ratio = misc:switch("Aspect Ratio Change", false)
local ratio_create = ratio:create()
local ratio_slider = ratio_create:slider("Ratio Slider", 0, 20, 0, 0.1)

events.createmove:set(function()
    if ratio:get() then
        cvar.r_aspectratio:float(ratio_slider:get()/10)
    else
        cvar.r_aspectratio:float(0)
    end
end)
