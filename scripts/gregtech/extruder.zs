// Extruder File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val extruder as RecipeMap = <recipemap:extruder>;

// LV Tier

// MV Tier
# Pressure Tube
extruder.recipeBuilder()
	.inputs(<gregtech:meta_ingot:2011>* 3)
	.notConsumable(<gregtech:meta_item_1:40>)
	.outputs(<pneumaticcraft:pressure_tube>)
	.EUt(42)
	.duration(176)
	.buildAndRegister();
# Quartz Fiber Cable
extruder.recipeBuilder()
	.inputs(<appliedenergistics2:quartz_glass>)
	.notConsumable(<gregtech:meta_item_1:39>)
	.outputs(<appliedenergistics2:part:140> * 2)
	.EUt(60)
	.duration(120)
	.buildAndRegister();
