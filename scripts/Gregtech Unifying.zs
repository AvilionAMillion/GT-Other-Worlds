# priority 99

// GT OreDict
// This file is to make sure each and every iteration of an ore only comes from GT
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

// Removed Categories
# Thermal
	mods.jei.JEI.hideCategory("thermalexpansion.furnace");
	
// Add to OreDict
<ore:oreCopper>.add(<mysticalworld:copper_ore>);
<ore:oreQuartz>.add(<mysticalworld:quartz_ore>);
<ore:oreQuartz>.add(<mysticalworld:granite_quartz_ore>);
<ore:oreSilver>.add(<mysticalworld:silver_ore>);

print("Ore Removal");

var oresDisabled as IItemStack[][IOreDictEntry] = {

	#oreAluminium
	<ore:oreAluminium> : [
		<libvulpes:ore0:9>,
		<erebus:ore_aluminium>,
		<thermalfoundation:ore:4>
		],

	#oreAluminum
	<ore:oreAluminum> : [
		<libvulpes:ore0:9>,
		<erebus:ore_aluminium>,
		<thermalfoundation:ore:4>
	],

	#oreCoal
	<ore:oreCoal> : [
		<minecraft:coal_ore>,
		<erebus:ore_coal>
	],

	#oreCopper
	<ore:oreCopper> : [
		<mekanism:oreblock:1>,
		<mekanism:oreblock:1>,
		<libvulpes:ore0:4>,
		<erebus:ore_copper>,
		<forestry:resources:1>,
		<thermalfoundation:ore>,
		<railcraft:ore_metal>,
		<immersiveengineering:ore>,
		<mysticalworld:copper_ore>
	],

	#oreDiamond
	<ore:oreDiamond> : [
		<minecraft:diamond_ore>,
		<erebus:ore_diamond>,
		<erebus:ore_encrusted_diamond>
	],

	#oreEmerald
	<ore:oreEmerald> : [
		<minecraft:emerald_ore>,
		<erebus:ore_emerald>
	],

	#oreGold
	<ore:oreGold> : [
		<minecraft:gold_ore>,
		<erebus:ore_gold>
	],

	#oreIridium
	<ore:oreIridium> : [
		<libvulpes:ore0:10>,
		<thermalfoundation:ore:7>
	],

	#oreIron
	<ore:oreIron> : [
		<minecraft:iron_ore>,
		<erebus:ore_iron>
	],

	#oreLapis
	<ore:oreLapis> : [
		<minecraft:lapis_ore>,
		<erebus:ore_lapis>
	],

	#oreLead
	<ore:oreLead>: [
		<thermalfoundation:ore:3>,
		<erebus:ore_lead>,
		<railcraft:ore_metal:2>,
		<immersiveengineering:ore:2>
	],

	#oreNetherQuartz
	<ore:oreNetherQuartz> : [
		<minecraft:quartz_ore>,
		<erebus:ore_quartz>,
		<erebus:ore_petrified_quartz>
	],

	#orePlatinum
	<ore:orePlatinum> : [
		<thermalfoundation:ore:6>
	],

	#oreRedstone
	<ore:oreRedstone> : [
		<minecraft:redstone_ore>
	],

	#oreRutile
	<ore:oreRutile> : [
		<libvulpes:ore0:8>
	],

	#oreQuartz
	<ore:oreQuartz>: [
		<minecraft:quartz_ore>,
		<mysticalworld:quartz_ore>,
		<mysticalworld:granite_quartz_ore>
	],

	#oreTin
	<ore:oreTin> : [
		<libvulpes:ore0:5>,
		<mekanism:oreblock:2>,
		<erebus:ore_tin>,
		<forestry:resources:2>,
		<railcraft:ore_metal:1>,
		<thermalfoundation:ore:1>
	],

	#oreTitanium
	<ore:oreTitanium> : [
		<libvulpes:ore0:8>
	],

	#oreSilver
	<ore:oreSilver> : [
		<thermalfoundation:ore:2>,
		<erebus:ore_silver>,
		<immersiveengineering:ore:3>,
		<mysticalworld:silver_ore>,
		<railcraft:ore_metal:3>
	],

	#oreUranium
	<ore:oreUranium> : [
		<immersiveengineering:ore:5>
	],
	
	#orePoorCopper
	<ore:orePoorCopper> : [
		<railcraft:ore_metal_poor:2>
	],
	
	#orePoorIron
	<ore:orePoorIron> : [
		<railcraft:ore_metal_poor>
	],
	
	#orePoorGold
	<ore:orePoorGold> : [
		<railcraft:ore_metal_poor:1>
	],
	
	#orePoorTin
	<ore:orePoorTin> : [
		<railcraft:ore_metal_poor:3>
	],
	
	#orePoorLead
	<ore:orePoorLead> : [
		<railcraft:ore_metal_poor:4>
	],
	
	#orePoorSilver
	<ore:orePoorSilver> : [
		<railcraft:ore_metal_poor:5>
	],
	
	#orePoorNickel
	<ore:orePoorNickel> : [
		<railcraft:ore_metal_poor:6>
	],
	
	#orePoorZinc
	<ore:orePoorZinc> : [
		<railcraft:ore_metal_poor:7>
	],
	
	#oreNickel
	<ore:oreNickel> : [
		<immersiveengineering:ore:4>,
		<railcraft:ore_metal:4>,
		<thermalfoundation:ore:5>
	]
};

for oreDictEntry, items in oresDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

