// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Worktables
# Short Wood Stick
RecipeBuilder.get("basic")
  .setShapeless([<ore:stickWood>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<gregtech:meta_bolt:1617> * 2)
  .create();
# Empty Wooden Form
RecipeBuilder.get("basic")
  .setShapeless([<ore:slabWood>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<gregtech:meta_item_1:347>)
  .create();
# Brick Wooden Form
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_item_1:347>]])
  .addTool(<ore:artisansKnife>, 3)
  .addOutput(<gregtech:meta_item_1:348>)
  .create();
# Wooden Barrel
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<pyrotech:stone_bricks>, null, <pyrotech:stone_bricks>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addTool(<ore:artisansHatchet>, 10)
  .addOutput(<gregtech:machine:1610>)
  .create();
# Coke Brick Blocks
recipes.remove(<gregtech:metal_casing:8>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_item_1:353>, <gregtech:meta_item_1:353>],
    [<gregtech:meta_item_1:353>, <gregtech:meta_item_1:353>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<gregtech:metal_casing:8>)
  .create();
# Compressed Coke Clay
recipes.remove(<gregtech:meta_item_1:350>);
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:sand>, <gregtech:meta_item_1:348>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>]])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<gregtech:meta_item_1:350> * 3)
  .create();