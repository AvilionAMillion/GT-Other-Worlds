// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");
val flintShard = <tconstruct:shard>.withTag({Material: "flint"});
val woodToughBinding = <tconstruct:tough_binding>.withTag({Material: "wood"});

// Worktable Crafting
# Basic Worktable
recipes.addShaped(<artisanworktables:worktable:5>, [
	[wood, wood],
	[wood, wood]]);
# Basic Workstation
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:string>, <artisanworktables:worktable:5>, <ore:string>],
    [<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>]])
  .addTool(<ore:artisansHammer>, 25)
  .addOutput(<artisanworktables:workstation:5>)
  .create();
# Basic Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <tconstruct:pattern>, <pyrotech:material:20>],
    [<pyrotech:material:26>, <artisanworktables:workstation:5>, <pyrotech:material:26>],
    [<pyrotech:material:23>, woodToughBinding, <pyrotech:material:23>]])
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansHandsaw>, 25)
  .addOutput(<artisanworktables:workshop:5>)
  .create();
 # Mason's Workshop
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:brick_block>],
    [<minecraft:brick_block>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <minecraft:brick_block>],
    [<pyrotech:material:26>, <pyrotech:material:26>, <artisanworktables:workshop:5>, <pyrotech:material:26>, <pyrotech:material:26>],
    [<pyrotech:planks_tarred>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <pyrotech:material:26>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <pyrotech:planks_tarred>],
    [<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:material:26>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]])
  .setFluid(<liquid:liquid_clay> * 4000)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansChisel>, 50)
  .addTool(<ore:artisansTSquare>, 50)
  .addOutput(<artisanworktables:workshop:2>)
  .create();

// Artisan Materials
# Flint Hatchet
RecipeBuilder.get("basic")
  .setShaped([
    [null, flintShard, <ore:string>],
    [flintShard, <ore:stickWood>, null],
    [<ore:stickWood>, null, null]])
  .addOutput(<artisanworktables:artisans_hatchet_flint>)
  .create();
# Flint File
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:string>, flintShard],
    [<ore:string>, flintShard, null],
    [<ore:stickWood>, null, null]])
  .addOutput(<artisanworktables:artisans_file_flint>)
  .create();
# Flint Handsaw
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:stickWood>, <ore:string>, <ore:stickWood>],
    [flintShard, flintShard, <ore:stickWood>]])
  .addOutput(<artisanworktables:artisans_handsaw_flint>)
  .create();
# Flint Mortar
RecipeBuilder.get("basic")
  .setShapeless([<ore:stickWood>, flintShard, <minecraft:bowl>])
  .addOutput(<artisanworktables:artisans_mortar_flint>)
  .create();
# Flint Knife
RecipeBuilder.get("basic")
  .setShaped([
    [null, null, flintShard],
    [<ore:string>, flintShard, null],
    [<ore:stickWood>, <ore:string>, null]])
  .addOutput(<artisanworktables:artisans_knife_flint>)
  .create();
# Flint Hammer
RecipeBuilder.get("basic")
  .setShaped([
    [null, <minecraft:flint>, <ore:string>],
    [null, <ore:stickWood>, <minecraft:flint>],
    [<ore:stickWood>, null, null]])
  .addOutput(<artisanworktables:artisans_hammer_flint>)
  .create();
# Flint Chisel
RecipeBuilder.get("basic")
  .setShaped([
    [null, null, <minecraft:flint>],
    [null, <minecraft:flint>, null],
    [<ore:stickWood>, null, null]])
  .addOutput(<artisanworktables:artisans_chisel_flint>)
  .create();
# Flint Needle
RecipeBuilder.get("basic")
  .setShaped([
    [null, null, <minecraft:flint>],
    [null, <minecraft:flint>, <minecraft:string>],
    [<ore:stickWood>, null, null]])
  .addOutput(<artisanworktables:artisans_needle_flint>)
  .create();
# Mason Hammer
RecipeBuilder.get("basic")
  .setShaped([
    [null, <pyrotech:material:16>, <ore:string>],
    [null, <minecraft:stick>, <pyrotech:material:16>],
    [<minecraft:stick>, null, null]])
  .addOutput(<artisanworktables:artisans_hammer_mason>)
  .create();