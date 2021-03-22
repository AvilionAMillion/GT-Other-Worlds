// Biomes O' Plenty
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;

// Val
val brickMold = <gregtech:meta_item_2:32012>;
val mudBall = <biomesoplenty:mudball>;
val mudBrick = <biomesoplenty:mud_brick>;
val artHammer = <ore:artisansHammer>;
val artSaw = <ore:artisansHandsaw>;

// Removal
recipes.remove(mudBrick);

// Basic Worktable
 # Mud Bricks
RecipeBuilder.get("basic")
	.setShapeless(
		[mudBall, brickMold])
	.addTool(artHammer, 2)
	.addOutput(mudBrick)
.create();
 # Mud Bricks but 8 of them
RecipeBuilder.get("basic")
	.setShaped([
		[mudBall, mudBall, mudBall],
		[mudBall, brickMold, mudBall],
		[mudBall, mudBall, mudBall]])
	.addTool(artHammer, 16)
	.addOutput(mudBrick * 8)
.create();


