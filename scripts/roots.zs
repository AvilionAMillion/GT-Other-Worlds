// GTOW ZS File
// Made by GTOW Team
import mods.roots.Pyre;
import mods.roots.Mortar;
import mods.inworldcrafting.FluidToItem;
import mods.roots.Rituals;
import mods.roots.Fey;
import mods.roots.SummonCreatures;


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
recipes.addShapeless(<roots:petals> * 3, [gtMortar, <ore:allTallFlowers>]);

// Pyre Crafting
  # Dewgonia
Pyre.removeRecipe(dewgonia);
Pyre.addRecipe("dew", dewgonia, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:water_bucket>]);
  # Cloud Berry
Pyre.removeRecipe(cloudberry);
Pyre.addRecipe("cloud", cloudberry, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:wool>]);
  # Baffle Cap
Pyre.removeRecipe(bafflecap);
Pyre.removeRecipe(pereskia);
Pyre.removeRecipe(moonglow);

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
# Pereskia
Fey.addRecipe("pereskia", <roots:pereskia>, [<roots:wildroot>, <ore:dustRunic>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]}), <roots:dewgonia>, <gregtech:meta_ingot:2517>]); 
# Moonglow
Fey.addRecipe("moonglow", <roots:moonglow_leaf>, [<roots:wildroot>, <ore:dustRunic>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}), cloudberry, <gregtech:meta_ingot:2517>]); 
# Rubber Sapling
Fey.addRecipe("rubber", <gregtech:rubber_sapling>, [<ore:treeSapling>, <ore:slimeball>, <ore:slimeball>, pereskia, wildroot]);

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
# Forest Raven
SummonCreatures.addEntity(<entity:twilightforest:raven>, [<roots:mystic_feather>, <roots:moonglow_leaf>, <gregtech:meta_dust:55>, <pyrotech:material:45>]);

// Rituals
# Grove Supplication
Rituals.modifyRitual("ritual_grove_supplication", [<minecraft:iron_door>, <ore:dustRunic>, <roots:wildroot>, <ore:treeSapling>, <roots:petals>]);
# Summon Creatures
Rituals.modifyRitual("ritual_summon_creatures", [<minecraft:egg>, <ore:dustRunic>, <thaumcraft:flesh_block>, pereskia, moonglow]);