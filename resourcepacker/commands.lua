minetest.register_chatcommand("rpren", {
	params = "<text>",
	description = "Rename all the resource pack .png files to standard Minetest filenames. (only needs to be run once per pack)",
	func = function(name, param)
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
