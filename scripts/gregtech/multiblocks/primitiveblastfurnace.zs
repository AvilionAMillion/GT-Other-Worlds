// PBF File
// Made by GTOW Team

import mods.gregtech.recipe.RecipeMap;

// Primitive Blast Furnace
val pbf as RecipeMap = <recipemap:primitive_blast_furnace>;

// Val
val pbfIron = <minecraft:iron_ingot>;
val pbfWroughtIron = <gregtech:meta_ingot:335>;
val pbfIronBlock = <minecraft:iron_block>;
val pbfWIronBlock = <gregtech:meta_block_compressed_20:15>;
val pbfSteel = <gregtech:meta_ingot:24007>;
val pbfSteelBlock = <gregtech:meta_block_compressed_20:4>;

// Removal
# This is all the recipes
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:gemCoke>], null).remove();
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCoke>], null).remove();
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCoal> * 2], null).remove();
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <metaitem:dustCharcoal> * 2], null).remove();
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <minecraft:coal:1> * 2], null).remove();
pbf.findRecipe(1, [<minecraft:iron_ingot:0>, <minecraft:coal:0> * 2], null).remove();
pbf.findRecipe(1, [<minecraft:iron_block:0>, <metaitem:blockCoke>], null).remove();
pbf.findRecipe(1, [<minecraft:iron_block:0>, <minecraft:coal_block:0> * 2], null).remove();
pbf.findRecipe(1, [<minecraft:iron_block:0>, <metaitem:blockCharcoal> * 2], null).remove();




// Wrought Iron Addition
pbf.recipeBuilder()
	.inputs(pbfIron, <gregtech:meta_dust:319>)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:254>)
	.duration(1800)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIron, <gregtech:meta_gem:319>)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:254>)
	.duration(1800)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIron, <minecraft:coal> * 2)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:275> * 2)
	.duration(2400)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIron, <gregtech:meta_dust:266> * 2)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:275> * 2)
	.duration(2400)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIron, <minecraft:coal:1> * 2)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:275> * 2)
	.duration(2400)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIron, <gregtech:meta_dust:271> * 2)
	.outputs(pbfWroughtIron, <gregtech:meta_dust_tiny:275> * 2)
	.duration(2400)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIronBlock, <gregtech:meta_block_compressed_19:15>)
	.outputs(pbfWIronBlock, <gregtech:meta_dust:254>)
	.duration(8100)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIronBlock, <gregtech:meta_block_compressed_16:10> * 2)
	.outputs(pbfWIronBlock, <gregtech:meta_dust:275> * 2)
	.duration(10800)
	.buildAndRegister();
pbf.recipeBuilder()
	.inputs(pbfIronBlock, <minecraft:coal_block> * 2)
	.outputs(pbfWIronBlock, <gregtech:meta_dust:275> * 2)
	.duration(10800)
	.buildAndRegister();