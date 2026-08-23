// Mixer File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val macerator as RecipeMap = <recipemap:macerator>;

// LV Tier
# Sky Stone Dust
macerator.recipeBuilder()
	.inputs(<appliedenergistics2:sky_stone_block>)
	.outputs(<appliedenergistics2:material:45>)
	.duration(24)
	.EUt(8)
	.buildAndRegister();
# Liveroot Dust
macerator.recipeBuilder()
	.inputs(<twilightforest:liveroot>)
	.outputs(<gtow:liveroot_dust>)
	.duration(12)
	.EUt(8)
	.buildAndRegister();
# Hydrastone Dust
macerator.recipeBuilder()
	.inputs(<gtow:hydrastone>)
	.outputs(<gtow:hydrastone_dust>)
	.duration(12)
	.EUt(8)
	.buildAndRegister();
# Endstone Dust
macerator.recipeBuilder()
	.inputs(<minecraft:end_stone>)
	.outputs(<gregtech:meta_dust:1603>)
	.chancedOutput(<gregtech:meta_dust:24023>, 3000, 200)
	.chancedOutput(<gtow:tungstateshard>, 100, 0)
	.duration(150)
	.EUt(8)
	.buildAndRegister();
# Crushed Nickel Shale
macerator.recipeBuilder()
	.inputs(<gtow:stone_nickelshale>)
	.outputs(<gtow:crushed_nickelshale> * 4)
	.chancedOutput(<gregtech:meta_dust:24023>, 6000, 200)
	.chancedOutput(<gregtech:meta_dust:24023>, 1000, 400)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
# Charged Certus Dust
macerator.recipeBuilder()
	.inputs(<appliedenergistics2:material:1>)
	.outputs(<gtow:dust_chargedcertus>)
	.duration(20)
	.EUt(2)
	.buildAndRegister();
# Holystone Dust
macerator.recipeBuilder()
	.inputs(<aether_legacy:holystone>)
	.outputs(<gregtech:meta_dust:24027>)
	.duration(12)
	.EUt(8)
	.buildAndRegister();