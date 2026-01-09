// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val electrolyzer as RecipeMap = <recipemap:electrolyzer>;

// Removal


// LV Electrolyzer
electrolyzer.recipeBuilder()
	.inputs(<gtow:blanchedgold> * 9)
	.outputs(<gregtech:meta_dust:41> * 5)
	.chancedOutput(<gregtech:meta_dust:41>, 8000, 500)
	.chancedOutput(<gregtech:meta_dust:41>, 5000, 500)
	.fluidOutputs(<fluid:chlorine> * 2000)
	.EUt(16)
	.duration(40)
	.buildAndRegister();