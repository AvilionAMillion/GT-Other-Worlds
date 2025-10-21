// Pneumaticcraft File
// Made by GTOW Team
	
import mods.pneumaticcraft.refinery;
import mods.pneumaticcraft.thermopneumaticprocessingplant;

// Removal
mods.pneumaticcraft.refinery.removeAllRecipes();
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();

// Crafting
recipes.addShaped(<pneumaticcraft:refinery>,
	[[plateSteel, <gregtech:fluid_pipe_normal:324>, plateSteel],
	[<gregtech:transparent_casing>, pumpMV, <gregtech:transparent_casing>],
	[plateSteel, <gregtech:machine:260>, plateSteel]]);

// Refinery
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil> * 50, [<liquid:sulfuric_heavy_fuel> * 15, <liquid:sulfuric_light_fuel> * 50, <liquid:sulfuric_naphtha> * 20, <liquid:sulfuric_gas> * 60]);
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil_light> * 150, [<liquid:sulfuric_heavy_fuel> * 10, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 30, <liquid:sulfuric_gas> * 240]);
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil_medium> * 100, [<liquid:sulfuric_heavy_fuel> * 10, <liquid:sulfuric_light_fuel> * 50, <liquid:sulfuric_naphtha> * 150, <liquid:sulfuric_gas> * 60]);

// Thermopneumatic Processing Plant
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:lpg> * 250, <minecraft:coal>, 2.0, 373, <liquid:plastic> * 1152);