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
	
// Add to OreDict
<ore:oreCopper>.add(<mysticalworld:copper_ore>);
<ore:oreQuartz>.add(<mysticalworld:quartz_ore>);
<ore:oreQuartz>.add(<mysticalworld:granite_quartz_ore>);
<ore:oreSilver>.add(<mysticalworld:silver_ore>);
<ore:ingotAluminum>.add(<erebus:materials:42>);
<ore:ingotCopper>.add(<erebus:materials:43>);
<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);
<ore:ingotLead>.add(<erebus:materials:44>);
<ore:ingotTin>.add(<erebus:materials:46>);
<ore:ingotSilver>.add(<erebus:materials:45>);
<ore:ingotSilver>.add(<mysticalworld:silver_ingot>);

print("Ore Removal");

var oresDisabled as IItemStack[][IOreDictEntry] = {

	#oreAluminium
	<ore:oreAluminium> : [
		<libvulpes:ore0:9>,
		<erebus:ore_aluminium>
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
		<railcraft:ore_metal>,
		<immersiveengineering:ore>,
		<mysticalworld:copper_ore>,
		<thermalfoundation:ore>
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
		<erebus:ore_lead>,
		<railcraft:ore_metal:2>,
		<immersiveengineering:ore:2>,
		<thermalfoundation:ore:3>
	],

	#oreNetherQuartz
	<ore:oreNetherQuartz> : [
		<minecraft:quartz_ore>,
		<erebus:ore_quartz>,
		<erebus:ore_petrified_quartz>
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
		<erebus:ore_silver>,
		<immersiveengineering:ore:3>,
		<mysticalworld:silver_ore>,
		<railcraft:ore_metal:3>,
		<thermalfoundation:ore:2>
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

print("Finished Ore Removal!");

/////////////////////////////////////////////////

print("Starting Plate Removal");

var platesDisabled as IItemStack[][IOreDictEntry] = {

	#plateAluminum
	<ore:plateAluminum> : [
		<libvulpes:productplate:9>,
		<thermalfoundation:material:324>,
		<immersiveengineering:metal:31>
	],


	#plateBronze
	<ore:plateBronze> : [
		<thermalfoundation:material:355>,
		<railcraft:plate:6>
	],

	#plateConstantan
	<ore:plateConstantan> : [
		<thermalfoundation:material:356>,
		<immersiveengineering:metal:36>
	],

	#plateCopper
	<ore:plateCopper> : [
		<libvulpes:productplate:4>,
		<thermalfoundation:material:320>,
		<immersiveengineering:metal:30>,
		<railcraft:plate:3>
	],

	#plateElectrum
	<ore:plateElectrum> : [
		<thermalfoundation:material:353>,
		<immersiveengineering:metal:37>
	],

	#plateEnderium
	<ore:plateEnderium> : [
		<thermalfoundation:material:359>
	],

	#plateGold
	<ore:plateGold> : [
		<libvulpes:productplate:2>,
		<thermalfoundation:material:33>,
		<immersiveengineering:metal:40>,
		<railcraft:plate:7>
	],

	#plateInvar
	<ore:plateInvar> : [
		<thermalfoundation:material:354>,
		<railcraft:plate:9>
	],

	#plateIridium
	<ore:plateIridium> : [
		<libvulpes:productplate:10>,
		<thermalfoundation:material:327>
	],

	#plateIron
	<ore:plateIron> : [
		<thermalfoundation:material:32>,
		<thaumcraft:plate:1>,
		<libvulpes:productplate:1>,
		<immersiveengineering:metal:39>,
		<railcraft:plate>
	],

	#plateLead
	<ore:plateLead> : [
		<thermalfoundation:material:323>,
		<immersiveengineering:metal:32>,
		<railcraft:plate:4>
	],

	#plateLumium
	<ore:plateLumium> : [
		<thermalfoundation:material:358>
	],

	#plateNickel
	<ore:plateNickel> : [
		<thermalfoundation:material:325>,
		<immersiveengineering:metal:34>,
		<railcraft:plate:8>
	],

	#platePlatinum
	<ore:platePlatinum> : [
		<thermalfoundation:material:326>
	],

	#plateSignalum
	<ore:plateSignalum> : [
		<thermalfoundation:material:357>
	],

	#plateSilicon
	<ore:plateSilicon> : [
		<libvulpes:productplate:3>
	],

	#plateSilver
	<ore:plateSilver> : [
		<thermalfoundation:material:322>,
		<immersiveengineering:metal:33>,
		<railcraft:plate:5>
	],

	#plateSteel
	<ore:plateSteel> : [
		<thermalfoundation:material:352>,
		<libvulpes:productplate:6>,
		<immersiveengineering:metal:38>,
		<railcraft:plate:1>
	],

	#plateTin
	<ore:plateTin> : [
		<thermalfoundation:material:321>,
		<libvulpes:productplate:5>,
		<railcraft:plate:2>
	],

	#plateTitanium
	<ore:plateTitanium> : [
		<libvulpes:productplate:7>
	]
};

for oreDictEntry, items in platesDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Plate Removal!");

