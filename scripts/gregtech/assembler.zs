// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val assembler as RecipeMap = <recipemap:assembler>;

// Removal
// Cupronickel Coil Block * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8], [<liquid:tin_alloy> * 144]).remove();


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
# Chemist Workshop
assembler.recipeBuilder()
	.inputs(<artisanworktables:workshop:5>, circuitLV * 4, <gregtech:machine:215> * 2, <actuallyadditions:block_misc:4>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<artisanworktables:workshop:9>)
	.EUt(32)
	.duration(1600)
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
	
// HV
# Blacksmiths Workshop
assembler.recipeBuilder()
	.inputs(<metaitem:blockStainlessSteel> * 4, <artisanworktables:workshop:5>, <actuallyadditions:block_misc:4> * 4, <enderio:block_dark_steel_anvil>)
	.fluidInputs(<fluid:soldering_alloy> * 4000)
	.outputs(<artisanworktables:workshop:3>)
	.EUt(120)
	.duration(1600)
	.buildAndRegister();