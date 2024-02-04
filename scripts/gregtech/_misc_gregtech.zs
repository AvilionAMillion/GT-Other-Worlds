// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;
import mods.pyrotech.Barrel;
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
    [<pyrotech:masonry_brick_block>, null, <pyrotech:masonry_brick_block>],
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
# Coated Circuit Board
recipes.remove(<gregtech:meta_item_1:381>);
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_plate:1648>])
  .setFluid(<liquid:glue> * 500)
  .addOutput(<gregtech:meta_item_1:381>)
  .create();
# Phenolic Circuit Board
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_item_1:381>])
  .setFluid(<liquid:phenol> * 200)
  .addOutput(<gregtech:meta_item_1:382>)
  .create();
# Resistor
recipes.remove(<gregtech:meta_item_1:519>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>],
    [<gregtech:wire_single:25>, <ore:dustCoal>, <gregtech:wire_single:25>],
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>]])
  .setFluid(<liquid:glue> * 50)
  .addOutput(<gregtech:meta_item_1:519>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>],
    [<gregtech:wire_single:25>, <ore:dustCarbon>, <gregtech:wire_single:25>],
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>]])
  .setFluid(<liquid:glue> * 50)
  .addOutput(<gregtech:meta_item_1:519>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>],
    [<gregtech:wire_single:25>, <ore:dustCharcoal>, <gregtech:wire_single:25>],
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>]])
  .setFluid(<liquid:glue> * 50)
  .addOutput(<gregtech:meta_item_1:519>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>],
    [<gregtech:wire_single:25>, <ore:dustBitumousCoal>, <gregtech:wire_single:25>],
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>]])
  .setFluid(<liquid:glue> * 50)
  .addOutput(<gregtech:meta_item_1:519>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>],
    [<gregtech:wire_single:25>, <ore:dustAnthraciteCoal>, <gregtech:wire_single:25>],
    [<gregtech:meta_wire_fine:25>, <minecraft:paper>, <gregtech:meta_wire_fine:25>]])
  .setFluid(<liquid:glue> * 50)
  .addOutput(<gregtech:meta_item_1:519>)
  .create();
# Rubber Ring
RecipeBuilder.get("basic")
  .setShapeless([])
  .setFluid(<liquid:rubber> * 288)
  .addTool(<ore:artisansKnife>, 10)
  .addTool(<ore:artisansBeaker>, 10)
  .addOutput(<gregtech:meta_ring:1068>)
  .create();
  
// Wires/Cables
recipes.remove(<gregtech:cable_single:2517>);
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:wire_single:2517>])
  .setFluid(<liquid:rubber> * 288)
  .addOutput(<gregtech:cable_single:2517>)
  .create();
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:wire_single:112>])
  .setFluid(<liquid:rubber> * 288)
  .addOutput(<gregtech:cable_single:112>)
  .create();
  
// Barrel
Barrel.addRecipe("concrete", <liquid:concrete>, <liquid:water>, [<ore:dustStone>, <ore:dustStone>, <ore:dustCalcite>, <ore:dustGypsum>], 12 * 60 * 20);