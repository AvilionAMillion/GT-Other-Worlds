// Arc Furnace File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val arc_furnace as RecipeMap = <recipemap:arc_furnace>;

// LV Tier
# Alumina
arc_furnace.recipeBuilder()
	.inputs(<gregtech:meta_dust:314>)
	.fluidInputs(<fluid:oxygen> * 300)
	.outputs(<gregtech:meta_dust:24013>)
	.EUt(30)
	.duration(1000)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<gregtech:meta_dust:281>)
	.fluidInputs(<fluid:oxygen> * 300)
	.outputs(<gregtech:meta_dust:24013>)
	.EUt(30)
	.duration(1000)
	.buildAndRegister();