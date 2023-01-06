// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val centrifuge as RecipeMap = <recipemap:centrifuge>;

// LV Tier
# Sky Stone Dust
centrifuge.recipeBuilder()
	.inputs(<appliedenergistics2:material:45> * 5)
	.outputs(<gregtech:meta_dust:24013>, <contenttweaker:meteoricdust> * 4)
	.EUt(32)
	.duration(240)
	.buildAndRegister();