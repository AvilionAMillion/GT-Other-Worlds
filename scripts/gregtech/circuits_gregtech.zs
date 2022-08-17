// Gregtech Circuit File
// Made by GTOW Team

// This File is pertaining to all gregtech circuit crafting recipes

import mods.immersiveengineering.Blueprint;

// Val
val vTube = <gregtech:meta_item_1:516>;
val copperWire = <gregtech:wire_single:25>;

// Engineers Workshop
recipes.remove(vTube);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.addRecipe("components", vTube, [<gregtech:meta_item_1:517>, rodCrudeSteel, rodCrudeSteel, copperWire, copperWire, copperWire]);