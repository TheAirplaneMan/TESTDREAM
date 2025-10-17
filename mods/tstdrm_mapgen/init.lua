minetest.register_alias("mapgen_stone", "tstdrm_core:stone")
minetest.register_alias("mapgen_water_source", "tstdrm_liquid:water_source")
minetest.register_alias("mapgen_river_water_source", "air")

minetest.register_biome({
	name = "forest",
	node_top = "tstdrm_core:dirt_with_grass",
	depth_top = 1,
	node_filler = "tstdrm_core:dirt",
	depth_filler = 4,
	node_stone = "tstdrm_core:stone",
	node_riverbed = "tstdrm_core:dirt_with_grass",
	depth_riverbed = 1,
	node_dungeon = "tstdrm_core:drywall",
        y_max = 1000,
	y_min = 4,
	heat_point = 70,
	humidity_point = 50,
})

minetest.register_biome({
	name = "forest",
	node_top = "tstdrm_core:dirt_with_grass",
	depth_top = 1,
	node_filler = "tstdrm_core:dirt",
	depth_filler = 4,
	node_stone = "tstdrm_core:stone",
	node_riverbed = "tstdrm_core:dirt_with_grass",
	depth_riverbed = 1,
	node_dungeon = "tstdrm_core:drywall",
        y_max = 1000,
	y_min = 4,
	heat_point = 70,
	humidity_point = 50,
})

minetest.register_biome({
	name = "fleshland",
	node_top = "tstdrm_core:flesh",
	depth_top = 1,
	node_filler = "tstdrm_core:flesh",
	depth_filler = 4,
	node_stone = "tstdrm_core:stone",
	node_riverbed = "tstdrm_core:flesh",
	depth_riverbed = 1,
	node_dungeon = "tstdrm_core:drywall",
        y_max = 1000,
	y_min = 4,
	heat_point = 70,
	humidity_point = 80,
})

minetest.register_biome({
	name = "yellow_beach",
	node_top = "tstdrm_core:yellow_sand",
	depth_top = 1,
	node_filler = "tstdrm_core:yellow_sand",
	depth_filler = 4,
	node_stone = "tstdrm_core:stone",
	node_riverbed = "tstdrm_core:yellow_sand",
	depth_riverbed = 1,
	node_dungeon = "tstdrm_core:drywall",
        y_max = 3,
	y_min = -256,
	heat_point = 30,
	humidity_point = 50,
})

minetest.register_biome({
	name = "pink_beach",
	node_top = "tstdrm_core:pink_sand",
	depth_top = 1,
	node_filler = "tstdrm_core:pink_sand",
	depth_filler = 4,
	node_stone = "tstdrm_core:stone",
	node_riverbed = "tstdrm_core:pink_sand",
	depth_riverbed = 1,
	node_dungeon = "tstdrm_core:drywall",
        y_max = 3,
	y_min = -256,
	heat_point = 10,
	humidity_point = 20,
})




	-- Acacia tree and log

minetest.register_decoration({
	name = "tstdrm_mapgen:3d_ring_0",
	deco_type = "schematic",
	place_on = {"tstdrm_core:dirt_with_grass", "tstdrm_core:flesh"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.0002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"forest", "fleshland"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("tstdrm_mapgen") .. "/schematics/3d_ring_0.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	place_offset_y = 4,
})

minetest.register_decoration({
	name = "tstdrm_mapgen:3d_ring_1",
	deco_type = "schematic",
	place_on = {"tstdrm_core:dirt_with_grass", "tstdrm_core:flesh"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.0002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"forest", "fleshland"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("tstdrm_mapgen") .. "/schematics/3d_ring_1.mts",
	flags = "place_center_x, place_center_z",
	place_offset_y = 14,
})

minetest.register_decoration({
	name = "tstdrm_mapgen:3d_ring_2",
	deco_type = "schematic",
	place_on = {"tstdrm_core:dirt_with_grass", "tstdrm_core:flesh"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.0002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"forest", "fleshland"},	
        y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("tstdrm_mapgen") .. "/schematics/3d_ring_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	place_offset_y = 10,

})

minetest.register_decoration({
	name = "tstdrm_mapgen:fleshland_tree",
	deco_type = "schematic",
	place_on = {"tstdrm_core:flesh"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.002,
		spread = {x = 250, y = 250, z = 250},
		seed = 50,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"fleshland"},	
        y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("tstdrm_mapgen") .. "/schematics/tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	place_offset_y = -1,
})

minetest.register_decoration({
	name = "tstdrm_mapgen:forest_tree",
	deco_type = "schematic",
	place_on = {"tstdrm_core:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.024,
		scale = 0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.5
	},
	biomes = {"forest"},
	y_max = 31000,
	y_min = 1,
	schematic = minetest.get_modpath("tstdrm_mapgen") .. "/schematics/tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	place_offset_y = -1,
})

minetest.register_decoration({
	name = "tstdrm_mapgen:stone_pillars",
	deco_type = "simple",
	place_on = {"tstdrm_core:flesh", "tstdrm_core:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.8,
		scale = 0.2,
		spread = {x = 100, y = 100, z = 100},
		seed = 53995,
		octaves = 3,
		persist = 0.2
	},
	biomes = {"fleshland", "grassland"},
	y_max = 31000,
	y_min = 4,
	decoration = "tstdrm_core:stone",
	height = 1,
	height_max = 5,
})




minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tstdrm_core:crumbled_stone",
	wherein        = "tstdrm_core:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 31000,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tstdrm_core:iron_ore",
	wherein        = "tstdrm_core:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 0,
	y_min          = -31000,
})