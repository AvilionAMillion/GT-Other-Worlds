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