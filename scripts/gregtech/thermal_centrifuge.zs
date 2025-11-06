// Thermal Centrifuge File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val tc as RecipeMap = <recipemap:thermal_centrifuge>;

// Removal


// LV Electrolyzer
# Silicon Dust
tc.recipeBuilder()
	.inputs(<gregtech:meta_dust:356> * 8)
	.outputs(<gregtech:meta_dust:99>)
	.EUt(24)
	.duration(1000)
	.buildAndRegister();