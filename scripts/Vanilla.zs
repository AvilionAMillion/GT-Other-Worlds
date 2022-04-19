// GTOW ZS File
// Made by GTOW Team
	import mods.artisanworktables.builder.RecipeBuilder;
	import mods.pyrotech.StoneKiln;
	import mods.pyrotech.BrickKiln;
	
// Val
val builder = RecipeBuilder.get("basic");

// Removal
recipes.remove(<minecraft:crafting_table>);
recipes.removeByRecipeName("pyrotech:furnace");
recipes.removeByRecipeName("gregtech:furnace");
recipes.removeByRecipeName("pyrotech:chest");
recipes.removeByRecipeName("gregtech:chest");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
recipes.remove(<minecraft:chest>);
recipes.removeShapeless(<minecraft:flint>, [gravel, gravel, gravel]);
recipes.remove(<minecraft:paper>);
recipes.remove(<minecraft:torch>);
StoneKiln.removeRecipes(<minecraft:glass>);
BrickKiln.removeRecipes(<minecraft:glass>);
furnace.remove(<minecraft:glass>);

// Crafting
# Torch
recipes.addShapeless(<minecraft:torch>, 
	[stick, <pyrotech:material:15>]);
	
// Pyrotech Kilns
 # Glass
StoneKiln.addRecipe("glass", <minecraft:glass>, <contenttweaker:glassy_sand>, 6000, 0.10, [<gregtech:meta_dust:2023> * 1]);
BrickKiln.addRecipe("refrac_glass", <minecraft:glass>, <contenttweaker:glassy_sand>, 3000, 0.05, [<gregtech:meta_dust:2023> * 2]);

// Worktable
# Flint
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>])
  .addTool(<ore:artisansMortar>, 1)
  .addOutput(<minecraft:flint>)
  .create();
# Ladder
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stickWood>, <ore:string>, <ore:stickWood>],
    [<ore:stickWood>, <gregtech:meta_bolt:1617>, <ore:stickWood>],
    [<ore:stickWood>, <ore:string>, <ore:stickWood>]])
  .addTool(<ore:artisansHandsaw>, 7)
  .addOutput(<minecraft:ladder>)
  .create();
# Bowl
RecipeBuilder.get("basic")
  .setShapeless([<ore:plankWood>])
  .addTool(<ore:artisansKnife>, 1)
  .addOutput(<minecraft:bowl>)
  .create();
# Chest
RecipeBuilder.get("basic")
  .setShaped([
    [wood, <ore:plankWood>, wood],
    [<ore:plankWood>, null, <ore:plankWood>],
    [wood, <ore:plankWood>, wood]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:chest>)
  .create();
# Cobblestone Slab
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:cobblestone>])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<minecraft:stone_slab:3>)
  .create();
# Stone Bricks
RecipeBuilder.get("basic")
  .setShapeless([<minecraft:stone>])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<minecraft:stonebrick>)
  .create();
# Fence
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]])
  .addTool(<ore:artisansHandsaw>, 8)
  .addOutput(<minecraft:fence>)
  .create();
# Clay
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>]])
  .setFluid(<liquid:water> * 10)
  .addOutput(<minecraft:clay>)
  .create();