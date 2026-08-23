// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val centrifuge as RecipeMap = <recipemap:centrifuge>;

// LV Tier
# Sky Stone Dust
centrifuge.recipeBuilder()
	.inputs(<appliedenergistics2:material:45> * 5)
	.outputs(<gregtech:meta_dust:24013>, <contenttweaker:meteoricdust> * 4)
	.EUt(32)
	.duration(240)
	.buildAndRegister();
	
// MV Tier
# Aluminium Hydroxide
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:claymud> * 1000)
	.outputs(<gregtech:meta_dust:24017> * 20)
	.chancedOutput(<gregtech:meta_dust:24017> * 5, 8500, 500)
	.chancedOutput(<gregtech:meta_dust:24017> * 3, 7500, 300)
	.chancedOutput(<gregtech:meta_dust:24017> * 2, 5000, 300)
	.chancedOutput(<gregtech:meta_dust:24017>, 5000, 300)
	.fluidOutputs(<liquid:thickclaymud> * 300)
	.EUt(40)
	.duration(120)
	.buildAndRegister();
# Nitrogenated Ice
centrifuge.recipeBuilder()
	.inputs(<gtow:nitroice> * 8)
	.fluidOutputs(<liquid:water> * 7000, <liquid:nitrogen> * 700, <liquid:liquid_nitrogen> * 300)
	.EUt(80)
	.duration(300)
	.buildAndRegister();
# Nickel Froth
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:froth_nickel> * 100)
	.chancedOutput(<gtow:sludge_nickel> * 2, 7000, 1000)
	.chancedOutput(<gtow:sludge_nickel>, 4000, 1000)
	.fluidOutputs(<liquid:nitric_acid> * 40)
	.EUt(60)
	.duration(200)
	.buildAndRegister();
# Nickel Wastewater
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:wastewater_nickel> * 100)
	.chancedOutput(<gregtech:meta_dust:69>, 1000, 500)
	.chancedOutput(<gregtech:meta_dust:51>, 3000, 1200)
	.fluidOutputs(<liquid:diluted_sulfuric_acid> * 20)
	.EUt(60)
	.duration(200)
	.buildAndRegister();
# Bauxite Dust
centrifuge.recipeBuilder()
	.inputs(<gregtech:meta_dust:286>)
	.outputs(<gregtech:meta_dust:24013>)
	.chancedOutput(<gregtech:meta_dust:24028>, 400, 100)
	.EUt(90)
	.duration(6)
	.buildAndRegister();

// HV Tier
# Red Mud
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:redmud> * 100)
	.chancedOutput(<gregtech:meta_dust:39>, 2800, 700)
	.chancedOutput(<gregtech:meta_dust:16>, 2200, 700)
	.chancedOutput(<gtow:sludge_bauxite>, 5000, 200)
	.fluidOutputs(<liquid:claymud> * 50)
	.EUt(60)
	.duration(200)
	.buildAndRegister();