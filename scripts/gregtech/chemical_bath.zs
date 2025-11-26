// Chemical Bath File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val bath as RecipeMap = <recipemap:chemical_bath>;

// LV Chemical Bath
# Lubricated Foil
bath.recipeBuilder()
	.inputs(<gregtech:meta_foil:122>)
	.fluidInputs(<liquid:lubricant> * 480)
	.outputs(<contenttweaker:lubricatedfoil>)
	.duration(160)
	.EUt(24)
	.buildAndRegister();

// MV Chemical Bath
# Silicon Ingot
bath.recipeBuilder()
	.inputs(<gregtech:meta_ingot_hot:99>)
	.fluidInputs(<liquid:liquid_nitrogen> * 500)
	.outputs(<gregtech:meta_ingot:99>)
	.fluidOutputs(<liquid:nitrogen> * 500)
	.duration(1200)
	.EUt(60)
	.buildAndRegister();
# Kanthal Ingot
bath.recipeBuilder()
	.inputs(<gregtech:meta_ingot_hot:288>)
	.fluidInputs(<liquid:liquid_nitrogen> * 500)
	.outputs(<gregtech:meta_ingot:288>)
	.fluidOutputs(<liquid:nitrogen> * 500)
	.duration(1200)
	.EUt(60)
	.buildAndRegister();
	