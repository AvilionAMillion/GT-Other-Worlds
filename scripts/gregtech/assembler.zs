// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val assembler as RecipeMap = <recipemap:assembler>;

// Removal
<recipemap:assembler>.findRecipe(30, [<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8], [<liquid:tin_alloy> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:chest:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:polybenzimidazole> * 9]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:glue> * 500]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:plastic> * 144]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polytetrafluoroethylene> * 72]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <minecraft:glass:0>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:polybenzimidazole> * 9]).remove();



// LV
# LV Control Module
assembler.recipeBuilder()
	.inputs(circuitLV * 4, plateSteel * 4, <gregtech:cable_single:112> * 4, <gregtech:meta_item_1:301>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<contenttweaker:controllv>)
	.EUt(32)
	.duration(860)
	.buildAndRegister();
# Cupronickel Coil Block
assembler.recipeBuilder()
	.inputs(<gregtech:wire_double:274> * 8, <contenttweaker:micainsulation> * 4)
	.fluidInputs(<fluid:tin_alloy> * 288)
	.outputs(<gregtech:wire_coil>)
	.EUt(32)
	.duration(200)
	.buildAndRegister();
# Wood Casing
recipes.remove(<actuallyadditions:block_misc:4>);
assembler.recipeBuilder()
	.inputs(<ore:logWood> * 16)
	.fluidInputs(<fluid:creosote> * 2000)
	.outputs(<actuallyadditions:block_misc:4>)
	.EUt(20)
	.duration(400)
	.buildAndRegister();
# Coated Circuit Board
assembler.recipeBuilder()
	.inputs(<gregtech:meta_plate:1648>)
	.fluidInputs(<fluid:glue> * 50)
	.circuit(1)
	.outputs(<gregtech:meta_item_1:381>)
	.EUt(24)
	.duration(150)
	.buildAndRegister();
# Thermal Evaporation Casing
assembler.recipeBuilder()
	.inputs(plateBronze * 6, <gregtech:meta_block_frame_20:4>)
	.circuit(6)
	.outputs(<mekanism:basicblock2> * 3)
	.EUt(24)
	.duration(100)
	.buildAndRegister();
# Thermal Evaporation Valve
assembler.recipeBuilder()
	.inputs(<mekanism:basicblock2>, pumpLV, <gregtech:meta_rotor:324>)
	.circuit(1)
	.outputs(<mekanism:basicblock:15>)
	.EUt(24)
	.duration(100)
	.buildAndRegister();
	
	
// MV
# Phenolic Circuit Board
<recipemap:assembler>.findRecipe(30, [<metaitem:dustWood>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:glue> * 50]).remove();
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:381>)
	.fluidInputs(<fluid:phenol> * 100)
	.circuit(1)
	.outputs(<gregtech:meta_item_1:382>)
	.EUt(48)
	.duration(150)
	.buildAndRegister();
# Thermal Insulation
assembler.recipeBuilder()
	.inputs(<contenttweaker:micainsulation>, <gtow:yeticlippings> * 2, <gregtech:meta_foil:2> * 4)
	.fluidInputs(<fluid:plastic> * 288)
	.outputs(<gtow:yetiinsulation>)
	.EUt(120)
	.duration(400)
	.buildAndRegister();
# Kanthal Coil Block
assembler.recipeBuilder()
	.inputs(<gregtech:wire_double:288> * 8, <gtow:yetiinsulation> * 4)
	.fluidInputs(<fluid:cupronickel> * 288)
	.outputs(<gregtech:wire_coil:1>)
	.EUt(128)
	.duration(200)
	.buildAndRegister();
	
// HV
