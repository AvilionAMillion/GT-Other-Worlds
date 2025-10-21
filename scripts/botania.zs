// GTOW Dev

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.botania.PureDaisy;
import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.roots.Fey;

// Crafting
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>, 
	[[<roots:runestone_brick_alt_slab>, <ore:dustMana>, <roots:runestone_brick_alt_slab>],
	[null, <roots:runestone_brick_alt>, null],
	[<roots:runestone_brick_alt>, <roots:runestone_brick_alt>, <roots:runestone_brick_alt>]]);
recipes.remove(<botania:pool>);
recipes.addShaped(<botania:pool>,
	[[<botania:livingrock>, <gregtech:meta_dust:24011>, <botania:livingrock>],
	[<gregtech:meta_plate:24014>, <botania:livingrock>, <gregtech:meta_plate:24014>]]);
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>,
	[[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
	[<gregtech:meta_ring:301>, <gregtech:meta_dust:24011>, <gregtech:meta_plate:24010>],
	[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);
recipes.remove(<botania:runealtar>);
recipes.addShaped(<botania:runealtar>,
	[[<botania:livingrock>, <ore:gemMana>, <botania:livingrock>],
	[<botania:livingrock>, <minecraft:nether_star>, <botania:livingrock>],
	[platePlastic, <botania:livingrock>, platePlastic]]);

// Pure Daisy
# Removal
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.removeRecipe(<minecraft:cobblestone>);
mods.botania.PureDaisy.removeRecipe(<minecraft:sand>);
mods.botania.PureDaisy.removeRecipe(<minecraft:packed_ice>);
mods.botania.PureDaisy.removeRecipe(<minecraft:obsidian>);
mods.botania.PureDaisy.removeRecipe(<minecraft:snow>);
mods.botania.PureDaisy.removeRecipe(<botania:dreamwood>);

# Addition
mods.botania.PureDaisy.addRecipe(<roots:runestone>,<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<roots:wildwood_log>,<botania:livingwood>);

// Petal Apothecary
# Removal
mods.botania.Apothecary.removeRecipe("puredaisy");
mods.botania.Apothecary.removeRecipe("hydroangeas");
mods.botania.Apothecary.removeRecipe("endoflame");
mods.botania.Apothecary.removeRecipe("manastar");
mods.botania.Apothecary.removeRecipe("thermalily");
mods.botania.Apothecary.removeRecipe("arcanerose");
mods.botania.Apothecary.removeRecipe("gourmaryllis");
mods.botania.Apothecary.removeRecipe("narslimmus");
mods.botania.Apothecary.removeRecipe("jadedAmaranthus");
mods.botania.Apothecary.removeRecipe("bellethorn");
mods.botania.Apothecary.removeRecipe("dreadthorn");
mods.botania.Apothecary.removeRecipe("tigerseye");
mods.botania.Apothecary.removeRecipe("exoflame");
mods.botania.Apothecary.removeRecipe("agricarnation");
mods.botania.Apothecary.removeRecipe("hopperhock");
mods.botania.Apothecary.removeRecipe("rannuncarpus");
mods.botania.Apothecary.removeRecipe("tangleberrie");
mods.botania.Apothecary.removeRecipe("jiyuulia");
mods.botania.Apothecary.removeRecipe("clayconia");
mods.botania.Apothecary.removeRecipe("daffomill");
mods.botania.Apothecary.removeRecipe("solegnolia");
mods.botania.Apothecary.removeRecipe("bergamute");
mods.botania.Apothecary.removeRecipe("munchdew");
mods.botania.Apothecary.removeRecipe("entropinnyum");
mods.botania.Apothecary.removeRecipe("spectrolus");
mods.botania.Apothecary.removeRecipe("rafflowsia");
mods.botania.Apothecary.removeRecipe("dandelifeon");
mods.botania.Apothecary.removeRecipe("kekimurus");
mods.botania.Apothecary.removeRecipe("shulk_me_not");
mods.botania.Apothecary.removeRecipe("heiseiDream");
mods.botania.Apothecary.removeRecipe("marimorphosis");
mods.botania.Apothecary.removeRecipe("orechid");
mods.botania.Apothecary.removeRecipe("orechidIgnem");
mods.botania.Apothecary.removeRecipe("hyacidus");
mods.botania.Apothecary.removeRecipe("pollidisiac");
mods.botania.Apothecary.removeRecipe("medumone");
mods.botania.Apothecary.removeRecipe("fallenKanade");
mods.botania.Apothecary.removeRecipe("loonium");
mods.botania.Apothecary.removeRecipe("vinculotus");
mods.botania.Apothecary.removeRecipe("spectranthemum");
mods.botania.Apothecary.removeRecipe("bubbell");
# Mushrooms
<ore:petalWhite>.remove(<botania:mushroom>);
<ore:petalOrange>.remove(<botania:mushroom:1>);
<ore:petalMagenta>.remove(<botania:mushroom:2>);
<ore:petalLightBlue>.remove(<botania:mushroom:3>);
<ore:petalYellow>.remove(<botania:mushroom:4>);
<ore:petalLime>.remove(<botania:mushroom:5>);
<ore:petalPink>.remove(<botania:mushroom:6>);
<ore:petalGray>.remove(<botania:mushroom:7>);
<ore:petalLightGray>.remove(<botania:mushroom:8>);
<ore:petalCyan>.remove(<botania:mushroom:9>);
<ore:petalPurple>.remove(<botania:mushroom:10>);
<ore:petalBlue>.remove(<botania:mushroom:11>);
<ore:petalBrown>.remove(<botania:mushroom:12>);
<ore:petalGreen>.remove(<botania:mushroom:13>);
<ore:petalRed>.remove(<botania:mushroom:14>);
<ore:petalBlack>.remove(<botania:mushroom:15>);

// Mana Pool
# Removal
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);

// Fey Crafter
Fey.addRecipe("puredaisy", <botania:specialflower>.withTag({type: "puredaisy"}), [<contenttweaker:petal_of_the_daisy>, <contenttweaker:petal_of_the_daisy>, <roots:spirit_herb>, <rustic:marsh_mallow>, <gregtech:meta_dust_tiny:24011>]);
Fey.addRecipe("gourmaryllis", <botania:specialflower>.withTag({type: "gourmaryllis"}), [<contenttweaker:petal_of_the_gourmaryllis>, <contenttweaker:petal_of_the_gourmaryllis>, <artisanworktables:artisans_cutting_board_steel>, <gregtechfoodoption:gtfo_meta_item:71>, <roots:stalicripe>]);
Fey.addRecipe("endoflame", <botania:specialflower>.withTag({type: "endoflame"}), [<contenttweaker:petal_of_the_inner_flame>, <contenttweaker:petal_of_the_inner_flame>, <gregtech:machine:2>, <gregtech:meta_block_compressed_1500:2>, <roots:infernal_bulb>]);
Fey.addRecipe("munchdew", <botania:specialflower>.withTag({type: "munchdew"}), [<contenttweaker:munching_petal>, <contenttweaker:munching_petal>, <artisanworktables:artisans_shears_steel>, <gregtech:rubber_sapling>, <integrateddynamics:menril_sapling>]);
Fey.addRecipe("hydroangeas", <botania:specialflower>.withTag({type: "hydroangeas"}), [<contenttweaker:hydrating_petal>, <contenttweaker:hydrating_petal>, <gregtech:meta_item_1:142>, <roots:elemental_soil_water>, <roots:spirit_herb>]);
Fey.addRecipe("thermalily", <botania:specialflower>.withTag({type: "thermalily"}), [<contenttweaker:thermal_petal>, <contenttweaker:thermal_petal>, <gregtech:machine:6>, <minecraft:nether_brick>, <roots:infernal_bulb>]);