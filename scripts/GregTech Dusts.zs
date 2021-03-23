// GregTech Dusts
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.roots.Mortar;

// Val
val logWood = <ore:logWood>;
val dustWood = <gregtech:meta_item_1:2196>;

// Mortar
	# Wood Pulp
		Mortar.addRecipe(dustWood, [logWood]);
	# Clay Dust
		Mortar.addRecipe(<gregtech:meta_item_1:2105>, [clay]);
	# Sand Dust
		Mortar.addRecipe(<gregtech:meta_item_1:2960>, [sand]);
	# Flint Dust
		Mortar.addRecipe(<gregtech:meta_item_1:2220>, [flint]);