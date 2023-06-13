// GTOW Dev

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.botania.PureDaisy;

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