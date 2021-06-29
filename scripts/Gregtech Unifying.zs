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
<ore:ingotAluminum>.add(<gregtech:meta_item_1:10001>);
<ore:ingotCopper>.add(<erebus:materials:43>);
<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);
<ore:ingotLead>.add(<erebus:materials:44>);
<ore:ingotTin>.add(<erebus:materials:46>);
<ore:ingotSilver>.add(<erebus:materials:45>);
<ore:ingotSilver>.add(<mysticalworld:silver_ingot>);
<ore:ingotConstantan>.add(<gregtech:meta_item_1:10109>);
<ore:blockAluminum>.addAll(<ore:blockAluminium>);
<ore:blockConstantan>.addAll(<ore:blockCupronickel>);
<ore:blockCopper>.add(<mysticalworld:copper_block>);
<ore:blockSilver>.add(<mysticalworld:silver_block>);
<ore:dustAluminum>.add(<gregtech:meta_item_1:2001>);
<ore:dustCupronickel>.addAll(<ore:dustConstantan>);
<ore:dustCopper>.add(<mysticalworld:copper_dust>);
<ore:dustIron>.add(<mysticalworld:iron_dust>);
<ore:dustSilver>.add(<mysticalworld:silver_dust>);
<ore:dustGold>.add(<mysticalworld:gold_dust>);
<ore:dustEnder>.add(<gregtech:meta_item_1:2218>);

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
		<thermalfoundation:ore:2>
	],

	#oreUranium
	<ore:oreUranium> : [
		<immersiveengineering:ore:5>
	],
	
	#oreNickel
	<ore:oreNickel> : [
		<immersiveengineering:ore:4>,
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
	
	#plateTitaniumAluminide
	<ore:plateTitaniumAluminide> : [
		<advancedrocketry:productplate>
	],
	
	#plateTitaniumIridium
	<ore:plateTitaniumIridium> : [
		<advancedrocketry:productplate:1>
	],
	
	#plateBronze
	<ore:plateBronze> : [
		<thermalfoundation:material:355>,
		<railcraft:plate:6>
	],
	
	#plateBrass
	<ore:plateBrass> : [
		<railcraft:plate:11>,
		<thaumcraft:plate>
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
	],
	
	#plateZinc
	<ore:plateZinc> : [
		<railcraft:plate:10>
	],
	
	#plateUranium
	<ore:plateUranium> : [
		<immersiveengineering:metal:35>
	]
};

for oreDictEntry, items in platesDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Plate Removal!");

/////////////////////////////////////////////////

print("Starting Ingot Removal!");

var ingotsDisabled as IItemStack[][IOreDictEntry] = {

	#ingotAluminum
	<ore:ingotAluminum> : [
		<erebus:materials:42>,
		<immersiveengineering:metal:1>,
		<thermalfoundation:material:132>,
		<libvulpes:productingot:9>
	],
	
	#ingotTitaniumAluminide
	<ore:ingotTitaniumAluminide> : [
		<advancedrocketry:productingot>
	],
	
	#ingotTitaniumIridium
	<ore:ingotTitaniumIridium> : [
		<advancedrocketry:productingot:1>
	],
	
	#ingotBronze
	<ore:ingotBronze> : [
		<forestry:ingot_bronze>,
		<mekanism:ingot:2>,
		<railcraft:ingot:5>,
		<thermalfoundation:material:163>
	],
	
	#ingotBrass
	<ore:ingotBrass> : [
		<thaumcraft:ingot:2>,
		<railcraft:ingot:9>
	],
	
	#ingotConstantan
	<ore:ingotConstantan> : [
		<thermalfoundation:material:164>,
		<immersiveengineering:metal:6>
	],
	
	#ingotCopper
	<ore:ingotCopper> : [
		<erebus:materials:43>,
		<forestry:ingot_copper>,
		<immersiveengineering:metal>,
		<mekanism:ingot:5>,
		<mysticalworld:copper_ingot>,
		<railcraft:ingot:1>,
		<thermalfoundation:material:128>,
		<libvulpes:productingot:4>
	],
	
	#ingotElectrum
	<ore:ingotElectrum> : [
		<immersiveengineering:metal:7>,
		<thermalfoundation:material:161>
	],
	
	#ingotEnderium
	<ore:ingotEnderium> : [
		<thermalfoundation:material:167>
	],
	
	#ingotInvar
	<ore:ingotInvar> : [
		<railcraft:ingot:7>,
		<thermalfoundation:material:162>,
	],
	
	#ingotIridium
	<ore:ingotIridium> : [
		<thermalfoundation:material:135>,
		<libvulpes:productingot:10>
	],
	
	#ingotLead
	<ore:ingotLead> : [
		<erebus:materials:44>,
		<immersiveengineering:metal:2>,
		<railcraft:ingot:3>,
		<thermalfoundation:material:131>
	],
	
	#ingotNickel
	<ore:ingotNickel> : [
		<immersiveengineering:metal:4>,
		<railcraft:ingot:6>,
		<thermalfoundation:material:133>
	],
	
	#ingotPlatinum
	<ore:ingotPlatinum> : [
		<thermalfoundation:material:134>
	],
	
	#ingotSilicon
	<ore:ingotSilicon> : [
		<libvulpes:productingot:3>
	],
	
	#ingotSilver
	<ore:ingotSilver> : [
		<erebus:materials:45>,
		<immersiveengineering:metal:3>,
		<mysticalworld:silver_ingot>,
		<railcraft:ingot:4>,
		<thermalfoundation:material:130>
	],
	
	#ingotSteel
	<ore:ingotSteel> : [
		<immersiveengineering:metal:8>,
		<railcraft:ingot>,
		<mekanism:ingot:4>,
		<thermalfoundation:material:160>,
		<libvulpes:productingot:6>
	],
	
	#ingotTin
	<ore:ingotTin> : [
		<erebus:materials:46>,
		<forestry:ingot_tin>,
		<libvulpes:productingot:5>,
		<thermalfoundation:material:129>,
		<railcraft:ingot:2>,
		<mekanism:ingot:6>
	],
	
	#ingotTitanium
	<ore:ingotTitanium> : [
		<libvulpes:productingot:7>
	],
	
	#ingotOsmium
	<ore:ingotOsmium> : [
		<mekanism:ingot:1>
	],
	
	#ingotZinc
	<ore:ingotZinc> : [
		<railcraft:ingot:8>
	],
};

for oreDictEntry, items in ingotsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Ingot Removal!");

///////////////////////////////////////////////////////

print("Starting Block Removal!");

var blocksDisabled as IItemStack[][IOreDictEntry] = {

	#blockAluminum
	<ore:blockAluminum> : [
		<libvulpes:metal0:9>,
		<thermalfoundation:storage:4>,
		<immersiveengineering:storage:1>
	],
	
	#blockTitaniumAluminde
	<ore:blockTitaniumAluminide> : [
		<advancedrocketry:metal0>
	],
	
	#blockTitaniumIridium
	<ore:blockTitaniumIridium> : [
		<advancedrocketry:metal0:1>
	],
	
	#blockBronze
	<ore:blockBronze> : [
		<mekanism:basicblock:1>,
		<thermalfoundation:storage_alloy:3>,
		<railcraft:metal:5>,
		<forestry:resource_storage:3>
	],
	
	#blockBrass
	<ore:blockBrass> : [
		<thaumcraft:metal_brass>,
		<railcraft:metal:9>
	],
	
	#blockCharcoal
	<ore:blockCharcoal> : [
		<actuallyadditions:block_misc:5>,
		<mekanism:basicblock:3>,
		<thermalfoundation:storage_resource>,
		<forestry:charcoal>
	],
	
	#blockConstantan
	<ore:blockConstantan> : [
		<immersiveengineering:storage:6>,
		<thermalfoundation:storage_alloy:4>
	],
	
	#blockCopper
	<ore:blockCopper> : [
		<thermalfoundation:storage>,
		<libvulpes:metal0:4>,
		<immersiveengineering:storage>,
		<mekanism:basicblock:12>,
		<mysticalworld:copper_block>,
		<railcraft:metal>,
		<forestry:resource_storage:1>
	],
	
	#blockElectrum
	<ore:blockElectrum> : [
		<immersiveengineering:storage:7>,
		<thermalfoundation:storage_alloy:1>
	],
	
	#blockEnderium
	<ore:blockEnderium> : [
		<thermalfoundation:storage_alloy:7>
	],
	
	#blockInvar
	<ore:blockInvar> : [
		<thermalfoundation:storage_alloy:2>,
		<railcraft:metal:7>
	],
	
	#blockIridium
	<ore:blockIridium> : [
		<thermalfoundation:storage:7>,
		<libvulpes:metal0:10>
	],
	
	#blockLead
	<ore:blockLead> : [
		<immersiveengineering:storage:2>,
		<railcraft:metal:2>,
		<thermalfoundation:storage:3>
	],
	
	#blockNickel
	<ore:blockNickel> : [
		<immersiveengineering:storage:4>,
		<railcraft:metal:6>,
		<thermalfoundation:storage:5>
	],
	
	#blockPlatinum
	<ore:blockPlatinum> : [
		<thermalfoundation:storage:6>
	],
	
	#blockSilver
	<ore:blockSilver> : [
		<immersiveengineering:storage:3>,
		<mysticalworld:silver_block>,
		<railcraft:metal:4>,
		<thermalfoundation:storage:2>
	],
	
	#blockSteel
	<ore:blockSteel> : [
		<thermalfoundation:storage_alloy>,
		<railcraft:metal:3>,
		<libvulpes:metal0:6>,
		<mekanism:basicblock:5>,
		<immersiveengineering:storage:8>
	],
	
	#blockTin
	<ore:blockTin> : [
		<forestry:resource_storage:2>,
		<libvulpes:metal0:5>,
		<thermalfoundation:storage:1>,
		<railcraft:metal:1>,
		<mekanism:basicblock:13>
	],
	
	#blockTitanium
	<ore:blockTitanium> : [
		<libvulpes:metal0:7>
	],
	
	#blockOsmium
	<ore:blockOsmium> : [
		<mekanism:basicblock>
	],
	
	#blockZinc
	<ore:blockZinc> : [
		<railcraft:metal:8>
	]
	
};

for oreDictEntry, items in blocksDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Block Removal!");

/////////////////////////////////////////////////

print("Starting Dust Removal!");

var dustsDisabled as IItemStack[][IOreDictEntry] = {

	#dustAluminum
	<ore:dustAluminum> : [
		<immersiveengineering:metal:10>,
		<thermalfoundation:material:68>,
		<libvulpes:productdust:9>
	],
	
	#dustTitaniumAluminde
	<ore:dustTitaniumAluminde> : [
		<advancedrocketry:productdust>
	],
	
	#dustTitaniumIridium
	<ore:dustTitaniumIridium> : [
		<advancedrocketry:productdust:1>
	],
	
	#dustBronze
	<ore:dustBronze> : [
		<thermalfoundation:material:99>
	],
	
	#dustCoal
	<ore:dustCoal> : [
		<threng:material:3>,
		<railcraft:dust:5>,
		<actuallyadditions:item_dust:6>,
		<bloodmagic:component:21>,
		<thermalfoundation:material:768>
	],
	
	#dustCharcoal
	<ore:dustCharcoal> : [
		<railcraft:dust:3>,
		<thermalfoundation:material:769>
	],
	
	#dustCoke
	<ore:dustCoke> : [
		<immersiveengineering:material:17>
	],
		
	
	#dustConstantan
	<ore:dustConstantan> : [
		<thermalfoundation:material:100>,
		<immersiveengineering:metal:15>
	],
	
	#dustCopper
	<ore:dustCopper> : [
		<mekanism:dust:3>,
		<mysticalworld:copper_dust>,
		<thermalfoundation:material:64>,
		<libvulpes:productdust:4>,
		<immersiveengineering:metal:9>
	],
	
	#dustElectrum
	<ore:dustElectrum> : [
		<immersiveengineering:metal:16>,
		<thermalfoundation:material:97>
	],
	
	#dustEnderium
	<ore:dustEnderium> : [
		<thermalfoundation:material:103>
	],
	
	#dustInvar
	<ore:dustInvar> : [
		<thermalfoundation:material:98>
	],
	
	#dustIridium
	<ore:dustIridium> : [
		<libvulpes:productdust:10>,
		<thermalfoundation:material:71>
	],
	
	#dustIron
	<ore:dustIron> : [
		<libvulpes:productdust:1>,
		<mysticalworld:iron_dust>,
		<mekanism:dust>,
		<thermalfoundation:material>,
		<immersiveengineering:metal:18>,
		<actuallyadditions:item_dust>,
		<appliedenergistics2:material:49>,
		<bloodmagic:component:19>
	],
	
	#dustLead
	<ore:dustLead> : [
		<thermalfoundation:material:67>,
		<mekanism:dust:6>,
		<immersiveengineering:metal:11>
	],
	
	#dustNickel
	<ore:dustNickel> : [
		<thermalfoundation:material:69>,
		<immersiveengineering:metal:13>
	],
	
	#dustPlatinum
	<ore:dustPlatinum> : [
		<thermalfoundation:material:70>
	],
	
	#dustSilicon
	<ore:dustSilicon> : [
		<libvulpes:productdust:3>
	],
	
	#dustSilver
	<ore:dustSilver> : [
		<mekanism:dust:5>,
		<immersiveengineering:metal:12>,
		<mysticalworld:silver_ingot>,
		<thermalfoundation:material:66>,
		<mysticalworld:silver_dust>
	],
	
	#dustSteel
	<ore:dustSteel> : [
		<thermalfoundation:material:96>,
		<immersiveengineering:metal:17>,
		<mekanism:otherdust:1>,
		<libvulpes:productdust:6>
	],
	
	#dustTin
	<ore:dustTin> : [
		<thermalfoundation:material:65>,
		<mekanism:dust:4>,
		<libvulpes:productdust:5>
	],
	
	#dustTitanium
	<ore:dustTitanium> : [
		<libvulpes:productdust:7>
	],
	
	#dustOsmium
	<ore:dustOsmium> : [
		<mekanism:dust:2>
	],
	
	#dustGold
	<ore:dustGold> : [
		<thermalfoundation:material:1>,
		<immersiveengineering:metal:19>,
		<mekanism:dust:1>,
		<actuallyadditions:item_dust:1>,
		<appliedenergistics2:material:51>,
		<mysticalworld:gold_dust>,
		<libvulpes:productdust:2>,
		<bloodmagic:component:20>
	],
	
	#dustDiamond
	<ore:dustDiamond> : [
		<actuallyadditions:item_dust:2>,
		<mekanism:otherdust>
	],
	
	#dustNetherQuartz
	<ore:dustNetherQuartz> : [
		<actuallyadditions:item_dust:5>,
		<appliedenergistics2:material:3>
	],
	
	#dustCertusQuartz
	<ore:dustCertusQuartz> : [
		<appliedenergistics2:material:2>
	],
	
	#dustLapis
	<ore:dustLapis> : [
		<actuallyadditions:item_dust:4>
	],
	
	#dustEmerald
	<ore:dustEmerald> : [
		<actuallyadditions:item_dust:3>
	],
	
	#dustSulfur
	<ore:dustSulfur> : [
		<bloodmagic:component:23>,
		<immersiveengineering:material:25>,
		<railcraft:dust:1>,
		<thermalfoundation:material:771>,
		<mekanism:otherdust:3>
	],
	
	#dustObsidian
	<ore:dustObsidian> : [
		<mekanism:otherdust:6>,
		<railcraft:dust>,
		<thermalfoundation:material:770>
	],
	
	#dustEnder
	<ore:dustEnder> : [
		<appliedenergistics2:material:46>,
		<railcraft:dust:6>
	],
	
	#dustWood
	<ore:dustWood> : [
		<thermalfoundation:material:800>,
		<mekanism:sawdust>
	],
	
	#dustSaltpeter
	<ore:dustSaltpeter> : [
		<bloodmagic:component:24>,
		<thermalfoundation:material:772>,
		<railcraft:dust:2>,
		<immersiveengineering:material:24>
	],
	
	#dustLithium
	<ore:dustLithium> : [
		<mekanism:otherdust:4>
	],
	
	#dustSapphire
	<ore:dustSapphire> : [
		<practicallogistics2:sapphiredust>
	],
	
	#dustPyrotheum
	<ore:dustPyrotheum> : [
		<thermalfoundation:material:1024>
	],
	
	#dustCryotheum
	<ore:dustCryotheum> : [
		<thermalfoundation:material:1025>
	]
	
};

for oreDictEntry, items in dustsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Dust Removal!");

/////////////////////////////////////////////////

	



