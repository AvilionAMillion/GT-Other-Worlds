// Extruder File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val extractor as RecipeMap = <recipemap:extractor>;

// LV Tier

// MV Tier
# Fiery Blood
extractor.recipeBuilder()
	.inputs(<twilightforest:fiery_blood>)
	.outputs(<minecraft:glass_bottle>)
	.fluidOutputs(<liquid:fieryblood> * 250)
	.EUt(48)
	.duration(30)
	.buildAndRegister();
