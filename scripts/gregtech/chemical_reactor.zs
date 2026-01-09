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
# Precious Slurry
chem.recipeBuilder()
	.inputs(<gregtech:meta_dust:24019> * 12)
	.fluidInputs(<liquid:aqua_regia> * 1000)
	.fluidOutputs(<liquid:preciousslurry> * 1000)
	.duration(540)
	.EUt(16)
	.buildAndRegister();
# Chloroauric Acid
chem.recipeBuilder()
	.fluidInputs(<liquid:preciousslurry> * 3000)
	.outputs(<gtow:ironsludge> * 6)
	.chancedOutput(<gtow:ironsludge> * 2, 7000, 1000)	
	.fluidOutputs(<liquid:chloroauric_acid> * 1500, <liquid:nitrogen_dioxide> * 1000)
	.duration(900)
	.EUt(24)
	.buildAndRegister();
	
// MV Chemical Reactor
# Polycaprolactam x1008
chem.recipeBuilder()
	.fluidInputs(<liquid:naphtha> * 576, <liquid:air> * 1000)
	.inputs(<ore:dustSaltpeter>)
	.fluidOutputs(<liquid:polycaprolactam> * 1008)
	.circuit(1)
	.duration(320)
	.EUt(120)
	.buildAndRegister();
# Polycaprolactam x1296
chem.recipeBuilder()
	.fluidInputs(<liquid:naphtha> * 576, <liquid:oxygen> * 1000)
	.inputs(<ore:dustSaltpeter>)
	.fluidOutputs(<liquid:polycaprolactam> * 1296)
	.circuit(1)
	.duration(320)
	.EUt(120)
	.buildAndRegister();
# Silicon Dust (Low Quality)
chem.recipeBuilder()
	.inputs(<gregtech:meta_dust:356> * 3)
	.fluidInputs(<liquid:hydrochloric_acid> * 2000)
	.chancedOutput(<gregtech:meta_dust:99>, 9000, 0)
	.fluidOutputs(<liquid:hypochlorous_acid> * 2000)
	.duration(400)
	.EUt(60)
	.buildAndRegister();