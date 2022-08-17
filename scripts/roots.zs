// GTOW ZS File
// Made by GTOW Team
import mods.roots.Pyre;
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
<roots:dewgonia>.addTooltip("Tier 0 Crop");
<roots:cloud_berry>.addTooltip("Tier 0 Crop");
<roots:pereskia>.addTooltip(format.green("Tier 1 Crop"));
<roots:moonglow_leaf>.addTooltip(format.green("Tier 1 Crop"));
<roots:wildewheet>.addTooltip(format.aqua("Tier 2 Crop"));
<roots:spirit_herb>.addTooltip(format.aqua("Tier 2 Crop"));
<roots:stalicripe>.addTooltip(format.gold("Tier 3 Crop"));
<roots:infernal_bulb>.addTooltip(format.gold("Tier 3 Crop"));
<roots:baffle_cap_mushroom>.addTooltip(format.red("Multi-Tier Crop"));

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

// Pyre Crafting
  # Dewgonia
Pyre.removeRecipe(dewgonia);
Pyre.addRecipe("dew", dewgonia, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <gregtech:meta_dust:289>, moss, <minecraft:water_bucket>]);
  # Cloud Berry
Pyre.removeRecipe(cloudBerry);
Pyre.addRecipe("cloud", cloudBerry, [<minecraft:wheat_seeds>, <gregtech:meta_ingot:112>, <gregtech:meta_dust:253>, moss, <minecraft:wool>]);
  # Baffle Cap
Pyre.removeRecipe(bafflecap);

// InWorldCrafting
FluidToItem.transform(bafflecap, <liquid:badjuice>, [<rustic:mooncap_mushroom>], true);