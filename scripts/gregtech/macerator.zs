// Mixer File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val macerator as RecipeMap = <recipemap:macerator>;

// LV Tier
# Sky Stone Dust
macerator.recipeBuilder()
	.inputs(<appliedenergistics2:sky_stone_block>)
	.outputs(<appliedenergistics2:material:45>)
	.duration(24)
	.EUt(8)
	.buildAndRegister();