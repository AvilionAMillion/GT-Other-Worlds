// Mixer File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val mixer as RecipeMap = <recipemap:mixer>;

// LV Chemical Bath
# Colloidal Mica
mixer.recipeBuilder()
	.inputs(<gregtech:meta_dust:386> * 8, <enderio:item_material:20>)
	.fluidInputs(<liquid:water> * 2000)
	.fluidOutputs(<liquid:colloidalmica> * 144)
	.duration(560)
	.EUt(28)
	.buildAndRegister();