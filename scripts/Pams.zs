// Pams
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;

// Val
val hardLeather = <harvestcraft:hardenedleatheritem>;
val leather = <minecraft:leather>;

// Removal
recipes.remove(hardLeather);

// Basic Worktable
 # Hardened Leather
RecipeBuilder.get("basic")
	.setShapeless(
		[leather])
	.addTool(artNeedle, 15)
	.addOutput(hardLeather)
.create();

