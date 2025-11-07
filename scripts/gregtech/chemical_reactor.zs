// Chemical Reactor File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val chem as RecipeMap = <recipemap:chemical_reactor>;

// LV Chemical Reactor
# Polyethylene x144
chem.recipeBuilder()
	.notConsumable(<gtow:philipscatalyst>)
	.fluidInputs(<liquid:ethylene> * 144, <liquid:air> * 1000)
	.fluidOutputs(<liquid:plastic> * 144)
	.circuit(1)
	.duration(160)
	.EUt(30)
	.buildAndRegister();
# Polyethylene x216
chem.recipeBuilder()
	.notConsumable(<gtow:philipscatalyst>)
	.fluidInputs(<liquid:ethylene> * 144, <liquid:oxygen> * 1000)
	.fluidOutputs(<liquid:plastic> * 216)
	.circuit(1)
	.duration(160)
	.EUt(30)
	.buildAndRegister();