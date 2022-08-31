// GTOW ZS File
// Made by GTOW Team
import mods.roots.Pyre;
import mods.roots.Mortar;
import mods.inworldcrafting.FluidToItem;

// Val
val treatedStick = <gregtech:meta_stick:1648>;
val wildroot = <roots:wildroot>;
val longWoodStick = <gregtech:meta_stick_long:1617>;
val moss = <roots:terra_moss>;
val sapling = <ore:treeSapling>;
val cloudBerry = <roots:cloud_berry>;
val dewgonia = <roots:dewgonia>;
val bafflecap = <roots:baffle_cap_mushroom>;
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
		[[cloudBerry, sapling, cloudBerry],
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

// Pyre Crafting
  # Dewgonia
Pyre.removeRecipe(dewgonia);
Pyre.addRecipe("dew", dewgonia, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:water_bucket>]);
  # Cloud Berry
Pyre.removeRecipe(cloudBerry);
Pyre.addRecipe("cloud", cloudBerry, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <ore:dustRunic>, moss, <minecraft:wool>]);
  # Baffle Cap
Pyre.removeRecipe(bafflecap);

// Mortar Crafting
Mortar.removeRecipe(<roots:runic_dust>);

// InWorldCrafting
FluidToItem.transform(bafflecap, <liquid:badjuice>, [<rustic:mooncap_mushroom>], true);