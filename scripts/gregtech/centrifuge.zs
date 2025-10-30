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
	.fluidInputs(<liquid:claymud> * 250)
	.outputs(<gregtech:meta_dust:24017> * 8)
	.fluidOutputs(<liquid:thickclaymud> * 100)
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