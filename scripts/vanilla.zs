// GTOW ZS File
// Made by GTOW Team
	import mods.artisanworktables.builder.RecipeBuilder;
	import mods.pyrotech.StoneKiln;
	import mods.pyrotech.BrickKiln;
	import mods.botania.RuneAltar;
	
// Val
val builder = RecipeBuilder.get("basic");

// Removal
recipes.removeByRecipeName("pyrotech:furnace");
recipes.removeByRecipeName("gregtech:furnace");
recipes.removeByRecipeName("pyrotech:crafting_table");
recipes.removeByRecipeName("gregtech:crafting_table");
recipes.removeByRecipeName("pyrotech:chest");
recipes.removeByRecipeName("gregtech:chest");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
recipes.remove(<minecraft:chest>);
recipes.removeShapeless(<minecraft:flint>, [gravel, gravel, gravel]);
recipes.remove(<minecraft:paper>);
recipes.remove(<minecraft:torch>);
recipes.remove(<minecraft:book>);
recipes.remove(<minecraft:piston>);
recipes.remove(<minecraft:enchanting_table>);
recipes.remove(<minecraft:ender_eye>);
StoneKiln.removeRecipes(<minecraft:glass>);
BrickKiln.removeRecipes(<minecraft:glass>);
furnace.remove(<minecraft:glass>);
furnace.remove(<minecraft:redstone>);

// Crafting
# Torch
recipes.addShapeless(<minecraft:torch>, 
	[stick, <pyrotech:material:15>, <pyrotech:material:15>]);
recipes.addShapeless(<minecraft:torch> * 2, 
	[stick, <ore:gemCoal>]);
# Furnace
recipes.addShaped(<minecraft:furnace>,
	[[ingotSteel, ingotSteel, ingotSteel],
	[ingotSteel, null, ingotSteel],
	[ingotSteel, ingotSteel, ingotSteel]]);
// Crafting
recipes.addShaped(<minecraft:piston>, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:fenceWood>, <gregtech:wire_single:2517>, <ore:fenceWood>],
	[<ore:cobblestone>, <ore:gearIron>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:piston> * 2, [
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
	[<ore:fenceWood>, <gregtech:wire_single:2517>, <ore:fenceWood>],
	[<ore:cobblestone>, <ore:gearSteel>, <ore:cobblestone>]]);
	
// Pyrotech Kilns
 # Glass
StoneKiln.addRecipe("glass", <minecraft:glass>, <contenttweaker:glassy_sand>, 6000, 0.10, [<gregtech:meta_dust:2023> * 1]);
BrickKiln.addRecipe("refrac_glass", <minecraft:glass>, <contenttweaker:glassy_sand>, 3000, 0.05, [<gregtech:meta_dust:2023> * 2]);

// Furnace
furnace.addRecipe(<minecraft:glass>, <contenttweaker:glassy_sand>);
furnace.addRecipe(<minecraft:paper>, <pyrotech:material:25>);


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
  .addTool(<ore:artisansFile>, 1)
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
# Book
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:leather>, <minecraft:paper>, <minecraft:string>],
    [<minecraft:leather>, <minecraft:paper>, <ore:slimeball>],
    [<minecraft:leather>, <minecraft:paper>, <minecraft:string>]])
  .addTool(<ore:artisansQuill>, 30)
  .addOutput(<minecraft:book>)
  .create();
# Bookshelf
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:planks:1>, <gregtech:planks:1>, <gregtech:planks:1>],
    [<minecraft:book>, <minecraft:book>, <minecraft:book>],
    [<gregtech:planks:1>, <gregtech:planks:1>, <gregtech:planks:1>]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<minecraft:bookshelf>)
  .create();
  
// Runic Altar
mods.botania.RuneAltar.addRecipe(<minecraft:enchanting_table>,[<minecraft:book>, <minecraft:carpet:14>, <roots:chiseled_runed_obsidian>, <roots:chiseled_runed_obsidian>, <gregtech:meta_gem_exquisite:276>, <gregtech:meta_gem_exquisite:276>, <minecraft:ender_pearl>], 50000);
  
// Pelt To Wool Crafting
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_white>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_orange>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:1>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_magenta>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:2>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_blue_light>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:3>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_yellow>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:4>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_lime>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:5>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_pink>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:6>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_gray>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:7>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_gray_light>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:8>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_cyan>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:9>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_purple>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:10>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_blue>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:11>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_brown>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:12>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_green>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:13>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_red>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:14>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<pyrotech:pelt_sheep_black>.transformReplace(<pyrotech:hide_sheep_sheared>)])
  .addTool(<ore:artisansShears>, 3)
  .addOutput(<minecraft:wool:15>)
  .create();
  
<pyrotech:hide_sheep_sheared>.addTooltip(format.aqua("Obtained by shearing sheep pelts in a crafting grid"));
