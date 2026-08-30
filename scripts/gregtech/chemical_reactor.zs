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
	.outputs(<gtow:sludge_iron> * 6)
	.chancedOutput(<gtow:sludge_iron> * 2, 7000, 1000)	
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
# Aerated Endstone Dust
chem.recipeBuilder()
	.inputs(<gregtech:meta_dust:1603> * 12)
	.fluidInputs(<liquid:carbon_dioxide> * 4000)
	.outputs(<gtow:aeratedendstone_dust> * 7)
	.fluidOutputs(<liquid:helium> * 800)
	.duration(300)
	.EUt(120)
	.buildAndRegister();
# Plastic Circuit Board
chem.recipeBuilder()
	.inputs(<gregtech:meta_item_1:383> * 1, <gregtech:meta_foil:25> * 6)
	.fluidInputs(<liquid:weak_etchingacid> * 500)
	.outputs(<gregtech:meta_item_1:403>)
	.duration(300)
	.EUt(80)
	.buildAndRegister();
	
// HV Tier
# Eye of Ender
chem.recipeBuilder()
	.inputs(<minecraft:ender_pearl>)
	.fluidInputs(<liquid:pyrotheum> * 125)
	.outputs(<minecraft:ender_eye>)
	.EUt(480)
	.duration(240)
	.buildAndRegister();
# Titanium Tetrachloride
chem.recipeBuilder()
	.inputs(<gregtech:meta_dust:18> * 2, <gregtech:meta_dust:285> * 3)
	.fluidInputs(<liquid:chlorine> * 4000)
	.fluidOutputs(<liquid:carbon_monoxide> * 2000, <liquid:titanium_tetrachloride> * 1000)
	.duration(480)
	.EUt(400)
	.buildAndRegister();
# Silicon Greased Foil
chem.recipeBuilder()
	.inputs(<contenttweaker:lubricatedfoil> * 2, <gregtech:meta_dust:24029>)
	.fluidInputs(<liquid:chlorine> * 500)
	.outputs(<gtow:foil_siliconlubricated> * 2)
	.duration(480)
	.EUt(400)
	.buildAndRegister();