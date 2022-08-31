// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val assembler as RecipeMap = <recipemap:assembler>;

// Assembling Machine
# Blacksmiths Workshop
assembler.recipeBuilder()
	.inputs(<metaitem:blockStainlessSteel> * 4, <artisanworktables:workshop:5>, <actuallyadditions:block_misc:4> * 4, <enderio:block_dark_steel_anvil>)
	.fluidInputs(<fluid:soldering_alloy> * 4000)
	.outputs(<artisanworktables:workshop:3>)
	.EUt(120)
	.duration(1600)
	.buildAndRegister();