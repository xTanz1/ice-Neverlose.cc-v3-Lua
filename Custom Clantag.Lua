--[[
Lua create by ice1337
QQ:2637651422 / Wechat:icece_7 / Discord:iceice#6918
]]

local misc = ui.create(">> ClanTag")
local clantag = misc:switch("ClanTag Change")
local clantag_create = clantag:create()
local clantag_input= clantag_create:input("ClanTag Input")



clantag:set_callback(function(clantag)
	if clantag:get() then
		common.set_clan_tag(clantag_input:get())
	end
end)
