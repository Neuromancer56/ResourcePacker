dofile(minetest.get_modpath("resourcepacker").."/commands.lua")

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end
function mod_path()
	local dir = minetest.get_modpath(minetest.get_current_modname())
	return dir
end

function map_resource(node, file)
	if file_exists(mod_path().."\\textures\\"..file) then
		minetest.override_item(node, {
	tiles = {file},
	})
	end
	print(mod_path())
	minetest.chat_send_all(mod_path())
end

map_resource( "default:brick", "brick.png")
map_resource( "stairs:stair_brick", "brick.png")
map_resource("stairs:slab_brick","brick.png")
map_resource("default:clay","clay.png")
map_resource("default:coalblock","coal_block.png")
map_resource("default:cobble", "cobblestone.png")
map_resource("stairs:stair_cobble","cobblestone.png")
map_resource("stairs:slab_cobble","cobblestone.png")
map_resource("default:mossycobble","cobblestone_mossy.png")
map_resource("default:dry_shrub","deadbush.png")
map_resource("default:diamondblock","diamond_block.png")
map_resource("default:dirt","dirt.png")

minetest.override_item("doors:door_steel", {
	tiles_bottom = {"door_iron_lower.png", "door_grey.png"},
	tiles_top = {"door_iron_upper.png", "door_grey.png"},
})
minetest.override_item("doors:door_wood", {
	tiles_bottom = {"door_wood_lower.png", "door_brown.png"},
	tiles_top = {"door_wood_upper.png", "door_brown.png"},
})

map_resource("farming:soil","farmland_dry.png")
map_resource("farming:soil_wet","farmland_wet.png")
map_resource("flowers:viola","flower_blue_orchid.png")
map_resource("flowers:dandelion_yellow","flower_dandelion.png")
map_resource("flowers:rose","flower_rose.png")
map_resource("flowers:dandelion_white","flower_oxeye_daisy.png")
map_resource("flowers:geranium","flower_houstonia.png")
map_resource("flowers:tulip","flower_tulip_orange.png")
map_resource("default:stone","stone.png")
map_resource("stairs:stair_stone","stone.png")
map_resource("stairs:slab_stone","stone.png")
