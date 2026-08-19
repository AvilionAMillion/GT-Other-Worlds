// Arc Furnace File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val autoclave as RecipeMap = <recipemap:autoclave>;

// LV Tier
# Fluix Crystal
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_dust:24026>)
	.fluidInputs(<liquid:water> * 250)
	.chancedOutput(<gregtech:meta_gem:24026>, 7000, 1000)
	.duration(1200)
	.EUt(24)
	.buildAndRegister();
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_dust:24026>)
	.fluidInputs(<liquid:distilled_water> * 50)
	.outputs(<gregtech:meta_gem:24026>)
	.duration(600)
	.EUt(24)
	.buildAndRegister();

// MV Tier
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_dust:266> * 8, <gregtech:meta_item_1:500>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<mist:filter_coal>)
	.duration(60)
	.EUt(60)
	.buildAndRegister();