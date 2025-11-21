// Pneumaticcraft File
// Made by GTOW Team
	
import mods.pneumaticcraft.refinery;
import mods.pneumaticcraft.thermopneumaticprocessingplant;
import mods.pneumaticcraft.assembly;

// Removal
mods.pneumaticcraft.refinery.removeAllRecipes();
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();
mods.pneumaticcraft.assembly.removeAllLaserRecipes();
mods.pneumaticcraft.assembly.removeAllDrillRecipes();
mods.pneumaticcraft.assembly.removeAllDrillLaserRecipes();

// Val
val pneuTube = <pneumaticcraft:pressure_tube>;

// Crafting
# Refinery
recipes.addShaped(<pneumaticcraft:refinery>,
	[[plateSteel, <pneumaticcraft:pressure_tube>, plateSteel],
	[<minecraft:glass>, pumpMV, <minecraft:glass>],
	[plateSteel, <gregtech:machine:260>, plateSteel]]);
# Thermopneumatic Processing Plant
recipes.addShaped(<pneumaticcraft:thermopneumatic_processing_plant>,
	[[<minecraft:glass>, null, <minecraft:glass>],
	[<minecraft:glass>, <pneumaticcraft:thermal_compressor>, <minecraft:glass>],
	[pumpMV, <gregtech:machine:216>, pumpMV]]);
# Pressure Tube
recipes.addShaped(<pneumaticcraft:pressure_tube>,
	[[<gregtech:meta_plate:2011>, <gregtech:meta_plate:2011>, <gregtech:meta_plate:2011>],
	[gtWrench, null, gtHammer]]);
# Air Compressor
recipes.remove(<pneumaticcraft:air_compressor>);
recipes.addShaped(<pneumaticcraft:air_compressor>,
	[[null, <pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_gauge>],
	[pistonMV, pumpMV, pistonMV],
	[<gregtech:cable_double:25>, <gregtech:machine:51>, <gregtech:cable_double:25>]]);
# Thermal Compressor
recipes.addShaped(<pneumaticcraft:thermal_compressor>,
	[[null, <gregtech:meta_item_1:97>, <pneumaticcraft:pressure_gauge>],
	[pneuTube, <pneumaticcraft:air_compressor>, pneuTube],
	[null, <contenttweaker:micainsulation>, null]]);
# Liquid Compressor
recipes.remove(<pneumaticcraft:liquid_compressor>);
recipes.addShaped(<pneumaticcraft:liquid_compressor>,
	[[<gregtech:machine:1612>, pumpMV, <pneumaticcraft:pressure_gauge>],
	[pneuTube, <pneumaticcraft:air_compressor>, pneuTube],
	[<gregtech:meta_stick:2011>, null, <gregtech:meta_stick:2011>]]);
# Vortex Tube
recipes.addShaped(<pneumaticcraft:vortex_tube>,
	[[plateAluminium, pumpMV, plateAluminium],
	[<gregtech:meta_block_frame_125:11>, <pneumaticcraft:thermal_compressor>, <gregtech:meta_block_frame_125:11>],
	[plateAluminium, <gregtech:wire_coil>, plateAluminium]]);
# Heat Sink
recipes.addShaped(<pneumaticcraft:heat_sink>,
	[[<contenttweaker:micainsulation>, <gregtech:meta_block_frame_125:11>, <contenttweaker:micainsulation>],
	[<gregtech:meta_plate:2011>, <gregtech:meta_plate:2011>, <gregtech:meta_plate:2011>]]);

// Refinery
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil> * 50, [<liquid:sulfuric_heavy_fuel> * 15, <liquid:sulfuric_light_fuel> * 50, <liquid:sulfuric_naphtha> * 20, <liquid:sulfuric_gas> * 60]);
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil_light> * 150, [<liquid:sulfuric_heavy_fuel> * 10, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 30, <liquid:sulfuric_gas> * 240]);
mods.pneumaticcraft.refinery.addRecipe(473, <liquid:oil_medium> * 100, [<liquid:sulfuric_heavy_fuel> * 10, <liquid:sulfuric_light_fuel> * 50, <liquid:sulfuric_naphtha> * 150, <liquid:sulfuric_gas> * 60]);

// Thermopneumatic Processing Plant
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:lpg> * 250, <minecraft:coal>, 2.0, 373, <liquid:plastic> * 576);

// Assembly Line