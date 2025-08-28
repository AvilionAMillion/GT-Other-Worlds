// Assembling Machine File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val compressor as RecipeMap = <recipemap:compressor>;

// LV Tier
# Seared Brick
compressor.recipeBuilder()
	.inputs(<tconstruct:materials> * 4)
	.outputs(<pyrotech:material:24>)
	.EUt(2)
	.duration(300)
	.buildAndRegister();
# Refractory Brick
compressor.recipeBuilder()
	.inputs(<pyrotech:material:5> * 4)
	.outputs(<pyrotech:refractory_brick_block>)
	.EUt(2)
	.duration(300)
	.buildAndRegister();