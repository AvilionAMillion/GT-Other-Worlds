// EBF File
// Made by GTOW Team

import mods.gregtech.recipe.RecipeMap;

// Primitive Blast Furnace
val lcr as RecipeMap = <recipemap:large_chemical_reactor>;

// LV
lcr.recipeBuilder()
	.inputs(<gregtech:meta_dust:356> * 3, <gregtech:meta_dust:18>)
	.outputs(<gregtech:meta_dust:99>)
	.fluidOutputs(<fluid:carbon_dioxide> * 1000)
	.EUt(60)
	.circuit(1)
	.duration(280)
	.buildAndRegister();
