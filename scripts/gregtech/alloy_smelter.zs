// Alloy Smelter File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val alloy_smelter as RecipeMap = <recipemap:alloy_smelter>;

// Alloy Smelter
# Rubber Pulp
<recipemap:alloy_smelter>.findRecipe(7, [<metaitem:dustSulfur>, <metaitem:dustRawRubber> * 3], null).remove();
alloy_smelter.recipeBuilder()
	.inputs(<metaitem:dustSulfur>, <metaitem:dustRawRubber> * 3)
	.outputs(<gregtech:meta_dust:1068>)
	.EUt(7)
	.duration(20)
	.buildAndRegister();
# Structural Glass
alloy_smelter.recipeBuilder()
	.inputs(<metaitem:plateSteel> * 2, <ore:blockGlass>)
	.outputs(<mekanism:basicblock:10>)
	.EUt(30)
	.duration(200)
	.buildAndRegister();