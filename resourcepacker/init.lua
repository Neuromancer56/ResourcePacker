dofile(minetest.get_modpath("resourcepacker").."/commands.lua")
--dofile(minetest.get_modpath(minetest.get_current_modname()).."/commands.lua")

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end
function mod_path()
	--local dir = minetest.get_modpath(minetest.get_current_modname())
	local dir = minetest.get_modpath("resourcepacker")
	return dir
end

--[[
function map_resource(node, file)
	if file_exists(mod_path().."\\textures\\"..file) then
		minetest.override_item(node, {
	tiles = {file},
	})
	end
end
--]]

function rename_file(source, destination)
	if file_exists(mod_path().."\\textures\\"..source) then
	os.rename(mod_path().."\\textures\\"..source, mod_path().."\\textures\\"..destination)
	end
end

