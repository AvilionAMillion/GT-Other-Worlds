// EnvironmentalTech
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Val
var reinforcedStone = <sonarcore:reinforcedstoneblock>;

// Removal
recipes.remove(reinforcedStone);

// Crafting Table
recipes.addShaped(reinforcedStone,
	[[screwIron, plateIron, screwIron],
	[plateIron, <minecraft:stone>, plateIron],
	[screwIron, plateIron, screwIron]]);