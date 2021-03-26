// GregTech Dusts
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

var bloomery = "bloomery";

function createRecipeName(bloomery as string, recipeName as string) as string {
	return bloomery + "_" + recipeName;
}

// Wrought Iron
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(bloomery, "coalWroughtIron"), bloomery, 12000)
	.addItemInput(<minecraft:iron_ingot>)
	.addItemInput(<minecraft:coal:1> * 2)
	.addItemOutput(<gregtech:meta_item_1:10197>)
	.addItemOutput(<gregtech:meta_item_1:110> * 3)
	.build();
	
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(bloomery, "charcoalWroughtIron"), bloomery, 8000)
	.addItemInput(<minecraft:iron_ingot>)
	.addItemInput(<minecraft:coal> * 2)
	.addItemOutput(<gregtech:meta_item_1:10197>)
	.addItemOutput(<gregtech:meta_item_1:110> * 2)
	.build();
	
mods.modularmachinery.RecipeBuilder.newBuilder(createRecipeName(bloomery, "coalcokeWroughtIron"), bloomery, 6000)
	.addItemInput(<minecraft:iron_ingot>)
	.addItemInput(<gregtech:meta_item_1:8357>)
	.addItemOutput(<gregtech:meta_item_1:10197>)
	.addItemOutput(<gregtech:meta_item_1:110> * 2)
	.build();