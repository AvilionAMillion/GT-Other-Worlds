// Forming Press File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val forming_press as RecipeMap = <recipemap:forming_press>;

// LV Tier
# Unfired Brick
forming_press.recipeBuilder()
	.inputs(<minecraft:clay>)
	.notConsumable(<gregtech:meta_item_1:348>)
	.outputs(<pyrotech:material:24>)
	.EUt(4)
	.duration(10)
	.buildAndRegister();
# Unfired Seared Brick
forming_press.recipeBuilder()
	.inputs(<tconstruct:soil>)
	.notConsumable(<gregtech:meta_item_1:348>)
	.outputs(<contenttweaker:unfired_searedbrick>)
	.EUt(4)
	.duration(10)
	.buildAndRegister();
# Unfired Refractory Brick
forming_press.recipeBuilder()
	.inputs(<pyrotech:material:4>)
	.notConsumable(<gregtech:meta_item_1:348>)
	.outputs(<pyrotech:material:9>)
	.EUt(4)
	.duration(10)
	.buildAndRegister();
	
// HV Tier
# Inscribed Silicon
forming_press.recipeBuilder()
	.inputs(platePlastic, <gregtech:meta_nugget:99> * 3)
	.notConsumable(<appliedenergistics2:material:19>)
	.outputs(<appliedenergistics2:material:20>)
	.EUt(192)
	.duration(50)
	.buildAndRegister();
forming_press.recipeBuilder()
	.inputs(plateStainlessSteel)
	.notConsumable(<appliedenergistics2:material:19>)
	.outputs(<appliedenergistics2:material:19>)
	.EUt(192)
	.duration(40)
	.buildAndRegister();
# Inscribed Logic
forming_press.recipeBuilder()
	.inputs(<gregtech:meta_plate:41>)
	.notConsumable(<appliedenergistics2:material:15>)
	.outputs(<appliedenergistics2:material:18>)
	.EUt(192)
	.duration(100)
	.buildAndRegister();
forming_press.recipeBuilder()
	.inputs(plateStainlessSteel)
	.notConsumable(<appliedenergistics2:material:15>)
	.outputs(<appliedenergistics2:material:15>)
	.EUt(192)
	.duration(40)
	.buildAndRegister();
# Inscribed Engineering
forming_press.recipeBuilder()
	.inputs(<gregtech:meta_plate:276>)
	.notConsumable(<appliedenergistics2:material:14>)
	.outputs(<appliedenergistics2:material:17>)
	.EUt(192)
	.duration(100)
	.buildAndRegister();
forming_press.recipeBuilder()
	.inputs(plateStainlessSteel)
	.notConsumable(<appliedenergistics2:material:14>)
	.outputs(<appliedenergistics2:material:14>)
	.EUt(192)
	.duration(40)
	.buildAndRegister();
# Inscribed Calculation
forming_press.recipeBuilder()
	.inputs(<gregtech:meta_plate:2>)
	.notConsumable(<appliedenergistics2:material:13>)
	.outputs(<appliedenergistics2:material:16>)
	.EUt(192)
	.duration(100)
	.buildAndRegister();
forming_press.recipeBuilder()
	.inputs(plateStainlessSteel)
	.notConsumable(<appliedenergistics2:material:13>)
	.outputs(<appliedenergistics2:material:13>)
	.EUt(192)
	.duration(40)
	.buildAndRegister();
# Printed Logic Processor
forming_press.recipeBuilder()
	.inputs(<appliedenergistics2:material:18>, <gregtech:meta_wire_fine:80>, <gtow:inscribedsilicon>)
	.outputs(<appliedenergistics2:material:22>)
	.EUt(256)
	.duration(180)
	.buildAndRegister();
# Printed Engineering Processor
forming_press.recipeBuilder()
	.inputs(<appliedenergistics2:material:17>, <gregtech:meta_wire_fine:80> * 3, <gtow:inscribedsilicon>)
	.outputs(<appliedenergistics2:material:24>)
	.EUt(256)
	.duration(180)
	.buildAndRegister();
# Printed Calculation Processor
forming_press.recipeBuilder()
	.inputs(<appliedenergistics2:material:16>, <gregtech:meta_wire_fine:80> * 2, <gtow:inscribedsilicon>)
	.outputs(<appliedenergistics2:material:23>)
	.EUt(256)
	.duration(180)
	.buildAndRegister();