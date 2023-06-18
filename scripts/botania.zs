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

// Crafting
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>, 
	[[<roots:runestone_brick_alt_slab>, <ore:dustMana>, <roots:runestone_brick_alt_slab>],
	[null, <roots:runestone_brick_alt>, null],
	[<roots:runestone_brick_alt>, <roots:runestone_brick_alt>, <roots:runestone_brick_alt>]]);
	
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

