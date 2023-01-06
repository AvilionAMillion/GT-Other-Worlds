// EBF File
// Made by GTOW Team

import mods.gregtech.recipe.RecipeMap;

// Primitive Blast Furnace
val ebf as RecipeMap = <recipemap:electric_blast_furnace>;

// Val

// Removal
ebf.findRecipe(120, [<metaitem:dustAluminium>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:nitrogen> * 1000]).remove();
ebf.findRecipe(120, [<metaitem:dustAluminium>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Cupronickel Coil
ebf.recipeBuilder()
	.inputs(<gregtech:meta_dust:24013> * 2, <gregtech:meta_dust:24012>* 3)
	.outputs(<gregtech:meta_ingot:2> * 2)
	.EUt(120)
	.property("temperature", 1700)
	.duration(600)
	.buildAndRegister();


