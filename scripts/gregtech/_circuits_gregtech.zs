// Gregtech Circuit File
// Made by GTOW Team

// This File is pertaining to all gregtech circuit crafting recipes

import mods.immersiveengineering.Blueprint;

// Val
val vTube = <gregtech:meta_item_1:516>;

// Removal
recipes.remove(vTube);
recipes.addShaped(vTube,
	[[wire1xCopper, wire1xCopper, wire1xCopper],
	[<gregtech:meta_wire_fine:25>, <gregtech:meta_item_1:517>, <gregtech:meta_wire_fine:25>],
	[rodSteel, <ore:boltRedAlloy>, rodSteel]]);
