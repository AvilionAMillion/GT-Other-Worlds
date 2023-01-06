// GTOW ZS File
// Made by GTOW Team
import mods.roots.Pyre;
import mods.roots.Mortar;
import mods.inworldcrafting.FluidToItem;
import mods.roots.Rituals;
import mods.roots.Fey;
import mods.roots.RunicShears;
import mods.roots.SummonCreatures;
import mods.roots.Spells;
import mods.roots.Spell;
import mods.roots.Costs;
import mods.roots.Herbs;
import mods.roots.Chrysopoeia;
import crafttweaker.block.IBlockState;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.StatePredicate;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.Transmutation;
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Val
val treatedStick = <gregtech:meta_stick:1648>;
val wildroot = <roots:wildroot>;
val longWoodStick = <gregtech:meta_stick_long:1617>;
val moss = <roots:terra_moss>;
val sapling = <ore:treeSapling>;
val cloudberry = <roots:cloud_berry>;
val dewgonia = <roots:dewgonia>;
val bafflecap = <roots:baffle_cap_mushroom>;
val pereskia = <roots:pereskia>;
val moonglow = <roots:moonglow_leaf>;
val spiritherb = <roots:spirit_herb>;
val wildewheet = <roots:wildewheet>;
val stalicripe = <roots:stalicripe>;
val infernalbulb = <roots:infernal_bulb>;
val masonBrickBlock = <pyrotech:masonry_brick_block>;

// Crop Tier Tooltips
<roots:baffle_cap_mushroom>.addTooltip(format.green("Tier 0 Crop"));
<roots:dewgonia>.addTooltip(format.aqua("Tier 1 Crop"));
<roots:cloud_berry>.addTooltip(format.aqua("Tier 1 Crop"));
<roots:pereskia>.addTooltip(format.gold("Tier 2 Crop"));
<roots:moonglow_leaf>.addTooltip(format.gold("Tier 2 Crop"));
<roots:wildewheet>.addTooltip(format.red("Tier 3 Crop"));
<roots:spirit_herb>.addTooltip(format.red("Tier 3 Crop"));
<roots:stalicripe>.addTooltip(format.lightPurple("Tier 4 Crop"));
<roots:infernal_bulb>.addTooltip(format.lightPurple("Tier 4 Crop"));

// Crafting
# Pyre
recipes.remove(<roots:pyre>);
recipes.addShaped(<roots:pyre>, 
	[[gtSaw, treatedStick, gtFile],
	[treatedStick, <pyrotech:log_pile>, treatedStick],
	[stone, <pyrotech:tinder>, stone]]);
# Staff
recipes.remove(<roots:staff>);
recipes.addShaped(<roots:staff>,
	[[gtSaw, wood, wildroot],
	[<gregtech:meta_ring:260>, <gregtech:meta_stick_long:1617>, wood],
	[<gregtech:meta_stick_long:1617>, <gregtech:meta_ring:260>, gtFile]]);
# Imbuer
recipes.remove(<roots:imbuer>);
recipes.addShaped(<roots:imbuer>, 
	[[longWoodStick, gtSaw, longWoodStick],
	[longWoodStick, <roots:runestone_brick_slab>, longWoodStick],
	[longWoodStick, <ore:blockCoke>, longWoodStick]]);
# Grove Stone
recipes.remove(<roots:grove_stone>);
recipes.addShaped(<roots:grove_stone>,
	[[gtSaw, stone, gtFile],
	[wildroot, stone, moss],
	[masonBrickBlock, stone, masonBrickBlock]]);
# Fey Crafter
recipes.remove(<roots:fey_crafter>);
recipes.addShaped(<roots:fey_crafter>,
		[[cloudberry, sapling, cloudberry],
		[sapling, wildroot, sapling],
		[gtSaw, wood, gtBranchCutter]]);
# Mortar
recipes.remove(<roots:mortar>);
recipes.addShaped(<roots:mortar>,
	[[ingotSteel, gtHammer, ingotSteel],
	[null, plateSteel, null]]);
# Pestle
recipes.remove(<roots:pestle>);
recipes.addShaped(<roots:pestle>,
	[[null, screwIron, rodIron],
	[plateIron, rodIron, screwIron],
	[ingotIron, plateIron, gtScrewdriver]]);
# Petals
recipes.addShapeless(<roots:petals> * 3, [gtMortar, <ore:allTallFlowers>]);
# Chiseled Runestone
recipes.remove(<roots:chiseled_runestone>);
recipes.addShaped(<roots:chiseled_runestone>,
	[[<roots:runestone_brick>, ingotIron, <roots:runestone_brick>],
	[ingotIron, cloudberry, ingotIron],
	[<roots:runestone_brick>, ingotIron, <roots:runestone_brick>]]);
# Chiseled Runed Obsidian
recipes.remove(<roots:chiseled_runed_obsidian>);
recipes.addShaped(<roots:chiseled_runed_obsidian>,
	[[<roots:runed_obsidian_brick>, ingotSteel, <roots:runed_obsidian_brick>],
	[ingotSteel, pereskia, ingotSteel],
	[<roots:runed_obsidian_brick>, ingotSteel, <roots:runed_obsidian_brick>]]);

// Basic Worktable
# Runestone Brick
recipes.remove(<roots:runestone_brick>);
RecipeBuilder.get("basic")
  .setShapeless([<roots:runestone>])
  .addTool(<ore:artisansChisel>, 5)
  .addOutput(<roots:runestone_brick>)
  .create();
# Runed Obsidian Brick
recipes.remove(<roots:runed_obsidian_brick>);
RecipeBuilder.get("basic")
  .setShapeless([<roots:runed_obsidian>])
  .addTool(<ore:artisansChisel>, 25)
  .addOutput(<roots:runed_obsidian_brick>)
  .create();

// Pyre Crafting
  # Dewgonia
Pyre.removeRecipe(dewgonia);
Pyre.addRecipe("dew", dewgonia, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:water_bucket>]);
  # Cloud Berry
Pyre.removeRecipe(cloudberry);
Pyre.addRecipe("cloud", cloudberry, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:wool>]);
  # Removal
Pyre.removeRecipe(bafflecap);
Pyre.removeRecipe(pereskia);
Pyre.removeRecipe(moonglow);
Pyre.removeRecipe(stalicripe);
Pyre.removeRecipe(infernalbulb);
Pyre.addRecipe("infernal", infernalbulb * 5, [stalicripe, stalicripe, stalicripe, stalicripe, stalicripe]);

// Fey Crafter
# Runestone
Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("runestone", <roots:runestone> * 2, [<ore:dustRunic>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>]);
# Runed Obsidian
Fey.removeRecipe(<roots:runed_obsidian>);
Fey.addRecipe("runed_obsidian", <roots:runed_obsidian>, [<ore:dustRunic>, <roots:runestone>, <roots:runestone>, <minecraft:obsidian>, <minecraft:obsidian>]);
# Runic Shears
Fey.removeRecipe(<roots:runic_shears>);
Fey.addRecipe("runic_shears", <roots:runic_shears>, [<minecraft:shears>, pereskia, pereskia, <roots:runed_obsidian>, <roots:runed_obsidian>]);
# Elemental Soil
Fey.removeRecipe(<roots:elemental_soil>);
Fey.addRecipe("elemental_soil", <roots:elemental_soil>, [<rustic:fertile_soil>, <minecraft:sand>, <minecraft:gravel>, <ore:dustBone>, <ore:dustRunic>]);
# Pereskia
Fey.addRecipe("pereskia", <roots:pereskia>, [<roots:wildroot>, <ore:dustRunic>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}), <roots:dewgonia>, <gregtech:meta_ingot:2517>]); 
# Moonglow
Fey.addRecipe("moonglow", <roots:moonglow_leaf>, [<roots:wildroot>, <ore:dustRunic>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}), cloudberry, <gregtech:meta_ingot:2517>]); 
# Rubber Sapling
Fey.addRecipe("rubber", <gregtech:rubber_sapling>, [<ore:treeSapling>, <ore:slimeball>, <ore:slimeball>, pereskia, wildroot]);
# Stalicripe
Fey.addRecipe("stalicripe", <roots:stalicripe>, [<gregtech:meta_dust:24009>, <ore:dustRunic>, <roots:spirit_herb>, <twilightforest:naga_scale>, <twilightforest:torchberries>]);
# Living Sword
Fey.removeRecipe(<roots:living_sword>);
Fey.addRecipe("livingsword", <roots:living_sword>, [<gregtech:meta_dust:24008>, <gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "ironwood"}}), spiritherb, <roots:wildwood_log>, <gregtech:meta_ingot:24010>]);
# Living Pickaxe
Fey.removeRecipe(<roots:living_pickaxe>);
Fey.addRecipe("livingpick", <roots:living_pickaxe>, [<gregtech:meta_dust:24008>, <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "ironwood"}}), spiritherb, <roots:wildwood_log>, <gregtech:meta_ingot:24010>]);
# Living Shovel
Fey.removeRecipe(<roots:living_shovel>);
Fey.addRecipe("livingshovel", <roots:living_shovel>, [<gregtech:meta_dust:24008>, <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "ironwood"}}), spiritherb, <roots:wildwood_log>, <gregtech:meta_ingot:24010>]);
# Living Axe
Fey.removeRecipe(<roots:living_axe>);
Fey.addRecipe("livingaxe", <roots:living_axe>, [<gregtech:meta_dust:24008>, <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "ironwood"}}), spiritherb, <roots:wildwood_log>, <gregtech:meta_ingot:24010>]);
# Living Hoe
Fey.removeRecipe(<roots:living_hoe>);
Fey.addRecipe("livinghoe", <roots:living_hoe>, [<gregtech:meta_dust:24008>, <gregtech:meta_tool:4>.withTag({"GT.ToolStats": {Material: "ironwood"}}), spiritherb, <roots:wildwood_log>, <gregtech:meta_ingot:24010>]);
# Wildwood Bow
Fey.removeRecipe(<roots:wildwood_bow>);
Fey.addRecipe("livingbow", <roots:wildwood_bow>, [<gregtech:meta_dust:24008>, <tconstruct:bow_limb>.withTag({Material: "steeleaf"}), <tconstruct:bow_limb>.withTag({Material: "steeleaf"}), spiritherb, <roots:wildwood_log>]);
# Living Arrow
Fey.removeRecipe(<roots:living_arrow>);
Fey.addRecipe("livingarrow", <roots:living_arrow> * 8, [<tconstruct:arrow_head>.withTag({Material: "steeleaf"}), spiritherb, <roots:wildwood_planks>, <gregtech:meta_nugget:24009>, <gregtech:meta_nugget:324>]);
# Wildwood Quiver
Fey.removeRecipe(<roots:wildwood_quiver>);
Fey.addRecipe("wildwoodquiver", <roots:wildwood_quiver>, [<mekanism:machineblock:13>, <roots:wildwood_log>, <roots:wildwood_log>, spiritherb, <gregtech:meta_ingot:24010>]);
# Terrastone Sword
Fey.removeRecipe(<roots:terrastone_sword>);
Fey.addRecipe("terrastonesword", <roots:terrastone_sword>, [<roots:chiseled_runestone>, <roots:living_sword>, <tconstruct:materials:18>, <minecraft:diamond>, <gregtech:meta_gem:2006>]);
# Terrastone Pickaxe
Fey.removeRecipe(<roots:terrastone_pickaxe>);
Fey.addRecipe("terrastonepick", <roots:terrastone_pickaxe>, [<roots:chiseled_runestone>, <roots:living_pickaxe>, <tconstruct:materials:18>, <minecraft:diamond>, <gregtech:meta_gem:2006>]);
# Terrastone Shovel
Fey.removeRecipe(<roots:terrastone_shovel>);
Fey.addRecipe("terrastoneshovel", <roots:terrastone_shovel>, [<roots:chiseled_runestone>, <roots:living_shovel>, <tconstruct:materials:18>, <minecraft:diamond>, <gregtech:meta_gem:2006>]);
# Terrastone Axe
Fey.removeRecipe(<roots:terrastone_axe>);
Fey.addRecipe("terrastoneaxe", <roots:terrastone_axe>, [<roots:chiseled_runestone>, <roots:living_axe>, <tconstruct:materials:18>, <minecraft:diamond>, <gregtech:meta_gem:2006>]);
# Terrastone Hoe
Fey.removeRecipe(<roots:terrastone_hoe>);
Fey.addRecipe("terrastonehoe", <roots:terrastone_hoe>, [<roots:chiseled_runestone>, <roots:living_hoe>, <tconstruct:materials:18>, <minecraft:diamond>, <gregtech:meta_gem:2006>]);
# Runed Longsword
Fey.removeRecipe(<roots:runed_sword>);
Fey.addRecipe("runedlongsword", <roots:runed_sword>, [<contenttweaker:perfectpowder>, <roots:terrastone_sword>, <gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "runicmetal"}}), <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Runed Smasher
Fey.removeRecipe(<roots:runed_pickaxe>);
Fey.addRecipe("runedsmasher", <roots:runed_pickaxe>, [<contenttweaker:perfectpowder>, <roots:terrastone_pickaxe>, <gregtech:meta_tool:19>.withTag({"GT.ToolStats": {Material: "runicmetal"}}), <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Runed Greataxe
Fey.removeRecipe(<roots:runed_axe>);
Fey.addRecipe("runedaxe", <roots:runed_axe>, [<contenttweaker:perfectpowder>, <roots:terrastone_axe>, <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "runicmetal"}}), <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Runed Shovel
Fey.removeRecipe(<roots:runed_shovel>);
Fey.addRecipe("runedshovel", <roots:runed_shovel>, [<contenttweaker:perfectpowder>, <roots:terrastone_shovel>, <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "runicmetal"}}), <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Runed Plough
Fey.removeRecipe(<roots:runed_hoe>);
Fey.addRecipe("runedhoe", <roots:runed_hoe>, [<contenttweaker:perfectpowder>, <roots:terrastone_hoe>, <gregtech:meta_tool:4>.withTag({"GT.ToolStats": {Material: "runicmetal"}}), <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Runed Dagger
Fey.removeRecipe(<roots:runed_dagger>);
Fey.addRecipe("runeddagger", <roots:runed_dagger>, [<contenttweaker:perfectpowder>, <mysticalworld:amethyst_knife>, <roots:diamond_knife>, <roots:chiseled_runed_obsidian>, <minecraft:gold_block>]);
# Sylvan Helmet
Fey.removeRecipe(<roots:sylvan_helmet>);
Fey.addRecipe("sylvanhelmet", <roots:sylvan_helmet>, [<minecraft:iron_helmet>, <gregtech:meta_dust:24008>, <gregtech:meta_plate:24009>, spiritherb, <ore:gemAmethyst>]);
# Sylvan Chestplate
Fey.removeRecipe(<roots:sylvan_chestplate>);
Fey.addRecipe("sylvanchestplate", <roots:sylvan_chestplate>, [<minecraft:iron_chestplate>, <gregtech:meta_dust:24008>, <gregtech:meta_plate:24009>, spiritherb, <ore:gemAmethyst>]);
# Sylvan Leggings
Fey.removeRecipe(<roots:sylvan_leggings>);
Fey.addRecipe("sylvanleggings", <roots:sylvan_leggings>, [<minecraft:iron_leggings>, <gregtech:meta_dust:24008>, <gregtech:meta_plate:24009>, spiritherb, <ore:gemAmethyst>]);
# Sylvan Boots
Fey.removeRecipe(<roots:sylvan_boots>);
Fey.addRecipe("sylvanboots", <roots:sylvan_boots>, [<minecraft:iron_boots>, <gregtech:meta_dust:24008>, <gregtech:meta_plate:24009>, spiritherb, <ore:gemAmethyst>]);
# Wildwood Helmet
Fey.removeRecipe(<roots:wildwood_helmet>);
Fey.addRecipe("wildwoodhelmet", <roots:wildwood_helmet>, [<roots:sylvan_helmet>, <roots:wildwood_log>, <roots:wildwood_log>, <gregtech:meta_plate:24010>, <gregtech:meta_gem_flawless:2006>]);
# Wildwood Chestplate
Fey.removeRecipe(<roots:wildwood_chestplate>);
Fey.addRecipe("wildwoodchestplate", <roots:wildwood_chestplate>, [<roots:sylvan_chestplate>, <roots:wildwood_log>, <roots:wildwood_log>, <gregtech:meta_plate:24010>, <gregtech:meta_gem_flawless:2006>]);
# Wildwood Leggings
Fey.removeRecipe(<roots:wildwood_leggings>);
Fey.addRecipe("wildwoodleggings", <roots:wildwood_leggings>, [<roots:sylvan_leggings>, <roots:wildwood_log>, <roots:wildwood_log>, <gregtech:meta_plate:24010>, <gregtech:meta_gem_flawless:2006>]);
# Wildwood Helmet
Fey.removeRecipe(<roots:wildwood_boots>);
Fey.addRecipe("wildwoodboots", <roots:wildwood_boots>, [<roots:sylvan_boots>, <roots:wildwood_log>, <roots:wildwood_log>, <gregtech:meta_plate:24010>, <gregtech:meta_gem_flawless:2006>]);



// Runic Shearing
RunicShears.removeRecipe(spiritherb);
RunicShears.removeRecipe(wildewheet);

// Mortar Crafting
Mortar.removeRecipe(<roots:runic_dust>);

// InWorldCrafting
FluidToItem.transform(bafflecap, <liquid:badjuice>, [<rustic:mooncap_mushroom>], true);

// Summon Creatures
SummonCreatures.clearLifeEssence();
SummonCreatures.removeEntity(<entity:minecraft:cow>);
SummonCreatures.removeEntity(<entity:minecraft:witch>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_fox>);
SummonCreatures.removeEntity(<entity:minecraft:spider>);
SummonCreatures.removeEntity(<entity:minecraft:mule>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_owl>);
SummonCreatures.removeEntity(<entity:minecraft:ocelot>);
SummonCreatures.removeEntity(<entity:minecraft:rabbit>);
SummonCreatures.removeEntity(<entity:minecraft:mooshroom>);
SummonCreatures.removeEntity(<entity:minecraft:chicken>);
SummonCreatures.removeEntity(<entity:minecraft:creeper>);
SummonCreatures.removeEntity(<entity:minecraft:stray>);
SummonCreatures.removeEntity(<entity:minecraft:parrot>);
SummonCreatures.removeEntity(<entity:minecraft:zombie>);
SummonCreatures.removeEntity(<entity:minecraft:squid>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_beetle>);
SummonCreatures.removeEntity(<entity:minecraft:zombie_pigman>);
SummonCreatures.removeEntity(<entity:minecraft:skeleton>);
SummonCreatures.removeEntity(<entity:minecraft:horse>);
SummonCreatures.removeEntity(<entity:minecraft:wolf>);
SummonCreatures.removeEntity(<entity:minecraft:sheep>);
SummonCreatures.removeEntity(<entity:minecraft:polar_bear>);
SummonCreatures.removeEntity(<entity:minecraft:llama>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_deer>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_frog>);
SummonCreatures.removeEntity(<entity:minecraft:donkey>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_sprout>);
SummonCreatures.removeEntity(<entity:minecraft:husk>);
SummonCreatures.removeEntity(<entity:minecraft:bat>);
SummonCreatures.removeEntity(<entity:minecraft:pig>);
# Forest Raven
SummonCreatures.addEntity(<entity:twilightforest:raven>, [<roots:mystic_feather>, <roots:moonglow_leaf>, <gregtech:meta_dust:55>, <pyrotech:material:45>]);

// Rituals
# Grove Supplication
Rituals.modifyRitual("ritual_grove_supplication", [<minecraft:iron_door>, <ore:dustRunic>, <roots:wildroot>, <ore:treeSapling>, <roots:petals>]);
# Summon Creatures
Rituals.modifyRitual("ritual_summon_creatures", [<minecraft:egg>, <ore:dustRunic>, <thaumcraft:flesh_block>, pereskia, moonglow]);
# Transmutation
Rituals.modifyRitual("ritual_transmutation", [<ore:craftingFurnace>, <ore:platePotin>, stalicripe, <roots:bark_wildwood>, <roots:chiseled_runed_obsidian>]);
# Wildroot Growth
Rituals.modifyRitual("ritual_wildroot_growth", [wildroot, <roots:elemental_soil_air>, spiritherb, <ore:rootsBark>, <ore:rootsBark>]);

// Spells
# Chrysopoeia
Mortar.changeSpell("spell_chrysopoeia", [infernalbulb, <ore:plateRoseGold>, dustGlowstone, <ore:gemDiamond>, <contenttweaker:ancientbone>]);
Chrysopoeia.removeRecipeByOutput(<minecraft:iron_nugget>);
Chrysopoeia.removeRecipeByOutput(<minecraft:gold_nugget>);