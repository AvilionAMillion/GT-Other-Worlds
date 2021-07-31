import mods.gregtech.recipe.RecipeMap;

//Variables
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");

// Removal

// ULV Tier
	# Rubber Bars
alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2153> * 4, <gregtech:meta_item_1:2065> * 2)
	.outputs(<gregtech:meta_item_1:10152>)
	.duration(80)
	.EUt(4)
	.buildAndRegister();

