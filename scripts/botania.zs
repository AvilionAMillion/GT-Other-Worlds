// GTOW Dev

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

// Crafting
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>, 
	[[<roots:runestone_brick_alt_slab>, <ore:dustMana>, <roots:runestone_brick_alt_slab>],
	[null, <roots:runestone_brick_alt>, null],
	[<roots:runestone_brick_alt>, <roots:runestone_brick_alt>, <roots:runestone_brick_alt>]]);
