// ContentTweakerCrafting
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;

// Val
val unfiredSearedBrick = <contenttweaker:unfired_searedbrick>;
val ticGrout = <tconstruct:soil>;
val brickMold = <gregtech:meta_item_2:32012>;
val artHammer = <ore:artisansHammer>;
val dustStone = <gregtech:meta_item_1:2328>;
val dustClay = <gregtech:meta_item_1:2105>;
val concreteMix = <contenttweaker:concretemix>;
val mSand = <minecraft:sand>;
val glassDust = <gregtech:meta_item_1:2209>;

// Basic Worktable
 # Unfired Seared Bricks
RecipeBuilder.get("basic")
	.setShapeless(
		[ticGrout, brickMold])
	.addTool(artHammer, 5)
	.addOutput(unfiredSearedBrick)
.create();
 
 # Unfired Seared Bricks but I'm not winning son
 RecipeBuilder.get("basic")
	.setShaped([
		[ticGrout, ticGrout, ticGrout],
		[ticGrout, brickMold, ticGrout],
		[ticGrout, ticGrout, ticGrout]])
	.addTool(artHammer, 40)
	.addOutput(unfiredSearedBrick * 8)
.create();
 # Glassy Sand
 RecipeBuilder.get("basic")
	.setShaped([
		[glassDust, mSand],
		[glassDust, mSand]])
	.addTool(artMortar, 10)
	.addOutput(<contenttweaker:glassy_sand>)
.create();

// Mason Worktable
 # Concrete Mix
RecipeBuilder.get("mason")
	.setShapeless(
		[dustStone, dustStone, dustStone, dustStone, dustStone, dustStone, dustClay, dustClay])
	.setFluid(<liquid:water> * 1500)
	.addTool(artMortar, 18)
	.addOutput(concreteMix * 3)
.create();
	