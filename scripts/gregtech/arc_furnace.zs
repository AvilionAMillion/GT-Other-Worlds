// Arc Furnace File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val arc_furnace as RecipeMap = <recipemap:arc_furnace>;

// LV Tier
# Alumina
arc_furnace.recipeBuilder()
	.inputs(<gregtech:meta_dust:314>)
	.fluidInputs(<fluid:oxygen> * 300)
	.outputs(<gregtech:meta_dust:24013>)
	.EUt(30)
	.duration(1000)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<gregtech:meta_dust:281>)
	.fluidInputs(<fluid:oxygen> * 300)
	.outputs(<gregtech:meta_dust:24013>)
	.EUt(30)
	.duration(1000)
	.buildAndRegister();
# Ferric Metal Sludge
arc_furnace.recipeBuilder()
	.inputs(<gtow:sludge_iron>)
	.fluidInputs(<fluid:oxygen> * 3)
	.chancedOutput(<gregtech:meta_dust_small:51>, 5000, 1500)
	.EUt(30)
	.duration(10)
	.buildAndRegister();
# Valkyrie Metal Recycling
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_pickaxe>)
	.fluidInputs(<fluid:oxygen> * 15)
	.outputs(<gregtech:meta_ingot:24025> * 3, <minecraft:gold_ingot>)
	.EUt(30)
	.duration(500)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_axe>)
	.fluidInputs(<fluid:oxygen> * 15)
	.outputs(<gregtech:meta_ingot:24025> * 3, <minecraft:gold_ingot>)
	.EUt(30)
	.duration(500)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_shovel>)
	.fluidInputs(<fluid:oxygen> * 5)
	.outputs(<gregtech:meta_ingot:24025> * 1, <minecraft:gold_ingot>)
	.EUt(30)
	.duration(180)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_lance>)
	.fluidInputs(<fluid:oxygen> * 10)
	.outputs(<gregtech:meta_ingot:24025> * 2, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(350)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_gloves>)
	.fluidInputs(<fluid:oxygen> * 20)
	.outputs(<gregtech:meta_ingot:24025> * 4, <minecraft:gold_ingot>)
	.EUt(30)
	.duration(600)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_cape>)
	.fluidInputs(<fluid:oxygen> * 25)
	.outputs(<gregtech:meta_ingot:24025> * 5, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(750)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_helmet>)
	.fluidInputs(<fluid:oxygen> * 25)
	.outputs(<gregtech:meta_ingot:24025> * 5, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(750)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_chestplate>)
	.fluidInputs(<fluid:oxygen> * 40)
	.outputs(<gregtech:meta_ingot:24025> * 8, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(1100)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_leggings>)
	.fluidInputs(<fluid:oxygen> * 35)
	.outputs(<gregtech:meta_ingot:24025> * 7, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(900)
	.buildAndRegister();
arc_furnace.recipeBuilder()
	.inputs(<aether_legacy:valkyrie_boots>)
	.fluidInputs(<fluid:oxygen> * 20)
	.outputs(<gregtech:meta_ingot:24025> * 4, <minecraft:gold_nugget> * 4)
	.EUt(30)
	.duration(600)
	.buildAndRegister();