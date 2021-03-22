// Vanilla
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.tconstruct.Drying;
import mods.inworldcrafting.FireCrafting;

// Val
val flint = <minecraft:flint>;
val gravel = <minecraft:gravel>;
val artFile = <ore:artisansFile>;
val dustGlass = <gregtech:meta_item_1:2209>;
val compClay = <gregtech:meta_item_2:32013>;
val brick = <minecraft:brick>;
val brickBlock = <minecraft:brick_block>;
val conMix = <contenttweaker:concretemix>;
val clayBucket = <ceramics:clay_bucket>;
val unfiredClayBucket = <ceramics:unfired_clay>;
val glassySand = <contenttweaker:glassy_sand>;
val mGlass = <minecraft:glass>;

// Removal
recipes.remove(<minecraft:crafting_table>);
recipes.remove(<minecraft:furnace>);
recipes.remove(brickBlock);

// Mason Table
 # Flint
RecipeBuilder.get("mason")
	.setShapeless(
		[gravel, gravel, gravel])
	.addTool(artFile, 3)
	.addOutput(flint)
.create();
 # Brick Block
RecipeBuilder.get("mason")
	.setShaped([
		[brick, conMix, brick],
		[conMix, brick, conMix],
		[brick, conMix, brick]])
	.setFluid(<liquid:water> * 2000)
	.addTool(artHammer, 24)
	.addOutput(brickBlock)
.create();

// Drying
 # Bricks
mods.tconstruct.Drying.addRecipe(brick, compClay, 1200);

// Burning
 # Clay Bucket
FireCrafting.addRecipe(clayBucket, unfiredClayBucket, 200);
 # Glass
FireCrafting.addRecipe(mGlass, glassySand, 300);