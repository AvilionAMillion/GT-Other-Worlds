// Rustic
// Made by GTOW Team!!
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Val

// Device Frame Replacement
recipes.replaceAllOccurences(<thermalexpansion:frame:64>, <gregtech:machine:501>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:64>);

// Crafting Table
# Aqueous Accumulator
recipes.remove(<thermalexpansion:device>);
recipes.addShaped(<thermalexpansion:device>,
	[[plateTin, <gregtech:machine:812>, plateTin],
	[<minecraft:bucket>, hullLV, <minecraft:bucket>],
	[plateTin, pumpLV, plateTin]]);