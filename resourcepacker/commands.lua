minetest.register_chatcommand("rpren", {
	params = "<text>",
	description = "Rename all the resource pack .png files to standard Minetest filenames. (only needs to be run once per pack)",
	func = function(name, param)
		rename_file("brick.png", "default_brick.png");
		rename_file("clay.png", "default_clay.png");
		rename_file("coal_block.png", "default_coalblock.png");
		rename_file("cobblestone.png", "default_cobble.png");
		rename_file("cobblestone_mossy.png", "default_mossycobble.png");
		rename_file("deadbush.png", "dry_shrub.png");
		rename_file("diamond_block.png", "default_diamondblock.png");
		rename_file("dirt.png", "default_dirt.png");
		rename_file("farmland_wet.png", "farming_soil_wet.png");
		rename_file("flower_blue_orchid.png", "flowers_viola.png");
		rename_file("flower_dandelion.png", "flowers_dandelion_yellow.png");
		rename_file("flower_rose.png", "flowers_rose.png");
		rename_file("flower_oxeye_daisy.png", "flowers_dandelion_white.png");
		rename_file("flower_houstonia.png", "flowers_geranium.png");
		rename_file("flower_tulip_orange.png", "flowers_tulip.png");
		
		
		
		rename_file("stone.png", "default_stone.png");		
        return true
    end,
})

minetest.register_chatcommand("rpget", {
    params = "<text>",
    description = "Take all the .png files in the now texture pack directory and compare them with nodes from loaded mods and create the nodes that exist in the resource pack .png files, but haven't been created by loaded mods. (use this after /rpren)",
    func = function(name, param)
        return true
    end,
})

--[[
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
--]]