// Packager File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val packer as RecipeMap = <recipemap:packer>;

// LV Tier
# Fluix Cable
packer.recipeBuilder()
	.inputs(<appliedenergistics2:part:140> * 2, <gregtech:meta_dust:24026>)
	.outputs(<appliedenergistics2:part:16> * 2)
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 1k storage cell
packer.recipeBuilder()
	.inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:35>)
	.outputs(<appliedenergistics2:storage_cell_1k>.withTag({}))
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 4k storage cell
packer.recipeBuilder()
	.inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:36>)
	.outputs(<appliedenergistics2:storage_cell_4k>.withTag({}))
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 16k storage cell
packer.recipeBuilder()
	.inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:37>)
	.outputs(<appliedenergistics2:storage_cell_16k>.withTag({}))
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 64k storage cell
packer.recipeBuilder()
	.inputs(<appliedenergistics2:material:39>, <appliedenergistics2:material:38>)
	.outputs(<appliedenergistics2:storage_cell_64k>.withTag({}))
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 1k crafting Unit
packer.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:35>)
	.outputs(<appliedenergistics2:crafting_storage_1k>)
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 4k crafting Unit
packer.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:36>)
	.outputs(<appliedenergistics2:crafting_storage_4k>)
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 16k crafting Unit
packer.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:37>)
	.outputs(<appliedenergistics2:crafting_storage_16k>)
	.EUt(30)
	.duration(120)
	.buildAndRegister();
# 64k crafting Unit
packer.recipeBuilder()
	.inputs(<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:38>)
	.outputs(<appliedenergistics2:crafting_storage_64k>)
	.EUt(30)
	.duration(120)
	.buildAndRegister();

