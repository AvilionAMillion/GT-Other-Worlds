// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val alloy_smelter as RecipeMap = <recipemap:alloy_smelter>;

// Assembling Machine
# Ironwood
alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_ingot:324>, <twilightforest:liveroot> * 2)
	.outputs(<gregtech:meta_ingot:24009>)
	.EUt(12)
	.duration(80)
	.buildAndRegister();
# Rubber Pulp
<recipemap:alloy_smelter>.findRecipe(7, [<metaitem:dustSulfur>, <metaitem:dustRawRubber> * 3], null).remove();
alloy_smelter.recipeBuilder()
	.inputs(<metaitem:dustSulfur>, <metaitem:dustRawRubber> * 3)
	.outputs(<gregtech:meta_dust:1068>)
	.EUt(7)
	.duration(20)
	.buildAndRegister();