// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("mason");

// Removal
mods.jei.JEI.hideCategory("artisanworktables_mason_worktable");
mods.jei.JEI.hideCategory("artisanworktables_mason_workstation");

// Mason Worktable
 # Stone Brick
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stone>])
  .addTool(<ore:artisansChisel>, 0)
  .addOutput(<minecraft:stonebrick>)
  .create();
 # Stone Brick Slab
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stonebrick>])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(<minecraft:stone_slab:5> * 2)
  .create();
 # Mason Brick
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stone_slab:5>])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(<pyrotech:material:16> * 2)
  .create();
 # Stone Slab
RecipeBuilder.get("mason")
  .setShapeless([<minecraft:stone>])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(<minecraft:stone_slab> * 2)
  .create();
 # Mason Brick
RecipeBuilder.get("mason")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <pyrotech:material:16>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<pyrotech:stone_bricks>)
  .create();
# Seared Bricks
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <tconstruct:materials>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<tconstruct:seared:3>)
  .create();
 # Refractory Brick Block
 builder
  .setShaped([
    [<pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <pyrotech:material:5>]])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<pyrotech:refractory_brick_block>)
  .create();