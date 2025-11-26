// Circuit Assembler File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val circass as RecipeMap = <recipemap:circuit_assembler>;

// LV Tier
# Good Electronic Circuit
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:401>, circuitLV * 2, <ore:componentDiode> * 2, <gregtech:wire_single:25> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:622>)
	.EUt(16)
	.duration(300)
	.buildAndRegister();