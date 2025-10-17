minetest.register_node("tstdrm_decor:lantern", { 
	description = "Lantern",
		tiles = {
		"tstdrm_chrome.png",
		"tstdrm_chrome.png",
		"tstdrm_lantern_side.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.2500, -0.5000, -0.2500, 0.2500, -0.4375, 0.2500},
			{-0.2500, 0.000, -0.2500, 0.2500, 0.06250, 0.2500},
			{-0.1875, -0.5000, -0.1875, 0.1875, 0.1250, 0.1875}
		}
	},
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 15,
	groups = { oddly_breakable_by_hand = 3},
--	sounds
})

minetest.register_craft({
	output = "tstdrm_decor:lantern 4",
	recipe = {
		{"", "tstdrm_core:chrome", ""},
		{"tstdrm_core:chrome", "tstdrm_core:wood", "tstdrm_core:chrome"},
		{"", "tstdrm_core:chrome", ""},

	}
})