// GTOW ZS File
// Made by GTOW Team
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.inworldcrafting.FluidToFluid;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
val builder = RecipeBuilder.get("basic");

// Val
val dustGlass = <gregtech:meta_dust:2000>;

 # Glassy Sand
recipes.addShapeless(<contenttweaker:glassy_sand>,
	[dustGlass, dustGlass, sand, sand]);
	
 # Unfired Seared Brick
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_item_1:348>, <tconstruct:soil>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<contenttweaker:unfired_searedbrick>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>],
    [<tconstruct:soil>, <gregtech:meta_item_1:348>, <tconstruct:soil>],
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<contenttweaker:unfired_searedbrick> * 8)
  .create();

# Refractory Blend
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_dust:2063>, <gregtech:meta_dust:2023>, <gregtech:meta_dust:2063>],
    [<gregtech:meta_dust:254>, <gregtech:meta_dust:275>, <gregtech:meta_dust:254>],
    [<gregtech:meta_dust:2063>, <gregtech:meta_dust:2023>, <gregtech:meta_dust:2063>]])
  .setFluid(<liquid:water> * 2000)
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(<contenttweaker:refractoryblend>)
  .create();
  
# Refractory Mortar
FluidToFluid.transform(<liquid:foundry>, <liquid:water>, [<contenttweaker:refractoryblend>], true);
  
# Mason Bloom Hammer
recipes.addShaped(<contenttweaker:hammer>,
	[[null, <pyrotech:masonry_brick_block>, <pyrotech:material:26>],
	[<pyrotech:masonry_brick_block>, stick, <pyrotech:material:16>],
	[stick, gtFile, null]]);
	
# Mason Pounding Trowel
recipes.addShaped(<contenttweaker:masontrowel>,
	[[null, <pyrotech:material:16>, <pyrotech:masonry_brick_block>],
	[<pyrotech:material:26>, stick, <pyrotech:material:16>],
	[stick, gtFile, null]]);
	
# Noxious Elixir
recipes.addShapeless(<contenttweaker:elixir>,
	[<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]}), <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}), <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "mead"}}), <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}), <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]})]);

# Extremely Noxious Elixir
RecipeBuilder.get("basic")
  .setShapeless([<ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <contenttweaker:elixir>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>, <ore:cropChilipepper>])
  .setFluid(<liquid:lava> * 2000)
  .addTool(<ore:artisansBeaker>, 100)
  .addOutput(<contenttweaker:badelixir>)
  .create();
  
# Liquour Bucket
RecipeBuilder.get("basic")
  .setShapeless([<contenttweaker:badelixir>])
  .setSecondaryIngredients([<minecraft:bucket>])
  .addOutput(<forge:bucketfilled>.withTag({FluidName: "badjuice", Amount: 1000}))
  .create();
  
# Baffle Cap Powder
Mortar.addRecipe("bafflepowder", <contenttweaker:bafflepowder>, [<roots:baffle_cap_mushroom>]);
recipes.addShapeless(<contenttweaker:bafflepowder>,
	[gtMortar, <roots:baffle_cap_mushroom>]);
	
# Twilight Soil
Fey.addRecipe("twilightsoil", <contenttweaker:twilightsoil>, [<twilightforest:raven_feather>, <roots:moonglow_leaf>, <roots:moonglow_leaf>, <roots:elemental_soil>, <roots:wildroot>]);
<contenttweaker:twilightsoil>.addTooltip(format.aqua("Used to open the Twilight Forest Portal"));

# Perfect Powder
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_dust:24008>, <roots:baffle_cap_mushroom>, <roots:cloud_berry>, <roots:dewgonia>, <roots:moonglow_leaf>, <roots:pereskia>, <roots:spirit_herb>, <roots:wildewheet>, <roots:stalicripe>, <roots:infernal_bulb>])
  .addTool(<ore:artisansMortar>, 30)
  .addOutput(<contenttweaker:perfectpowder>)
  .create();
<contenttweaker:perfectpowder>.addTooltip(format.aqua("Used to open the Nether Portal"));

# Nether Portal Block
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_plate:24010>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <gregtech:meta_plate:24010>],
    [<minecraft:obsidian>, <gregtech:meta_dust:24008>, <gregtech:meta_dust:24008>, <gregtech:meta_dust:24008>, <minecraft:obsidian>],
    [<minecraft:obsidian>, <gregtech:meta_dust:24008>, <roots:chiseled_runed_obsidian>, <gregtech:meta_dust:24008>, <minecraft:obsidian>],
    [<minecraft:obsidian>, <gregtech:meta_dust:24008>, <gregtech:meta_dust:24008>, <gregtech:meta_dust:24008>, <minecraft:obsidian>],
    [<gregtech:meta_plate:24010>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <gregtech:meta_plate:24010>]])
  .setFluid(<liquid:lava> * 10000)
  .addTool(<ore:artisansHammer>, 500)
  .addTool(<ore:artisansBurner>, 200)
  .addOutput(<contenttweaker:netherblock> * 10)
  .create();

# Wrought Iron Heater
recipes.addShaped(<contenttweaker:wroughtironheater>,
	[[screwWroughtIron, gtWrench, screwWroughtIron],
	[plateWroughtIron, <immersiveengineering:metal_device1:1>, plateWroughtIron],
	[screwWroughtIron, gtScrewdriver, screwWroughtIron]]);
	
# Centurian Bone
<contenttweaker:ancientbone>.addTooltip(format.aqua("Dropped by the Twilight Lich"));