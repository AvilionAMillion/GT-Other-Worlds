// Circuit Assembler File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val circass as RecipeMap = <recipemap:circuit_assembler>;

// LV Tier
# Primitive Processor Assembly
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:401>, circuitLV * 2, <ore:componentDiode> * 2, <gregtech:wire_single:25> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:622>)
	.EUt(16)
	.duration(300)
	.buildAndRegister();
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:401>, circuitLV * 2, <ore:componentDiode> * 2, <gregtech:wire_single:25> * 2)
	.fluidInputs(<fluid:tin> * 144)
	.outputs(<gregtech:meta_item_1:622>)
	.EUt(16)
	.duration(300)
	.buildAndRegister();
# Primitive Processor
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:401>, <ore:componentResistor>, <ore:circuitUlv>, <gregtech:wire_single:2517> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:621>)
	.EUt(16)
	.duration(200)
	.buildAndRegister();
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:401>, <ore:componentResistor>, <ore:circuitUlv>, <gregtech:wire_single:2517> * 2)
	.fluidInputs(<fluid:tin> * 144)
	.outputs(<gregtech:meta_item_1:621>)
	.EUt(16)
	.duration(200)
	.buildAndRegister();
# Basic Processor
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:402>, <gregtech:meta_item_1:593>, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <ore:wireFineCopper> * 2, <ore:boltTin> * 2)
	.fluidInputs(<fluid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:623> * 2)
	.EUt(16)
	.duration(200)
	.buildAndRegister();
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:402>, <gregtech:meta_item_1:593>, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <ore:wireFineCopper> * 2, <ore:boltTin> * 2)
	.fluidInputs(<fluid:tin> * 144)
	.outputs(<gregtech:meta_item_1:623> * 2)
	.EUt(16)
	.duration(200)
	.buildAndRegister();
# Basic Processor Assembly
circass.findRecipe(24, [<gregtech:meta_item_1:402>, <gregtech:meta_item_1:623> * 2, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4], [<fluid:tin> * 144]).remove();
circass.findRecipe(24, [<gregtech:meta_item_1:402>, <gregtech:meta_item_1:623> * 2, <metaitem:component.resistor> * 2, <metaitem:component.diode> * 2, <metaitem:wireFineGold> * 4, <metaitem:boltSilver> * 4], [<fluid:soldering_alloy> * 72]).remove();
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:402>, <gregtech:meta_item_1:623> * 2, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <ore:wireFineGold> * 4, <ore:boltSilver> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 72)
	.outputs(<gregtech:meta_item_1:624>)
	.EUt(24)
	.duration(400)
	.buildAndRegister();
circass.recipeBuilder()
	.inputs(<gregtech:meta_item_1:402>, <gregtech:meta_item_1:623> * 2, <ore:componentResistor> * 2, <ore:componentDiode> * 2, <ore:wireFineGold> * 4, <ore:boltSilver> * 4)
	.fluidInputs(<fluid:tin> * 144)
	.outputs(<gregtech:meta_item_1:624>)
	.EUt(24)
	.duration(400)
	.buildAndRegister();