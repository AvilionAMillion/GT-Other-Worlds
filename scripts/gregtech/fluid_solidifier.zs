// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val solidifier as RecipeMap = <recipemap:fluid_solidifier>;

// LV Fluid Solidifier
# Mica Insulation
solidifier.recipeBuilder()
	.fluidInputs(<liquid:colloidalmica> * 144)
	.notConsumable(<gregtech:meta_item_1:12>)
	.outputs(<contenttweaker:micainsulation>)
	.duration(80)
	.EUt(32)
	.buildAndRegister();