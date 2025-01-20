#priority 120

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
<ore:oreAmethyst>.add(<mysticalworld:amethyst_ore>);
<ore:oreCopper>.add(<mysticalworld:copper_ore>);
<ore:oreQuartz>.add(<mysticalworld:quartz_ore>);
<ore:oreQuartz>.add(<mysticalworld:granite_quartz_ore>);
<ore:oreSilver>.add(<mysticalworld:silver_ore>);
<ore:ingotAluminum>.add(<erebus:materials:42>);
<ore:ingotAluminum>.add(<gregtech:meta_ingot:2>);
<ore:ingotCopper>.add(<erebus:materials:43>);
<ore:ingotCopper>.add(<mysticalworld:copper_ingot>);
<ore:ingotLead>.add(<erebus:materials:44>);
<ore:ingotTin>.add(<erebus:materials:46>);
<ore:ingotSilver>.add(<erebus:materials:45>);
<ore:ingotSilver>.add(<mysticalworld:silver_ingot>);
<ore:ingotConstantan>.add(<gregtech:meta_ingot:274>);
<ore:plateAluminum>.addAll(<ore:plateAluminium>);
<ore:plateConstantan>.addAll(<ore:plateCupronickel>);
<ore:blockAluminum>.addAll(<ore:blockAluminium>);
<ore:blockConstantan>.addAll(<ore:blockCupronickel>);
<ore:blockCopper>.add(<mysticalworld:copper_block>);
<ore:blockSilver>.add(<mysticalworld:silver_block>);
<ore:dustAluminum>.add(<gregtech:meta_dust:2>);
<ore:dustCupronickel>.addAll(<ore:dustConstantan>);
<ore:dustCopper>.add(<mysticalworld:copper_dust>);
<ore:dustIron>.add(<mysticalworld:iron_dust>);
<ore:dustSilver>.add(<mysticalworld:silver_dust>);
<ore:dustGold>.add(<mysticalworld:gold_dust>);
<ore:dustEnder>.add(<gregtech:meta_dust:416>);
<ore:nuggetAluminum>.addAll(<ore:nuggetAluminium>);
<ore:nuggetConstantan>.addAll(<ore:nuggetCupronickel>);
<ore:nuggetCopper>.add(<mysticalworld:copper_nugget>);
<ore:nuggetSilver>.add(<mysticalworld:silver_nugget>);
<ore:stickAluminum>.addAll(<ore:stickAluminium>);
<ore:gearConstantan>.addAll(<ore:gearCupronickel>);
<ore:gearAluminum>.addAll(<ore:gearAluminium>);
<ore:dustWheat>.add(<harvestcraft:flouritem>);
<ore:ingotChromium>.addAll(<ore:ingotChrome>);
<ore:blockAmethyst>.add(<mysticalworld:amethyst_block>);
<ore:gemAmethyst>.add(<mysticalworld:amethyst_gem>);
<ore:blockIronwood>.add(<twilightforest:block_storage>);

// Occurences
recipes.replaceAllOccurences(<pneumaticcraft:compressed_iron_gear>, <ore:gearIronCompressed>);

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
	
	#oreAmethyst
	<ore:oreAmethyst> : [
		<mysticalworld:amethyst_ore>,
		<biomesoplenty:gem_ore>
	],
	
	#oreBoron
	<ore:oreBoron> : [
		<nuclearcraft:ore:5>
	],
	
	#oreCinnabar
	<ore:oreCinnabar> : [
		<thaumcraft:ore_cinnabar>
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
		<immersiveengineering:ore>,
		<mysticalworld:copper_ore>,
		<thermalfoundation:ore>,
		<nuclearcraft:ore>
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
		<thermalfoundation:ore:3>,
		<nuclearcraft:ore:2>
	],
	
	#oreLithium
	<ore:oreLithium> : [
		<nuclearcraft:ore:6>
	],
	
	#oreMagnesium
	<ore:oreMagnesium> : [
		<nuclearcraft:ore:7>
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
	
	#oreMithril
	<ore:oreMithril> : [
		<thermalfoundation:ore:8>
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
		<mysticalworld:granite_quartz_ore>,
		<thaumcraft:ore_quartz>
	],
	
	#oreThorium
	<ore:oreThorium> : [
		<nuclearcraft:ore:3>
	],
	
	#oreTin
	<ore:oreTin> : [
		<libvulpes:ore0:5>,
		<mekanism:oreblock:2>,
		<erebus:ore_tin>,
		<thermalfoundation:ore:1>,
		<nuclearcraft:ore:1>
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
		<immersiveengineering:ore:5>,
		<nuclearcraft:ore:4>
	],
	
	#oreNickel
	<ore:oreNickel> : [
		<immersiveengineering:ore:4>,
		<thermalfoundation:ore:5>
	],
	
	#oreCobalt
	<ore:oreCobalt> : [
		<tconstruct:ore>
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
		<thermalfoundation:material:355>
	],
	
	#plateBrass
	<ore:plateBrass> : [
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
		<immersiveengineering:metal:30>
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
		<immersiveengineering:metal:40>
	],

	#plateInvar
	<ore:plateInvar> : [
		<thermalfoundation:material:354>
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
		<immersiveengineering:metal:39>
	],

	#plateLead
	<ore:plateLead> : [
		<thermalfoundation:material:323>,
		<immersiveengineering:metal:32>
	],

	#plateLumium
	<ore:plateLumium> : [
		<thermalfoundation:material:358>
	],

	#plateNickel
	<ore:plateNickel> : [
		<thermalfoundation:material:325>,
		<immersiveengineering:metal:34>
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
		<immersiveengineering:metal:33>
	],

	#plateSteel
	<ore:plateSteel> : [
		<thermalfoundation:material:352>,
		<libvulpes:productplate:6>,
		<immersiveengineering:metal:38>
	],

	#plateTin
	<ore:plateTin> : [
		<thermalfoundation:material:321>,
		<libvulpes:productplate:5>
	],

	#plateTitanium
	<ore:plateTitanium> : [
		<libvulpes:productplate:7>
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
		<libvulpes:productingot:9>,
		<nuclearcraft:ingot:12>
	],
	
	#ingotAluminiumBrass
	<ore:ingotAlubrass> : [
		<tconstruct:ingots:5>
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
		<mekanism:ingot:2>,
		<thermalfoundation:material:163>,
		<nuclearcraft:alloy>
	],
	
	#ingotBrass
	<ore:ingotBrass> : [
		<thaumcraft:ingot:2>
	],
	
	#ingotIronCompressed
	<ore:ingotIronCompressed> : [
		<pneumaticcraft:ingot_iron_compressed>
	],
	
	#ingotConstantan
	<ore:ingotConstantan> : [
		<thermalfoundation:material:164>,
		<immersiveengineering:metal:6>
	],
	
	#ingotCopper
	<ore:ingotCopper> : [
		<erebus:materials:43>,
		<immersiveengineering:metal>,
		<mekanism:ingot:5>,
		<mysticalworld:copper_ingot>,
		<thermalfoundation:material:128>,
		<libvulpes:productingot:4>,
		<nuclearcraft:ingot>,
		<abyssalcraft:copperingot>
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
		<thermalfoundation:material:162>,
	],
	
	#ingotIridium
	<ore:ingotIridium> : [
		<thermalfoundation:material:135>,
		<libvulpes:productingot:10>,
		<qmd:ingot:9>
	],

	#ingotIronwood
	<ore:ingotIronwood> : [
		<twilightforest:ironwood_ingot>
	],
	
	#ingotLead
	<ore:ingotLead> : [
		<erebus:materials:44>,
		<immersiveengineering:metal:2>,
		<thermalfoundation:material:131>,
		<nuclearcraft:ingot:2>
	],
	
	#ingotLumium
	<ore:ingotLumium> : [
		<thermalfoundation:material:166>
	],
	
	#ingotMithril
	<ore:ingotMithril> : [
		<thermalfoundation:material:136>
	],
	
	#ingotNickel
	<ore:ingotNickel> : [
		<immersiveengineering:metal:4>,
		<thermalfoundation:material:133>,
		<qmd:ingot:5>
	],
	
	#ingotPlatinum
	<ore:ingotPlatinum> : [
		<thermalfoundation:material:134>,
		<qmd:ingot:10>
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
		<thermalfoundation:material:130>,
		<nuclearcraft:ingot:13>
	],
	
	#ingotSteel
	<ore:ingotSteel> : [
		<immersiveengineering:metal:8>,
		<mekanism:ingot:4>,
		<thermalfoundation:material:160>,
		<libvulpes:productingot:6>,
		<nuclearcraft:alloy:5>
	],
	
	#ingotTin
	<ore:ingotTin> : [
		<erebus:materials:46>,
		<libvulpes:productingot:5>,
		<thermalfoundation:material:129>,
		<mekanism:ingot:6>,
		<nuclearcraft:ingot:1>,
		<abyssalcraft:tiningot>
	],
	
	#ingotTitanium
	<ore:ingotTitanium> : [
		<libvulpes:productingot:7>,
		<qmd:ingot:3>
	],
	
	#ingotOsmium
	<ore:ingotOsmium> : [
		<mekanism:ingot:1>,
		<qmd:ingot:8>
	],
	
	#ingotUranium
	<ore:ingotUranium> : [
		<immersiveengineering:metal:5>,
		<nuclearcraft:ingot:4>
	],
	
	#ingotZinc
	<ore:ingotZinc> : [
		<qmd:ingot:7>
	],
	
	#ingotCobalt
	<ore:ingotCobalt> : [
		<tconstruct:ingots>,
		<qmd:ingot:4>
	],
	
	#fuelCoke
	<ore:fuelCoke> : [
		<foundry:component:21>,
		<immersiveengineering:material:6>,
		<pyrotech:material:1>,
		<thermalfoundation:material:802>
	],
	
	#gemAmethyst
	<ore:gemAmethyst> : [
		<biomesoplenty:gem>,
		<mysticalworld:amethyst_gem>
	],
	
	#Nuclearcraft Ingots (There's a lot)
	<ore:ingotThorium> : [
		<nuclearcraft:ingot:3>],
	<ore:ingotLithium> : [
		<nuclearcraft:ingot:6>],
	<ore:ingotMagnesium> : [
		<nuclearcraft:ingot:7>],
	<ore:ingotBeryllium> : [
		<nuclearcraft:ingot:9>],
	<ore:ingotZirconium> : [
		<nuclearcraft:ingot:10>],
	<ore:ingotManganese> : [
		<nuclearcraft:ingot:11>],
	<ore:ingotMagnesiumDiboride> : [
		<nuclearcraft:alloy:3> ],
		
	#QMD Ingots (A Lot more)
	<ore:ingotTungstenCarbide> : [
		<qmd:ingot_alloy>],
	<ore:ingotStainlessSteel> : [
		<qmd:ingot_alloy:2>],
	<ore:ingotNiobiumTitanium> : [
		<qmd:ingot_alloy:3>],
	<ore:ingotOsmiridum> : [
		<qmd:ingot_alloy:4>],
	<ore:ingotNichrome> : [
		<qmd:ingot_alloy:5>],
	<ore:ingotTungsten> : [
		<qmd:ingot>],
	<ore:ingotNiobium> : [
		<qmd:ingot:1>],
	<ore:ingotChromium> : [
		<qmd:ingot:2>],
	<ore:ingotHafnium> : [
		<qmd:ingot:6>],
	<ore:ingotSodium> : [
		<qmd:ingot:11>],
	<ore:ingotPotassium> : [
		<qmd:ingot:12>],
	<ore:ingotCalcium> : [
		<qmd:ingot:13>],
	<ore:ingotStrontium> : [
		<qmd:ingot:14>],
	<ore:ingotYttrium> : [
		<qmd:ingot2>],
	<ore:ingotNeodynium> : [
		<qmd:ingot2:1>],
		
	# GT Material Ingots
	<ore:ingotRefinedObsidian> : [
		<mekanism:ingot>]
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
		<thermalfoundation:storage_alloy:3>
	],
	
	#blockBrass
	<ore:blockBrass> : [
		<thaumcraft:metal_brass>
	],
	
	#blockCharcoal
	<ore:blockCharcoal> : [
		<actuallyadditions:block_misc:5>,
		<mekanism:basicblock:3>,
		<thermalfoundation:storage_resource>
	],
	
	#blockFuelCoke
	<ore:blockFuelCoke> : [
		<immersiveengineering:stone_decoration:3>,
		<pyrotech:coal_coke_block>,
		<thermalfoundation:storage_resource:1>
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
		<thermalfoundation:storage_alloy:2>
	],
	
	#blockIridium
	<ore:blockIridium> : [
		<thermalfoundation:storage:7>,
		<libvulpes:metal0:10>
	],
	
	#blockLead
	<ore:blockLead> : [
		<immersiveengineering:storage:2>,
		<thermalfoundation:storage:3>
	],
	
	#blockLumium
	<ore:blockLumium> : [
		<thermalfoundation:storage_alloy:6>
	],
	
	#blockNickel
	<ore:blockNickel> : [
		<immersiveengineering:storage:4>,
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
		<thermalfoundation:storage:2>
	],
	
	#blockSteel
	<ore:blockSteel> : [
		<thermalfoundation:storage_alloy>,
		<libvulpes:metal0:6>,
		<mekanism:basicblock:5>,
		<immersiveengineering:storage:8>
	],
	
	#blockTin
	<ore:blockTin> : [
		<libvulpes:metal0:5>,
		<thermalfoundation:storage:1>,
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
	
	#blockUranium
	<ore:blockUranium> : [
		<immersiveengineering:storage:5>
	],
	
	#blockZinc
	<ore:blockZinc> : [
	],
	
	#blockCobalt
	<ore:blockCobalt> : [
		<tconstruct:metal>
	],
	
	#blockSalt
	<ore:blockSalt> : [
		<mekanism:saltblock>
	],
	
	# GT Material Blocks
	<ore:blockRefinedObsidian> : [
		<mekanism:basicblock:2>],
	<ore:blockIronwood> : [
		<twilightforest:block_storage>]
	
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
		<libvulpes:productdust:9>,
		<nuclearcraft:dust:12>
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
		<actuallyadditions:item_dust:6>,
		<bloodmagic:component:21>,
		<enderio:item_material:23>,
		<thermalfoundation:material:768>
	],
	
	#dustCharcoal
	<ore:dustCharcoal> : [
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
		<enderio:item_material:26>,
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
		<enderio:item_material:24>,
		<appliedenergistics2:material:49>,
		<bloodmagic:component:19>
	],
	
	#dustLead
	<ore:dustLead> : [
		<thermalfoundation:material:67>,
		<mekanism:dust:6>,
		<immersiveengineering:metal:11>
	],
	
	#dustLumium
	<ore:dustLumium> : [
		<thermalfoundation:material:102>
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
		<nuclearcraft:dust:13>,
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
		<enderio:item_material:27>,
		<libvulpes:productdust:5>
	],
	
	#dustTitanium
	<ore:dustTitanium> : [
		<libvulpes:productdust:7>
	],
	
	#dustOsmium
	<ore:dustOsmium> : [
		<mekanism:dust:2>,
		<qmd:dust:8>
	],
	
	#dustGold
	<ore:dustGold> : [
		<thermalfoundation:material:1>,
		<immersiveengineering:metal:19>,
		<mekanism:dust:1>,
		<actuallyadditions:item_dust:1>,
		<appliedenergistics2:material:51>,
		<mysticalworld:gold_dust>,
		<enderio:item_material:25>,
		<libvulpes:productdust:2>,
		<bloodmagic:component:20>,
		<rustic:dust_gold>	
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
		<appliedenergistics2:material:2>,
		<enderio:item_material:33>
	],
	
	#dustLapis
	<ore:dustLapis> : [
		<actuallyadditions:item_dust:4>,
		<enderio:item_material:32>
	],
	
	#dustEmerald
	<ore:dustEmerald> : [
		<actuallyadditions:item_dust:3>
	],
	
	#dustSulfur
	<ore:dustSulfur> : [
		<bloodmagic:component:23>,
		<immersiveengineering:material:25>,
		<thermalfoundation:material:771>,
		<mekanism:otherdust:3>
	],
	
	#dustObsidian
	<ore:dustObsidian> : [
		<mekanism:otherdust:6>,
		<enderio:item_material:29>,
		<thermalfoundation:material:770>
	],
	
	#dustEnder
	<ore:dustEnder> : [
		<appliedenergistics2:material:46>
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
		<immersiveengineering:material:24>
	],
	
	#dustLithium
	<ore:dustLithium> : [
		<mekanism:otherdust:4>
	],
	
	#dustPyrotheum
	<ore:dustPyrotheum> : [
		<thermalfoundation:material:1024>
	],
	
	#dustCryotheum
	<ore:dustCryotheum> : [
		<thermalfoundation:material:1025>
	],
	
	#dustUranium
	<ore:dustUranium> : [
		<immersiveengineering:metal:14>
	],
	
	#dustWheat
	<ore:dustWheat> : [
		<appliedenergistics2:material:4>,
		<roots:flour>,
		<harvestcraft:flouritem>
	],
	
	# GT Material Dust
	<ore:dustRefinedObsidian> : [
		<mekanism:otherdust:5>]
};

for oreDictEntry, items in dustsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Dust Removal!");

/////////////////////////////////////////////////

print("Starting Nugget Removal!");

var nuggetsDisabled as IItemStack[][IOreDictEntry] = {

	#nuggetAluminum
	<ore:nuggetAluminum> : [
		<immersiveengineering:metal:21>,
		<thermalfoundation:material:196>,
		<libvulpes:productnugget:9>
	],
	
	#nuggetTitaniumAluminide
	<ore:nuggetTitaniumAluminide> : [
		<advancedrocketry:productnugget>
	],
	
	#nuggetTitaniumIridium
	<ore:nuggetTitaniumIridium> : [
		<advancedrocketry:productnugget:1>
	],
	
	#nuggetBronze
	<ore:nuggetBronze> : [
		<mekanism:nugget:2>,
		<thermalfoundation:material:227>
	],
	
	#nuggetBrass
	<ore:nuggetBrass> : [
		<thaumcraft:nugget:2>
	],
	
	#nuggetConstantan
	<ore:nuggetConstantan> : [
		<thermalfoundation:material:228>,
		<immersiveengineering:metal:26>
	],
	
	#nuggetCopper
	<ore:nuggetCopper> : [
		<mysticalworld:copper_nugget>,
		<thaumcraft:nugget:1>,
		<mekanism:nugget:5>,
		<thermalfoundation:material:192>,
		<libvulpes:productnugget:4>,
		<immersiveengineering:metal:20>
	],
	
	#nuggetElectrum
	<ore:nuggetElectrum> : [
		<immersiveengineering:metal:27>,
		<thermalfoundation:material:225>
	],
	
	#nuggetEnderium
	<ore:nuggetEnderium> : [
		<thermalfoundation:material:231>
	],
	
	#nuggetInvar
	<ore:nuggetInvar> : [
		<thermalfoundation:material:226>
	],
	
	#nuggetIridium
	<ore:nuggetIridium> : [
		<thermalfoundation:material:199>,
		<libvulpes:productnugget:10>
	],
	
	#nuggetIron
	<ore:nuggetIron> : [
		<immersiveengineering:metal:29>,
		<thaumcraft:nugget>
	],
	
	#nuggetLead
	<ore:nuggetLead> : [
		<immersiveengineering:metal:22>,
		<thaumcraft:nugget:4>,
		<thermalfoundation:material:195>
	],
	
	#nuggetLumium
	<ore:nuggetLumium> : [
		<thermalfoundation:material:230>
	],
	
	#nuggetNickel
	<ore:nuggetNickel> : [
		<immersiveengineering:metal:24>,
		<thermalfoundation:material:197>
	],
	
	#nuggetPlatinum
	<ore:nuggetPlatinum> : [
		<thermalfoundation:material:198>
	],
	
	#nuggetSilicon
	<ore:nuggetSilicon> : [
		<libvulpes:productnugget:3>
	],
	
	#nuggetSilver
	<ore:nuggetSilver> : [
		<thaumcraft:nugget:3>,
		<immersiveengineering:metal:23>,
		<mysticalworld:silver_nugget>,
		<thermalfoundation:material:194>
	],
	
	#nuggetSteel
	<ore:nuggetSteel> : [
		<thermalfoundation:material:224>,
		<immersiveengineering:metal:28>,
		<mekanism:nugget:4>,
		<libvulpes:productnugget:6>
	],
	
	#nuggetTin
	<ore:nuggetTin> : [
		<libvulpes:productnugget:5>,
		<thermalfoundation:material:193>,
		<thaumcraft:nugget:2>,
		<mekanism:nugget:6>
	],
	
	#nuggetTitanium
	<ore:nuggetTitanium> : [
		<libvulpes:productnugget:7>
	],
	
	#nuggetOsmium
	<ore:nuggetOsmium> : [
		<mekanism:nugget:1>
	],
	
	#nuggetUranium
	<ore:nuggetUranium> : [
		<immersiveengineering:metal:25>
	],
	
	#nuggetZinc
	<ore:nuggetZinc> : [
	],
	
	#nuggetCobalt
	<ore:nuggetCobalt> : [
		<tconstruct:nuggets>
	],
	
	# GT Material Nuggets
	<ore:nuggetRefinedObsidian> : [
		<mekanism:nugget>]
};

for oreDictEntry, items in nuggetsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

print("Finished Nugget Removal!");

/////////////////////////////////////////////////

print("Starting Rod Removal!");

var rodsDisabled as IItemStack[][IOreDictEntry] = {
	
	#stickCopper
	<ore:stickCopper> : [
		<libvulpes:productrod:4>
	],
	
	#stickIron
	<ore:stickIron> : [
		<libvulpes:productrod:1>,
		<immersiveengineering:material:1>
	],
	
	#stickAluminum
	<ore:stickAluminum> : [
		<immersiveengineering:material:3>
	],
	
	#stickIridium
	<ore:stickIridium> : [
		<libvulpes:productrod:10>
	],
	
	#stickTitaniumIrdium
	<ore:stickTitaniumIrdium> : [
		<advancedrocketry:productrod:1>
	],
	
	#stickTitaniumAluminide
	<ore:stickTitaniumAluminide> : [
		<advancedrocketry:productrod>
	],
	
	#stickTitanium
	<ore:stickTitanium> : [
		<libvulpes:productrod:7>
	],
	
	#stickSteel
	<ore:stickSteel> : [
		<libvulpes:productrod:6>,
		<immersiveengineering:material:2>
	]
};

for oreDictEntry, items in rodsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}
	
print("Finished Rod Removal!");

///////////////////////////////////////////////////

print("Starting Gear Removal!");

var gearsDisabled as IItemStack[][IOreDictEntry] = {

	#gearAluminum
	<ore:gearAluminum> : [
		<thermalfoundation:material:260>
	],
	
	#gearBronze
	<ore:gearBronze> : [
		<thermalfoundation:material:291>
	],
	
	#gearCopper
	<ore:gearCopper> : [
		<thermalfoundation:material:256>,
	],
	
	#gearCompressedIron
	<ore:gearCompressedIron> : [
		<pneumaticcraft:compressed_iron_gear>
	],
	
	#gearConstantan
	<ore:gearConstantan> : [
		<thermalfoundation:material:292>
	],
	
	#gearDiamond
	<ore:gearDiamond> : [
		<thermalfoundation:material:26>
	],
	
	#gearEmerald
	<ore:gearEmerald> : [
		<thermalfoundation:material:27>
	],
	
	#gearElectrum
	<ore:gearElectrum> : [
		<thermalfoundation:material:289>
	],
	
	#gearEnderium
	<ore:gearEnderium> : [
		<thermalfoundation:material:295>
	],
	
	#gearGold
	<ore:gearGold> : [
		<thermalfoundation:material:25>
	],
	
	#gearInvar
	<ore:gearInvar> : [
		<thermalfoundation:material:290>,
	],
	
	#gearIron
	<ore:gearIron> : [
		<thermalfoundation:material:24>,
	],
	
	#gearIridium
	<ore:gearIridium> : [
		<thermalfoundation:material:263>
	],
	
	#gearLead
	<ore:gearLead> : [
		<thermalfoundation:material:259>
	],
	
	#gearLumium
	<ore:gearLumium> : [
		<thermalfoundation:material:294>
	],
	
	#gearNickel
	<ore:gearNickel> : [
		<thermalfoundation:material:261>
	],
	
	#gearPlatinum
	<ore:gearPlatinum> : [
		<thermalfoundation:material:262>
	],
	
	#gearSilver
	<ore:gearSilver> : [
		<thermalfoundation:material:258>
	],
	
	#gearSteel
	<ore:gearSteel> : [
		<thermalfoundation:material:288>,
		<libvulpes:productgear:6>
	],
	
	#gearTin
	<ore:gearTin> : [
		<thermalfoundation:material:257>,
	],
	
	#gearTitanium
	<ore:gearTitanium> : [
		<libvulpes:productgear:7>
	],
	
	#gearTitaniumAluminide
	<ore:gearTitaniumAluminide> : [
		<advancedrocketry:productgear>
	],
	
	#gearTitaniumIridium
	<ore:gearTitaniumIridium> : [
		<advancedrocketry:productgear:1>
	]
};

for oreDictEntry, items in gearsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}
	

