// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val alloy_smelter as RecipeMap = <recipemap:alloy_smelter>;

// Assembling Machine
# Blacksmiths Workshop
alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_ingot:324>, <twilightforest:liveroot> * 2)
	.outputs(<gregtech:meta_ingot:24009>)
	.EUt(12)
	.duration(80)
	.buildAndRegister();