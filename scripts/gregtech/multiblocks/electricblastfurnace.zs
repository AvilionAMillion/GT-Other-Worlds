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
	.inputs(<gregtech:meta_dust:24013> * 5, <gregtech:meta_dust:24012>* 10)
	.outputs(<gregtech:meta_ingot:2> * 3)
	.EUt(120)
	.property("temperature", 1700)
	.duration(600)
	.buildAndRegister();
ebf.recipeBuilder()
	.inputs(<twilightforest:armor_shard_cluster>)
	.outputs(<gregtech:meta_ingot:24014>)
	.EUt(120)
	.circuit(1)
	.property("temperature", 1500)
	.duration(150)
	.buildAndRegister();
ebf.recipeBuilder()
	.inputs(<twilightforest:armor_shard_cluster>, <gregtech:meta_dust:255> * 3)
	.outputs(<gregtech:meta_nugget:24014> * 16)
	.fluidOutputs(<fluid:carbon_monoxide> * 4000)
	.EUt(80)
	.circuit(11)
	.property("temperature", 1200)
	.duration(100)
	.buildAndRegister();
# Alumina
ebf.recipeBuilder()
	.inputs(<gregtech:meta_dust:24017> * 8)
	.outputs(<gregtech:meta_dust:24013> * 5)
	.EUt(60)
	.circuit(1)
	.property("temperature", 800)
	.duration(30)
	.buildAndRegister();
	
// Kanthal Coil
# Stainless Steel
ebf.recipeBuilder()
	.inputs(<gregtech:meta_dust:323>)
	.outputs(<gregtech:meta_ingot:323>)
	.EUt(480)
	.circuit(1)
	.property("temperature", 2100)
	.duration(55 * 20)
	.buildAndRegister();
ebf.recipeBuilder()
	.inputs(<gregtech:meta_dust:323>)
	.fluidInputs(<fluid:nitrogen> * 1000)
	.outputs(<gregtech:meta_ingot:323>)
	.EUt(480)
	.circuit(2)
	.property("temperature", 2100)
	.duration(36.85 * 20)
	.buildAndRegister();

