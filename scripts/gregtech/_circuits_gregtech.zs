// Gregtech Circuit File
// Made by GTOW Team

// This File is pertaining to all gregtech circuit crafting recipes

import mods.immersiveengineering.Blueprint;

// Val
val vTube = <gregtech:meta_item_1:516>;

// Vacuum Tube
recipes.remove(vTube);
recipes.addShaped(vTube,
	[[wire1xCopper, wire1xCopper, wire1xCopper],
	[<gregtech:meta_wire_fine:25>, <gregtech:meta_item_1:517>, <gregtech:meta_wire_fine:25>],
	[rodSteel, <ore:boltRedAlloy>, rodSteel]]);

// Good Electronic Circuit
recipes.remove(<gregtech:meta_item_1:622>);
recipes.addShaped(<gregtech:meta_item_1:622>,
	[[<ore:componentDiode>, plateSteel, <ore:componentDiode>],
	[<gregtech:meta_item_1:621>, <gregtech:meta_item_1:401>, <gregtech:meta_item_1:621>],
	[wire1xCopper, <gregtech:meta_item_1:621>, wire1xCopper]]);
