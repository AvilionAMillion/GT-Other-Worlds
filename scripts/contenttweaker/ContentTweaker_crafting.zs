// GTOW ZS File
// Made by GTOW Team
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.inworldcrafting.FluidToFluid;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.botania.Apothecary;
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

// Petals
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_daisy>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalYellow>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:hydrating_petal>, [<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalBlue>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_inner_flame>, [<ore:petalBrown>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalYellow>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:manastar_petal>, [<ore:petalBlue>,<ore:petalBlue>,<ore:petalRed>,<ore:petalWhite>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:thermal_petal>, [<ore:petalOrange>,<ore:petalOrange>,<ore:petalRed>,<ore:petalRed>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_arcane_rose>, [<ore:petalPink>,<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_gourmaryllis>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalYellow>,<ore:petalLightGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_narslimmus>, [<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>,<ore:petalGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:jaded_petal>, [<ore:petalRed>,<ore:petalPurple>,<ore:petalLime>,<ore:petalBlack>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_belle_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:thorny_dread_petal>, [<ore:petalBlack>,<ore:petalBlack>,<ore:petalBlack>,<ore:petalRed>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:tigerseye_petal>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalBlack>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_exoflame>, [<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>,<ore:petalBlack>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:agricarnatic_petal>, [<ore:petalLime>,<ore:petalLime>,<ore:petalLime>,<ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:hopping_petal>, [<ore:petalGray>,<ore:petalGray>,<ore:petalLightGray>,<ore:petalLightGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rannuncarpus>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalPink>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:tangled_petals>, [<ore:petalGreen>,<ore:petalLightBlue>,<ore:petalCyan>,<ore:petalGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_jiyuulia>, [<ore:petalMagenta>,<ore:petalMagenta>,<ore:petalPurple>,<ore:petalLightGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:clay_cone_petal>, [<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalLightGray>,<ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:daffomill_petal>, [<ore:petalYellow>,<ore:petalYellow>,<ore:petalOrange>,<ore:petalBrown>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_solegnolia>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalRed>,<ore:petalBrown>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_bergamute>, [<ore:petalYellow>,<ore:petalOrange>,<ore:petalOrange>,<ore:petalOrange>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:munching_petal>, [<ore:petalGreen>,<ore:petalLime>,<ore:petalLime>,<ore:petalRed>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_entropinnyum>, [<ore:petalRed>,<ore:petalRed>,<ore:petalBlack>,<ore:petalGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:spectacular_petal>, [<ore:petalWhite>,<ore:petalBlue>,<ore:petalRed>,<ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_rafflowsia>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalYellow>,<ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_game_of_life>, [<ore:petalYellow>,<ore:petalLime>,<ore:petalLime>,<ore:petalPink>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_a_slice_o_cake>, [<ore:petalWhite>,<ore:petalOrange>,<ore:petalBrown>,<ore:petalBrown>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_me_not>, [<ore:petalLightGray>,<ore:petalYellow>,<ore:petalMagenta>,<ore:petalPurple>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:dreaming_petal>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPink>,<ore:petalMagenta>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:morphing_petal>, [<ore:petalLightGray>,<ore:petalCyan>,<ore:petalGreen>,<ore:petalRed>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_petallius>, [<ore:petalGray>,<ore:petalGray>,<ore:petalBrown>,<ore:petalLightBlue>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:orechid_ignem_petallius>, [<ore:petalRed>,<ore:petalLightBlue>,<ore:petalBrown>,<ore:petalRed>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_hyacidus>, [<ore:petalPurple>,<ore:petalPurple>,<ore:petalPurple>,<ore:petalMagenta>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:pollinating_petal>, [<ore:petalRed>,<ore:petalRed>,<ore:petalPink>,<ore:petalYellow>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:medumone_petal>, [<ore:petalBrown>,<ore:petalBrown>,<ore:petalBrown>,<ore:petalGray>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_fallen_kanade>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalWhite>,<ore:petalLime>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:loonium_petal>, [<ore:petalGreen>,<ore:petalGreen>,<ore:petalBrown>,<ore:petalWhite>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:petal_of_the_vinculotus>, [<ore:petalWhite>,<ore:petalLightBlue>,<ore:petalLightBlue>,<ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:spectralight_petal>, [<ore:petalWhite>,<ore:petalWhite>,<ore:petalLightGray>,<ore:petalLime>]);
mods.botania.Apothecary.addRecipe(<contenttweaker:blubbing_petal>, [<ore:petalLime>,<ore:petalCyan>,<ore:petalLightBlue>,<ore:petalGreen>]);
