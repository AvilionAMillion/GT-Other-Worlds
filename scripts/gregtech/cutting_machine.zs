// Cutting Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val cutter as RecipeMap = <recipemap:cutter>;

// LV Tier
# Alpha Yeti Clippings
cutter.recipeBuilder()
	.inputs(<twilightforest:alpha_fur>)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<gtow:yeticlippings> * 4)
	.EUt(16)
	.duration(1000)
	.buildAndRegister();
cutter.recipeBuilder()
	.inputs(<twilightforest:alpha_fur>)
	.fluidInputs(<liquid:distilled_water> * 10)
	.outputs(<gtow:yeticlippings> * 4)
	.EUt(12)
	.duration(500)
	.buildAndRegister();
cutter.recipeBuilder()
	.inputs(<twilightforest:alpha_fur>)
	.fluidInputs(<liquid:lubricant> * 1)
	.outputs(<gtow:yeticlippings> * 4)
	.EUt(12)
	.duration(100)
	.buildAndRegister();

// MV Tier