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
	import mods.pyrotech.StoneKiln;
	import mods.pyrotech.BrickKiln;
	import mods.pyrotech.GraniteAnvil;
	import mods.pyrotech.IroncladAnvil;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("basic");

// Val
val refracBrick = <pyrotech:material:5>;
val masonBrickBlock = <pyrotech:masonry_brick_block>;

// Flint Shard Replacement
recipes.replaceAllOccurences(<pyrotech:material:10>, <tconstruct:shard>.withTag({Material: "flint"}));
mods.jei.JEI.removeAndHide(<pyrotech:material:10>);
// JEI Removal
mods.jei.JEI.hideCategory("pyrotech.worktable");

// Removal
recipes.remove(<pyrotech:worktable>);
recipes.remove(<pyrotech:worktable_stone>);
recipes.remove(<pyrotech:chopping_block>);
recipes.remove(<pyrotech:drying_rack>);
recipes.remove(<pyrotech:drying_rack:1>);
recipes.remove(<pyrotech:stone_kiln>);
recipes.remove(<pyrotech:stone_oven>);
recipes.remove(<pyrotech:stone_sawmill>);
recipes.remove(masonBrickBlock);
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
recipes.remove(<pyrotech:faucet_brick>);
recipes.remove(<pyrotech:mechanical_bellows>);
furnace.remove(<pyrotech:material:22>);
recipes.remove(<pyrotech:anvil_iron_plated>);
recipes.remove(<pyrotech:bellows>);
mods.jei.JEI.removeAndHide(<pyrotech:crude_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:stone_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:flint_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:bone_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:iron_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:gold_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:diamond_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:obsidian_hammer>);
StoneKiln.removeRecipes(<pyrotech:material:22>);
BrickKiln.removeRecipes(<pyrotech:material:22>);
GraniteAnvil.removeRecipes(<pyrotech:material:27>);
IroncladAnvil.removeRecipes(<pyrotech:material:27>);

SoakingPot.removeRecipes(<pyrotech:material:8>);

// Soaking Pot
SoakingPot.addRecipe("wet_chad", <contenttweaker:wetchad>, <liquid:water> * 100, <gregtech:meta_dust:1618>, 6000);

// Drying Rack
DryingRack.addRecipe("driedplantfibers", <pyrotech:material:13>, <pyrotech:material:12>, 1200);

// Crafting
recipes.addShapeless(<pyrotech:flint_and_tinder>, 
	[<tconstruct:shard>.withTag({Material: "flint"}), <pyrotech:material:13>, <minecraft:cobblestone>]);
# Refractory Faucet
recipes.addShaped(<pyrotech:faucet_brick>,
	[[refracBrick, <pyrotech:faucet_stone>, refracBrick],
	[refracBrick, refracBrick, refracBrick]]);
# Pulp
recipes.addShapeless(<pyrotech:material:25>,
	[<contenttweaker:wetchad>,<contenttweaker:wetchad>,<contenttweaker:wetchad>,<contenttweaker:wetchad>]);
# Ironclad Anvil
recipes.addShaped(<pyrotech:anvil_iron_plated>,
	[[<ore:blockIron>, <ore:blockIron>],
	[<ore:slabStone>, <ore:slabStone>]]);
# Scraped Hide
recipes.addShapeless(<pyrotech:hide_scraped>,
	[<ore:artisansKnife>.transformDamage(1), <ore:largePelt>]);
recipes.addShapeless(<pyrotech:hide_scraped>,
	[gtKnife, <ore:largePelt>]);
# Small Scraped Hide
recipes.addShapeless(<pyrotech:hide_small_scraped>,
	[<ore:artisansKnife>.transformDamage(1), <ore:smallPelt>]);
recipes.addShapeless(<pyrotech:hide_small_scraped>,
	[gtKnife, <ore:smallPelt>]);

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
    [masonBrickBlock, <pyrotech:material:16>, masonBrickBlock],
    [masonBrickBlock, <pyrotech:kiln_pit>, masonBrickBlock],
    [masonBrickBlock, masonBrickBlock, masonBrickBlock]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<pyrotech:stone_kiln>)
  .create();
# Stone Oven
RecipeBuilder.get("basic")
  .setShaped([
    [masonBrickBlock, <pyrotech:material:16>, masonBrickBlock],
    [masonBrickBlock, <pyrotech:tinder>, masonBrickBlock],
    [masonBrickBlock, masonBrickBlock, masonBrickBlock]])
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansFile>, 10)
  .addOutput(<pyrotech:stone_oven>)
  .create();
# Stone Sawmill
RecipeBuilder.get("basic")
  .setShaped([
    [masonBrickBlock, <pyrotech:material:16>, masonBrickBlock],
    [masonBrickBlock, <pyrotech:chopping_block>, masonBrickBlock],
    [masonBrickBlock, masonBrickBlock, masonBrickBlock]])
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
  .addOutput(masonBrickBlock)
  .create();
# Flint Sawmill Blade
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>, masonBrickBlock, <minecraft:flint>],
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
    [<pyrotech:material:20>, masonBrickBlock, <pyrotech:material:20>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<pyrotech:soaking_pot>)
  .create();
# Stone Collector
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [masonBrickBlock, masonBrickBlock, masonBrickBlock]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<pyrotech:tar_collector>)
  .create();
# Stone Drain
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [masonBrickBlock, null, masonBrickBlock],
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
    [masonBrickBlock, <ore:blockGlass>, masonBrickBlock],
    [<ore:blockGlass>, <gregtech:machine:1610>, <ore:blockGlass>],
    [masonBrickBlock, <ore:blockGlass>, masonBrickBlock]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansFile>, 15)
  .addOutput(<pyrotech:stone_tank>)
  .create();
# Stone Crucible
RecipeBuilder.get("basic")
  .setShaped([
    [masonBrickBlock, <pyrotech:material:16>, masonBrickBlock],
    [masonBrickBlock, <pyrotech:stone_tank>, masonBrickBlock],
    [masonBrickBlock, masonBrickBlock, masonBrickBlock]])
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansFile>, 20)
  .addOutput(<pyrotech:stone_crucible>)
  .create();
 # Refractory Clay
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_dust:254>, <gregtech:meta_dust:2063>, <gregtech:meta_dust:2049>, <gregtech:meta_dust:2063>, <gregtech:meta_dust:254>, <gregtech:meta_dust:254>, <gregtech:meta_dust:2063>, <gregtech:meta_dust:2023>, <gregtech:meta_dust:2063>, <gregtech:meta_dust:254>])
  .setFluid(<liquid:liquid_clay> * 100)
  .addTool(<ore:artisansMortar>, 6)
  .addOutput(<pyrotech:material:4> * 8)
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
  .setFluid(<liquid:foundry> * 1000)
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
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_oven>)
  .create();
 # Refractory Sawmill
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_sawmill>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_sawmill>)
  .create();
 # Refractory Crucible
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>],
    [<pyrotech:refractory_brick_block>, <pyrotech:stone_crucible>, <pyrotech:refractory_brick_block>],
    [<gregtech:meta_plate:25>, <pyrotech:refractory_brick_block>, <gregtech:meta_plate:25>]])
  .setFluid(<liquid:foundry> * 1000)
  .addTool(<ore:artisansHammer>, 45)
  .addTool(<ore:artisansTSquare>, 45)
  .addOutput(<pyrotech:brick_crucible>)
  .create();
# Mechanical Bellows
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:23>, <ore:plateCopper>, <pyrotech:material:23>],
    [<ore:plateStone>, <pyrotech:bellows>, <ore:plateStone>],
    [<pyrotech:planks_tarred>, <ore:stickStone>, <pyrotech:planks_tarred>]])
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansHandsaw>, 15)
  .addOutput(<pyrotech:mechanical_bellows>)
  .create();
# Barrel
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:23>, null, <pyrotech:material:23>],
    [<pyrotech:material:23>, <gregtech:machine:1610>, <pyrotech:material:23>],
    [<pyrotech:planks_tarred>, <pyrotech:planks_tarred>, <pyrotech:planks_tarred>]])
  .addTool(<ore:artisansHandsaw>, 25)
  .addOutput(<pyrotech:barrel>)
  .create();
# Barrel Lid
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:23>, <pyrotech:planks_tarred>, <pyrotech:material:23>]])
  .addTool(<ore:artisansHandsaw>, 5)
  .addOutput(<pyrotech:barrel_lid>)
  .create();
# Butcher Table
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<pyrotech:material:23>, <artisanworktables:workstation:5>, <pyrotech:material:23>],
    [<pyrotech:material:23>, <pyrotech:material:20>, <pyrotech:material:23>]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addOutput(<pyrotech:butchers_block>)
  .create();
# Tanning Rack
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:string>, <minecraft:stick>, <ore:string>],
    [<minecraft:stick>, <pyrotech:material:26>, <minecraft:stick>],
    [<ore:logWood>, <minecraft:stick>, <ore:logWood>]])
  .addTool(<ore:artisansHandsaw>, 20)
  .addTool(<ore:artisansCutters>, 10)
  .addOutput(<pyrotech:tanning_rack>)
  .create();
# Bellows
RecipeBuilder.get("basic")
  .setShaped([
    [<pyrotech:material:20>, <pyrotech:material:16>, <pyrotech:material:20>],
    [<minecraft:leather>, <ore:stickStone>, <minecraft:leather>],
    [<pyrotech:masonry_brick_block>, null, <pyrotech:masonry_brick_block>]])
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<pyrotech:bellows>)
  .create();
  