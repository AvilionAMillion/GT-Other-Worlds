// Fluid Heater File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val fluidheater as RecipeMap = <recipemap:fluid_heater>;

// LV Tier
# Hot Clay Mud
fluidheater.recipeBuilder()
	.fluidInputs(<fluid:thickclaymud> * 100)
	.fluidOutputs(<fluid:hotclaymud> * 100)
	.duration(30)
	.EUt(12)
	.buildAndRegister();