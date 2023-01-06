// Gregtech Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;

// This File is pertaining to all gregtech machine (excluding multiblock) crafting recipes (hatches/busses)



// Val
val lubeFoil = <contenttweaker:lubricatedfoil>;
val assembler as RecipeMap = <recipemap:assembler>;

// Removal
# Lv Hatches/Busses/Dynamos
recipes.remove(<gregtech:machine:1151>);
recipes.remove(<gregtech:machine:1166>);
recipes.remove(<gregtech:machine:1181>);
recipes.remove(<gregtech:machine:1196>);
recipes.remove(<gregtech:machine:1211>);
recipes.remove(<gregtech:machine:1226>);
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <metaitem:springTin> * 2, <metaitem:voltage_coil.lv>], null).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:hull.lv>, <metaitem:cableGtSingleTin> * 2, <metaitem:voltage_coil.lv>], null).remove();

// Assembler LV Crafting
# Item
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:machine:1627>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(0)
	.outputs(<gregtech:machine:1151>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:machine:1627>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(1)
	.outputs(<gregtech:machine:1166>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:machine:1151>)
	.circuit(1)
	.outputs(<gregtech:machine:1166>)
	.duration(5)
	.EUt(16)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:machine:1166>)
	.circuit(1)
	.outputs(<gregtech:machine:1151>)
	.duration(5)
	.EUt(16)
	.buildAndRegister();
# Fluid
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:machine:1612>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(0)
	.outputs(<gregtech:machine:1181>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:machine:1612>)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(1)
	.outputs(<gregtech:machine:1196>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:machine:1181>)
	.circuit(1)
	.outputs(<gregtech:machine:1196>)
	.duration(5)
	.EUt(16)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:machine:1196>)
	.circuit(1)
	.outputs(<gregtech:machine:1181>)
	.duration(5)
	.EUt(16)
	.buildAndRegister();
# Energy
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:cable_single:112> * 2, <gregtech:meta_item_1:97> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(1)
	.outputs(<gregtech:machine:1211>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(hullLV, lubeFoil * 4, <gregtech:meta_spring:112> * 2, <gregtech:meta_item_1:97> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(1)
	.outputs(<gregtech:machine:1226>)
	.duration(300)
	.EUt(32)
	.buildAndRegister();
