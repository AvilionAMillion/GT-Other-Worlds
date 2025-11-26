// Gregtech Circuit File
// Made by GTOW Team

// This File is pertaining to all gregtech circuit crafting recipes

// Import
import mods.pneumaticcraft.pressurechamber;
mods.pneumaticcraft.pressurechamber.removeAllRecipes();

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

// Transistor
mods.pneumaticcraft.pressurechamber.addRecipe([<gtow:etchedsilicon>,<gregtech:meta_foil:1012> * 16,<gregtech:meta_wire_fine:112> * 8,<gregtech:meta_dust_tiny:39>], 3.3, [<gregtech:meta_item_1:518> * 3]);

// Capacitor
mods.pneumaticcraft.pressurechamber.addRecipe([<gregtech:meta_foil:1007>,<gregtech:meta_foil:1012> * 4,<gregtech:meta_foil:2> * 2], 3.0, [<gregtech:meta_item_1:520> * 8]);

// Resistor
mods.pneumaticcraft.pressurechamber.addRecipe([<gregtech:meta_dust:18>,<gregtech:meta_foil:1012> * 4,<gregtech:meta_wire_fine:252> * 4], 3.0, [<gregtech:meta_item_1:519> * 8]);

// Diode
mods.pneumaticcraft.pressurechamber.addRecipe([<gregtech:meta_item_1:371>,<gregtech:meta_foil:1012> * 8,<gregtech:meta_wire_fine:252> * 8], 4.0, [<gregtech:meta_item_1:521> * 8]);