local modpath = minetest.get_modpath("tstdrm_core")

dofile(modpath.."/craftitems.lua")

minetest.register_on_joinplayer(function(player)
	player:set_sky({
		base_color = "#000000",
		type = "regular",
		sky_color = {
			day_sky = "#6382a9",
			day_horizon = "#485d77",

			dawn_sky = "485d77",
			dawn_horizon = "081d37",

			night_sky = "000000",
			night_horizon = "081d37",

			indoors = "#081d37",
		}
	})

	player:set_clouds({
		density = 0.3,
		color = "#ffffff8f",
		thickness = 50,
		speed = {x=5,z=5}
	})
end)

minetest.override_item("", {
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.90}, uses=0, maxlevel=1},
			cracky = {times={[4]=3.0}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})




minetest.register_node("tstdrm_core:dirt_with_grass", {
	description = ("Grass"),
	tiles = {"tstdrm_grass.png", "tstdrm_dirt.png", "tstdrm_dirt.png^tstdrm_grass_side.png"},
	groups = {crumbly = 3},
	drop = "tstdrm_core:dirt",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:dirt", {
	description = ("Dirt"),
	tiles = {"tstdrm_dirt.png"},
	groups = {crumbly = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:stone", {
	description = ("Stone"),
	tiles = {"tstdrm_stone.png"},
	groups = {cracky = 3},
	drop = "tstdrm_core:crumbled_stone",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:iron_ore", {
	description = ("Iron Ore"),
	tiles = {"tstdrm_stone_with_iron.png"},
	groups = {cracky = 3},
	drop = "tstdrm_core:iron",
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:crumbled_stone", {
	description = ("Crumbled Stone"),
	tiles = {"tstdrm_cobblestone.png"},
	groups = {cracky = 4},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:drywall", {
	description = ("Drywall"),
	tiles = {"tstdrm_drywall.png"},
	groups = {cracky = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:chrome", {
	description = ("Chrome"),
	tiles = {"tstdrm_chrome.png"},
	groups = {cracky = 2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:flesh", {
	description = ("Flesh"),
	tiles = {"tstdrm_flesh.png"},
	groups = {snappy = 3},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:yellow_sand", {
	description = ("Yellow Sand"),
	tiles = {"tstdrm_yellow_sand.png"},
	groups = {crumbly = 3, falling_node = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:pink_sand", {
	description = ("Pink Sand"),
	tiles = {"tstdrm_pink_sand.png"},
	groups = {crumbly = 3, falling_node = 1},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:tree", {
	description = ("Tree"),
	tiles = {"tstdrm_tree_top.png", "tstdrm_tree_top.png", "tstdrm_tree.png"},
	groups = {choppy = 3, oddly_breakable_by_hand = 2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:wood", {
	description = ("Wooden Planks"),
	tiles = {"tstdrm_wood.png"},
	groups = {choppy = 3, oddly_breakable_by_hand = 2},
--	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("tstdrm_core:leaves", {
	description = ("Tree Leaves"),
	tiles = {"tstdrm_leaves.png"},
	groups = {snappy = 3},
--	sounds = default.node_sound_stone_defaults(),
})