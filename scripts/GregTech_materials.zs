// GregTech_materials
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.tconstruct.Drying;

// Val
val longStick = <gregtech:meta_item_2:19196>;
val stick = <minecraft:stick>;
val artHammer = <ore:artisansHammer>;
val blankPattern = <tconstruct:pattern>;
val artSaw = <ore:artisansHandsaw>;
val brickMold = <gregtech:meta_item_2:32012>;
val glassDust = <gregtech:meta_item_1:2209>;
val compClay = <gregtech:meta_item_2:32013>;
val flint = <minecraft:flint>;
val gtMatch = <gregtech:meta_item_1:32471>;
val mSand = <minecraft:sand>;
val sandDust = <gregtech:meta_item_1:2960>;
val flintDust = <gregtech:meta_item_1:2220>;

// Removal
recipes.remove(longStick);
recipes.remove(brickMold);
recipes.remove(compClay);

// JEI
mods.jei.JEI.addItem(compClay);

// Shapeless
recipes.addShapeless(gtMatch, [stick, flint]);

// Basic Worktable
 # Long Wood Stick
RecipeBuilder.get("basic")
	.setShaped([
		[null, stick, null],
		[null, stick, null],
		[null, stick, null]])
	.addTool(artHammer, 3)
	.addOutput(longStick)
.create();
 # Brick Mold
RecipeBuilder.get("basic")
	.setShapeless(
		[blankPattern])
	.addTool(artSaw, 4)
	.addOutput(brickMold)
.create();
 # Compressed Clay
RecipeBuilder.get("basic")
	.setShapeless(
		[brickMold, clay])
	.addTool(artHammer, 2)
	.addOutput(compClay)
.create();
 # Compresseder Clay
RecipeBuilder.get("basic")
	.setShaped([
		[clay, clay, clay],
		[clay, brickMold, clay],
		[clay, clay, clay]])
	.addTool(artHammer, 16)
	.addOutput(compClay * 8)
.create();

// Mason Worktable
 # Stone Dust
RecipeBuilder.get("mason")
	.setShapeless(
		[stone])
	.addTool(artMortar, 6)
	.addOutput(<gregtech:meta_item_1:1328>)
.create();
 # Clay Dust
RecipeBuilder.get("mason")
	.setShapeless(
		[clay])
	.addTool(artMortar, 4)
	.addOutput(<gregtech:meta_item_1:1105>)
.create();
 # Sand Dust
RecipeBuilder.get("mason")
	.setShapeless(
		[mSand])
	.addTool(artMortar, 3)
	.addOutput(sandDust)
.create();
 # Flint Dust
RecipeBuilder.get("mason")
	.setShapeless(
		[flint])
	.addTool(artMortar, 4)
	.addOutput(flintDust)
.create();
