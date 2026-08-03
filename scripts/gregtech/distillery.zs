// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val distillery as RecipeMap = <recipemap:distillery>;

// Removal


// LV Distillery

// HV Distillery
# Endstone Slush
distillery.recipeBuilder()
	.fluidInputs(<liquid:endstoneslush> * 100)
	.chancedOutput(<gtow:rutileshard>, 1000, 1000)
	.fluidOutputs(<liquid:liquid_nitrogen> * 8)
	.circuit(1)
	.EUt(240)
	.duration(200)
	.buildAndRegister();
# Helium Favored
distillery.recipeBuilder()
	.fluidInputs(<liquid:endstoneslush> * 100)
	.fluidOutputs(<liquid:helium> * 12)
	.circuit(2)
	.EUt(480)
	.duration(400)
	.buildAndRegister();
	
// EV Distillery
# Helium+Rutile
distillery.recipeBuilder()
	.fluidInputs(<liquid:endstoneslush> * 100)
	.chancedOutput(<gtow:rutileshard>, 200, 550)
	.fluidOutputs(<liquid:helium> * 10)
	.circuit(3)
	.EUt(820)
	.duration(1000)
	.buildAndRegister();