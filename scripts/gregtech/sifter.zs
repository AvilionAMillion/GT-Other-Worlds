// Sifter File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val sifter as RecipeMap = <recipemap:sifter>;

// LV Sifter
# Alkali Metal Salt
sifter.recipeBuilder()
	.inputs(<gtow:alkalisalt>)
	.outputs(<gregtech:meta_dust:101>)
	.chancedOutput(<gregtech:meta_dust:101>, 9000, 200)
	.chancedOutput(<gregtech:meta_dust:83>, 7000, 300)
	.chancedOutput(<gregtech:meta_dust:56>, 2000, 300)
	.duration(660)
	.EUt(24)
	.buildAndRegister();