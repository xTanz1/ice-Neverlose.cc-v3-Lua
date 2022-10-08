--[[
Lua create by ice1337
QQ:2637651422 / Wechat:icece_7 / Discord:iceice#6918
]]

local misc = ui.create(">> ViewModel")
local viewmodel = misc:switch("ViewModel Change", false)
local viewmodel_create = viewmodel:create()
local viewmodel_fov = viewmodel_create:slider("FOV", 0, 100)
local viewmodel_x = viewmodel_create:slider("X", -10, 10, 0)
local viewmodel_y = viewmodel_create:slider("Y", -10, 10, 0)
local viewmodel_z = viewmodel_create:slider("Z", -10, 10, 0)


events.createmove:set(function()
    if viewmodel:get() then
        cvar.viewmodel_fov:int(viewmodel_fov:get(), true)
		cvar.viewmodel_offset_x:float(viewmodel_x:get(), true)
		cvar.viewmodel_offset_y:float(viewmodel_y:get(), true)
		cvar.viewmodel_offset_z:float(viewmodel_z:get(), true)
    else
        cvar.viewmodel_fov:int(68)
        cvar.viewmodel_offset_x:float(2.5)
        cvar.viewmodel_offset_y:float(0)
        cvar.viewmodel_offset_z:float(-1.5)
    end
end)
