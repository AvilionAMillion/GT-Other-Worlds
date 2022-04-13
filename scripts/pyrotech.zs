// GTOW ZS File
// Made by GTOW Team
	import mods.jei.JEI.removeAndHide as rh;
	import crafttweaker.oredict.IOreDict;
	import crafttweaker.oredict.IOreDictEntry;
	import crafttweaker.item.IItemDefinition;
	import crafttweaker.item.IItemStack;
	import crafttweaker.item.IIngredient;
	import mods.pyrotech.Chopping;
	import mods.pyrotech.SoakingPot;
	import mods.pyrotech.DryingRack;
	import mods.pyrotech.StoneCrucible;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("basic");

// Flint Shard Replacement
recipes.replaceAllOccurences(<pyrotech:material:10>, <tconstruct:shard>.withTag({Material: "flint"}));
mods.jei.JEI.removeAndHide(<pyrotech:material:10>);
// Worktable JEI Removal
mods.jei.JEI.hideCategory("pyrotech.worktable");

// Removal
# Worktable
recipes.remove(<pyrotech:worktable>);
recipes.remove(<pyrotech:worktable_stone>);
recipes.remove(<pyrotech:chopping_block>);
recipes.remove(<pyrotech:drying_rack>);
recipes.remove(<pyrotech:drying_rack:1>);
recipes.remove(<pyrotech:stone_kiln>);
recipes.remove(<pyrotech:stone_oven>);
recipes.remove(<pyrotech:stone_sawmill>);
recipes.remove(<pyrotech:stone_bricks>);
recipes.remove(<pyrotech:sawmill_blade_flint>);
recipes.remove(<pyrotech:sawmill_blade_stone>);
recipes.remove(<pyrotech:material:24>);
recipes.remove(<pyrotech:faucet_stone>);
recipes.remove(<pyrotech:log_pile>);
recipes.remove(<pyrotech:flint_and_tinder>);
recipes.remove(<pyrotech:torch_fiber>);
SoakingPot.removeRecipes(<pyrotech:material:25>);
DryingRack.removeRecipes(<pyrotech:material:13>);
recipes.remove(<pyrotech:stone_tank>);
recipes.remove(<pyrotech:stone_crucible>);
recipes.remove(<pyrotech:material:4>);
recipes.remove(<pyrotech:material:9>);
recipes.remove(<pyrotech:refractory_brick_block>);
recipes.remove(<pyrotech:bloomery>);
recipes.remove(<pyrotech:brick_kiln>);
recipes.remove(<pyrotech:brick_oven>);
recipes.remove(<pyrotech:brick_sawmill>);
recipes.remove(<pyrotech:brick_crucible>);

// Soaking Pot
SoakingPot.addRecipe("wet_chad", <contenttweaker:wetchad>, <liquid:water>, <gregtech:meta_dust:1618>, 6000);

// Drying Rack
DryingRack.addRecipe("driedplantfibers", <pyrotech:material:13>, <pyrotech:material:12>, 1200);

// Crafting
recipes.addShapeless(<pyrotech:flint_and_tinder>, 
	[<tconstruct:shard>.withTag({Material: "flint"}), <pyrotech:material:13>, <minecraft:cobblestone>]);
// Worktable Recipes
# Chopping Block
RecipeBuilder.get("basic")
  .setShapeless([<ore:logWood>])
  .addTool(<ore:artisansHatchet>, 8)
  .addOutput(<pyrotech:chopping_block>)
  .create();
# Drying Rack
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:slabWood>, <minecraft:ladder>, <ore:slabWood>],
    [<ore:string>, <ore:stickWood>, <ore:string>],
    [<ore:stickWood>, null, <ore:stickWood>]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<pyrotech:drying_rack:1>)
  .create();
# Granite Anvil
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:stone>, <minecraft:stone>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<pyrotech:anvil_granite>)
  .create();
# Stone Kiln
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:kiln_pit>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<pyrotech:stone_kiln>)
  .create();
# Stone Oven
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:tinder>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<pyrotech:stone_oven>)
  .create();
# Stone Sawmill
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:chopping_block>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<pyrotech:stone_sawmill>)
  .create();
# Masonry Brick
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <pyrotech:material:16>]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<pyrotech:stone_bricks>)
  .create();
# Flint Sawmill Blade
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>, <pyrotech:stone_bricks>, <minecraft:flint>],
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>]])
  .addTool(<ore:artisansChisel>, 8)
  .addTool(<ore:artisansFile>, 8)
  .addOutput(<pyrotech:sawmill_blade_flint>)
  .create();
# Unfired Clay Brick
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <gregtech:meta_item_1:348>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addTool(<ore:artisansHammer>, 4)
  .addOutput(<pyrotech:material:24> * 8)
  .create();
# Unfired Clay Bucket
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:24>, null, <pyrotech:material:24>],
    [null, <pyrotech:material:24>, null]])
  .addOutput(<pyrotech:bucket_clay_unfired>)
  .create();
# Soaking Pot
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<pyrotech:material:20>, <pyrotech:material:16>, <pyrotech:material:20>],
    [<pyrotech:material:20>, <pyrotech:stone_bricks>, <pyrotech:material:20>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<pyrotech:soaking_pot>)
  .create();
# Pulp
RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:wetchad>, <contenttweaker:wetchad>, <contenttweaker:wetchad>, <contenttweaker:wetchad>])
  .addOutput(<pyrotech:material:25>)
  .create();
# Stone Collector
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<pyrotech:tar_collector>)
  .create();
# Stone Drain
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<pyrotech:stone_bricks>, null, <pyrotech:stone_bricks>],
    [<pyrotech:material:16>, null, <pyrotech:material:16>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<pyrotech:tar_drain>)
  .create();
# Stone Faucet
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [null, <pyrotech:material:16>, null]])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<pyrotech:faucet_stone>)
  .create();
# Log Pile
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]])
  .addTool(<ore:artisansHandsaw>, 9)
  .addOutput(<pyrotech:log_pile>)
  .create();
# Stone Tank
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:stone_bricks>, <ore:blockGlass>, <pyrotech:stone_bricks>],
    [<ore:blockGlass>, <gregtech:machine:1610>, <ore:blockGlass>],
    [<pyrotech:stone_bricks>, <ore:blockGlass>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<pyrotech:stone_tank>)
  .create();
# Stone Crucible
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_tank>, <pyrotech:stone_bricks>],
    [<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansFile>, 20)
  .addOutput(<pyrotech:stone_crucible>)
  .create();
 # Refractory Clay
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_dust:2063>, <pyrotech:material>, <gregtech:meta_dust:2063>, <gregtech:meta_dust:2049>, <gregtech:meta_dust:2023>, <gregtech:meta_dust:2049>, <gregtech:meta_dust:2063>, <pyrotech:material>, <gregtech:meta_dust:2063>])
  .setFluid(<liquid:liquid_clay> * 100)
  .addTool(<ore:artisansMortar>, 3)
  .addOutput(<pyrotech:material:4> * 4)
  .create();
 # Unfired Refractory Brick
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_item_1:348>, <pyrotech:material:4>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<pyrotech:material:9>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>],
    [<pyrotech:material:4>, <gregtech:meta_item_1:348>, <pyrotech:material:4>],
    [<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<pyrotech:material:9> * 8)
  .create();
 # Refractory Brick Block
 RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:5>, <pyrotech:material:5>],
    [<pyrotech:material:5>, <pyrotech:material:5>]])
  .addTool(<ore:artisansHammer>, 6)
  .addOutput(<pyrotech:refractory_brick_block>)
  .create();
 # Bloomery
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:refractory_brick_block>, null, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, null, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]])
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansChisel>, 25)
  .addOutput(<pyrotech:bloomery>)
  .create();
 # Refractory Kiln
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_kiln>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_kiln>)
  .create();
 # Refractory Oven
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_oven>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_kiln>)
  .create();
 # Refractory Sawmill
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_sawmill>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_kiln>)
  .create();
 # Refractory Crucible
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_crucible>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_kiln>)
  .create();
  
// Stone Crucible
# Melting Copper Nuggets
StoneCrucible.addRecipe("liquid_copper", <liquid:copper> * 16, <gregtech:meta_nugget:25>, 2400);