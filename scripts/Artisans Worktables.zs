// Artisans Worktables
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;

// Val
val brick = <minecraft:brick>;
val wood = <ore:logWood>;
val basicTable = <artisanworktables:worktable:5>;
val artHammer = <ore:artisansHammer>;
val masonTable = <artisanworktables:worktable:2>;
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val plateCopper = <gregtech:meta_item_1:12018>;
val engineerTable = <artisanworktables:worktable:6>;


// Crafting
 # Basic Worktable
recipes.addShaped(<artisanworktables:worktable:5>,
	[[<ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>]]);

// Basic Worktable
 # Masonry Table
RecipeBuilder.get("basic")
	.setShaped([
		[brick, brick, brick],
		[wood, basicTable, wood],
		[wood, null, wood]])
	.addTool(artHammer, 50)
	.addOutput(masonTable)
.create();

// Mason Worktable
 # Engineers Worktable
RecipeBuilder.get("mason")
	.setShaped([
		[hardenedLeather, plateCopper, hardenedLeather],
		[wood, basicTable, wood],
		[wood, null, wood]])
	.addTool(artHammer, 100)
	.addOutput(engineerTable)
.create();

