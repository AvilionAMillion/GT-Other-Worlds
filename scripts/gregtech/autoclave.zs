// Arc Furnace File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val autoclave as RecipeMap = <recipemap:autoclave>;

// LV Tier

// MV Tier
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_dust:266> * 8, <gregtech:meta_item_1:500>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<mist:filter_coal>)
	.duration(60)
	.EUt(60)
	.buildAndRegister();