minetest.register_craft({
	output = "tstdrm_core:stone",
	recipe = {
		{"tstdrm_core:crumbled_stone", "tstdrm_core:crumbled_stone"},
		{"tstdrm_core:crumbled_stone", "tstdrm_core:crumbled_stone"},
	}
})



minetest.register_craft({
	output = "tstdrm_core:wood 4",
	recipe = {
		{"tstdrm_core:tree"},
	}
})

minetest.register_craft({
	output = "tstdrm_core:stick 4",
	recipe = {
		{"tstdrm_core:wood"},
		{"tstdrm_core:wood"},

	}
})

minetest.register_craftitem("tstdrm_core:stick", {
	description = ("Stick"),
	inventory_image = "tstdrm_stick.png",
})

minetest.register_craftitem("tstdrm_core:iron", {
	description = ("Iron"),
	inventory_image = "tstdrm_iron.png",
})



minetest.register_craft({
	output = "tstdrm_core:pickaxe_stone",
	recipe = {
		{"tstdrm_core:crumbled_stone", "tstdrm_core:crumbled_stone", "tstdrm_core:crumbled_stone"},
		{"", "tstdrm_core:stick", ""},
		{"", "tstdrm_core:stick", ""},

	}
})

minetest.register_craft({
	output = "tstdrm_core:pickaxe_iron",
	recipe = {
		{"tstdrm_core:iron", "tstdrm_core:iron", "tstdrm_core:iron"},
		{"", "tstdrm_core:stick", ""},
		{"", "tstdrm_core:stick", ""},

	}
})

minetest.register_craft({
	output = "tstdrm_core:pickaxe_chrome",
	recipe = {
		{"tstdrm_core:chrome", "tstdrm_core:chrome", "tstdrm_core:chrome"},
		{"", "tstdrm_core:stick", ""},
		{"", "tstdrm_core:stick", ""},

	}
})





minetest.register_tool("tstdrm_core:pickaxe_stone", {
	description = ("Stone Pickaxe"),
	inventory_image = "tstdrm_stone_pickaxe.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=1.60, [4]=1.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("tstdrm_core:pickaxe_iron", {
	description = ("Iron Pickaxe"),
	inventory_image = "tstdrm_iron_pickaxe.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.20, [4]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("tstdrm_core:pickaxe_chrome", {
	description = ("Chrome Pickaxe"),
	inventory_image = "tstdrm_chrome_pickaxe.png",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.5, [3]=1.00, [3]=0.70}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
--	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})