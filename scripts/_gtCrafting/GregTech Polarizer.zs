import mods.gregtech.recipe.RecipeMap;

//Variables
val polarizer = mods.gregtech.recipe.RecipeMap.getByName("polarizer");

// Removal
polarizer.findRecipe(16, [<gregtech:meta_item_1:14184>], null).remove();
polarizer.findRecipe(16, [<gregtech:meta_item_1:10184>], null).remove();

// ULV Tier
	# Magnetic Steel Ingot
polarizer.recipeBuilder()
	.inputs(ingotSteel)
	.outputs(<gregtech:meta_item_1:10298>)
	.duration(32)
	.EUt(4)
	.buildAndRegister();
	# Magnetic Steel Rod
polarizer.recipeBuilder()
	.inputs(rodSteel)
	.outputs(<gregtech:meta_item_1:14298>)
	.duration(32)
	.EUt(4)
	.buildAndRegister();

