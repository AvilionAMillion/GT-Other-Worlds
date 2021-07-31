// GregTech Dusts
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Val
val wroughtIron = <ore:ingotWroughtIron>;
val nuggetWrought = <ore:nuggetWroughtIron>;

// Furnace
	# Wrought Iron
		furnace.remove(<gtadditions:ga_meta_item:32037>);
		furnace.remove(nuggetWrought);
		
// Crafting
	# Wrought Iron
		recipes.remove(wroughtIron);
		
