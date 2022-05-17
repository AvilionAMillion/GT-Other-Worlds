# priority 110

// This is for more general OreDict unification
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Casting;

 # Immersive Engineering Wire Replacement
#<ore:wireCopper>.add(<gregtech:cable:18>);
#mods.jei.JEI.removeAndHide(<immersiveengineering:material:20>);
#<ore:wireCopper>.remove(<immersiveengineering:material:20>);
#recipes.replaceAllOccurences(<immersiveengineering:material:22>, <gregtech:cable:1>);
#mods.jei.JEI.removeAndHide(<immersiveengineering:material:22>);
#recipes.replaceAllOccurences(<immersiveengineering:material:23>, <gregtech:cable:184>);
#mods.jei.JEI.removeAndHide(<immersiveengineering:material:23>);

 # Rubber Changes
recipes.replaceAllOccurences(<industrialforegoing:plastic>, <gregtech:meta_plate:1012>);

// Disabled Circuits
 # Circuit Replace
recipes.replaceAllOccurences(<immersiveengineering:material:27>, <ore:circuitBasic>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:27>);
recipes.replaceAllOccurences(<immersiveengineering:material:26>, <gregtech:meta_item_1:516>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:26>);


#print("Start Circuit Removal");
// This neutralizes the circuits and stops them in oredict
#var circuitsDisabled as IItemStack[][IOreDictEntry] = {	
	#circuitBasic
	#<ore:circuitBasic> : [
	#	<gregtech:meta_item_2:32507>,
	#	<mekanism:controlcircuit>
	#],	
	#circuitGood
	#<ore:circuitGood> : [
	#	<gregtech:meta_item_2:32489>,
	#	<gregtech:meta_item_2:32490>
	#],	
	#circuitAdvanced
	#<ore:circuitAdvanced> : [
	#	<mekanism:controlcircuit:1>
	#],	
	#circuitElite
	#<ore:circuitElite> : [
	#	<mekanism:controlcircuit:2>,
	#	<gregtech:meta_item_2:32495>,
	#	<gregtech:meta_item_2:32496>
	#],	
	#circuitUltimate
	#<ore:circuitUltimate> : [
	#	<mekanism:controlcircuit:3>
	#]
#};
#for oreDictEntry, items in circuitsDisabled {
#	oreDictEntry.removeItems(items);
#}
	
 # String to Twine Changes
<ore:string>.add(<pyrotech:material:14>);

 # Food Changes
//// Dough
var gtfoDough = <gregtechfoodoption:gtfo_meta_item:50>;
var dustWheat = <gregtech:meta_dust:1615>;
recipes.replaceAllOccurences(<harvestcraft:doughitem>, <gregtechfoodoption:gtfo_meta_item:50>);
mods.jei.JEI.removeAndHide(<harvestcraft:doughitem>);
<ore:impureSalt>.add(<mekanism:salt>);
<ore:impureSalt>.add(<gregtech:meta_dust_tiny:312>);
	recipes.remove(gtfoDough);
	recipes.addShapeless(gtfoDough * 2,
		[dustWheat, dustWheat, dustWheat, dustWheat, <ore:impureSalt>, <fluid:water>*1000]);
	recipes.addShapeless(gtfoDough * 4,
		[dustWheat, dustWheat, dustWheat, dustWheat, <ore:impureSalt>, <gregtech:meta_dust_tiny:353>, <fluid:water>*1000]);
// Rest of dough recipes for the mixer continued in mixer file

//// Salt Changes
<mekanism:salt>.displayName = "River Salt";
<ore:itemSalt>.addAll(<ore:dustSalt>);
<ore:itemSalt>.remove(<harvestcraft:saltitem>);
<ore:dustSalt>.removeItems([<mekanism:salt>,<harvestcraft:saltitem>]);
mods.jei.JEI.removeAndHide(<harvestcraft:saltitem>);

//// Food Oredicts
// Foods won't be removed, just oredicted
<ore:cropTomato>.add(<gregtechfoodoption:gtfo_meta_item:76>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:76>, <ore:cropTomato>);
<ore:cropOnion>.add(<gregtechfoodoption:gtfo_meta_item:77>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:77>, <ore:cropOnion>);
<ore:cropCucumber>.add(<gregtechfoodoption:gtfo_meta_item:78>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:78>, <ore:cropCucumber>);
<ore:cropOlive>.add(<gregtechfoodoption:gtfo_meta_item:73>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:73>, <ore:cropOlive>);
<ore:cropLime>.add(<gregtechfoodoption:gtfo_meta_item:18>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:18>, <ore:cropOlive>);
<ore:cropLemon>.add(<gregtechfoodoption:gtfo_meta_item:17>);
recipes.replaceAllOccurences(<gregtechfoodoption:gtfo_meta_item:17>, <ore:cropLemon>);

// Remove Aluminium Smelting
mods.tconstruct.Casting.removeTableRecipe(<gregtech:meta_nugget:2>);
mods.tconstruct.Casting.removeTableRecipe(<gregtech:meta_plate:2>);
mods.tconstruct.Casting.removeTableRecipe(<gregtech:meta_gear:2>);

// GregTech Stone Ingot Changes
<ore:ingotStone>.add(<pyrotech:material:16>);
mods.jei.JEI.removeAndHide(<gregtech:meta_ingot:1599>);
<ore:stickStone>.add(<tconstruct:tool_rod>.withTag({Material: "stone"}));
<ore:stickStone>.remove(<pyrotech:material:27>);
mods.jei.JEI.removeAndHide(<pyrotech:material:27>);
recipes.replaceAllOccurences(<pyrotech:material:27>, <ore:stickStone>);
<ore:plateStone>.add(<tconstruct:large_plate>.withTag({Material: "stone"}));

// Refractory Brick Pyrotech -> Foundry
recipes.replaceAllOccurences(<foundry:component:2>, <pyrotech:material:5>);
recipes.replaceAllOccurences(<foundry:component:1>, <pyrotech:material:4>);

// Ash Unification
<ore:dustAsh>.add(<pyrotech:material>);
recipes.addShapeless(<gregtech:meta_dust:254>, [<pyrotech:material>]);

// Furnace Changes
recipes.replaceAllOccurences(<minecraft:furnace>, <ore:craftingFurnace>);
<ore:craftingFurnace>.add(<pyrotech:stone_kiln>);
