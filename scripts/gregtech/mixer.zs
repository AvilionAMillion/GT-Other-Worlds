// Mixer File
// Made by GTOW Team
import mods.gregtech.recipe.RecipeMap;
val mixer as RecipeMap = <recipemap:mixer>;

// LV Mixer
# Colloidal Mica
mixer.recipeBuilder()
	.inputs(<gregtech:meta_dust:386> * 8, <gregtech:meta_dust_tiny:377>)
	.fluidInputs(<liquid:water> * 2000)
	.fluidOutputs(<liquid:colloidalmica> * 144)
	.duration(560)
	.EUt(28)
	.buildAndRegister();
# Saltpeter Doped Rubber
mixer.recipeBuilder()
	.inputs(<gregtech:meta_dust:1068> * 2, <gregtech:meta_dust:313>)
	.outputs(<contenttweaker:dopedrubber> * 2)
	.duration(600)
	.EUt(20)
	.buildAndRegister();
# Refractory Clay
mixer.recipeBuilder()
	.inputs(<gregtech:meta_dust:2023>, <gregtech:meta_dust:2049>, <gregtech:meta_dust:2063> * 8, <gregtech:meta_dust:254> * 8)
	.fluidInputs(<fluid:water> * 1000)
	.outputs(<pyrotech:material:4> * 16)
	.duration(300)
	.EUt(4)
	.buildAndRegister();
# Clay Mud
mixer.recipeBuilder()
	.inputs(<gregtech:meta_dust:2063> * 52)
	.fluidInputs(<liquid:water> * 8000)
	.fluidOutputs(<liquid:claymud> * 1000)
	.duration(720)
	.EUt(16)
	.buildAndRegister();
	
// MV Mixer
# Assembly Line Steel Dust
mixer.recipeBuilder()
	.inputs(<ore:dustSteel> * 4, <ore:dustCopper> * 4, <ore:dustChrome>)
	.outputs(<gregtech:meta_dust:24018> * 9)
	.circuit(1)
	.duration(580)
	.EUt(56)
	.buildAndRegister();