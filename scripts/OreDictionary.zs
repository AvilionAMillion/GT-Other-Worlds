# priority 95

// This is for more general OreDict unification
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

 # Immersive Engineering Wire Replacement
<ore:wireCopper>.add(<gregtech:cable:18>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:20>);
<ore:wireCopper>.remove(<immersiveengineering:material:20>);
recipes.replaceAllOccurences(<immersiveengineering:material:22>, <gregtech:cable:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:22>);
recipes.replaceAllOccurences(<immersiveengineering:material:23>, <gregtech:cable:184>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:23>);

 # Rubber Changes
recipes.replaceAllOccurences(<industrialforegoing:plastic>, <gregtech:meta_item_1:12141>);

// Disabled Circuits
 # Circuit Replace
recipes.replaceAllOccurences(<immersiveengineering:material:27>, <ore:circuitBasic>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:27>);
recipes.replaceAllOccurences(<immersiveengineering:material:26>, <gregtech:meta_item_2:32450>);
mods.jei.JEI.removeAndHide(<immersiveengineering:material:26>);


print("Start Circuit Removal");
// This neutralizes the circuits and stops them in oredict
var circuitsDisabled as IItemStack[][IOreDictEntry] = {
	
	#circuitBasic
	<ore:circuitBasic> : [
		<gregtech:meta_item_2:32507>,
		<mekanism:controlcircuit>
	],
	
	#circuitGood
	<ore:circuitGood> : [
		<gregtech:meta_item_2:32489>,
		<gregtech:meta_item_2:32490>
	],
	
	#circuitAdvanced
	<ore:circuitAdvanced> : [
		<mekanism:controlcircuit:1>
	],
	
	#circuitElite
	<ore:circuitElite> : [
		<mekanism:controlcircuit:2>,
		<gregtech:meta_item_2:32495>,
		<gregtech:meta_item_2:32496>
	],
	
	#circuitUltimate
	<ore:circuitUltimate> : [
		<mekanism:controlcircuit:3>
	]
};

for oreDictEntry, items in circuitsDisabled {
	oreDictEntry.removeItems(items);
}
	
