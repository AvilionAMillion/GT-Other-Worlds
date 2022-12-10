// Mekanism Zenscript
// Made by GTOW Dev Team

// Removal
recipes.remove(<mekanism:basicblock:9>);
recipes.remove(<mekanism:basicblock:11>);
recipes.remove(<mekanism:basicblock:10>);

// Crafting
# Dynamic Tank
recipes.addShaped(<mekanism:basicblock:9> * 2, [
	[screwSteel, plateSteel, screwSteel],
	[plateSteel, <gregtech:meta_block_frame_3:3>, plateSteel],
	[screwSteel, plateSteel, screwSteel]]);
# Dynamic Valve
recipes.addShaped(<mekanism:basicblock:11>, [
	[screwSteel, circuitLV, screwSteel],
	[plateSteel, <gregtech:meta_block_frame_3:3>, plateSteel],
	[screwSteel, pumpLV, screwSteel]]);