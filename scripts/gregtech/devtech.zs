#loader gregtech
import mods.gregtech.machine.MachineBuilder;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.machine.Renderer;
import mods.gregtech.render.ICubeRenderer;

// Recipes Maps
val boilerRecipes as RecipeMap = RecipeMapBuilder.create("boiler")
    .setInputs(1)
	.setFluidInputs(1)
    .build();
	
// Devtech
MachineBuilder.create(32001, "boilerLV")
    .setRecipeMap(boilerRecipes)
    .setRenderer("generators/boiler/lava")
	.addTier(1)
    .setGenerator()
	.addSteamTier(false)
	.setBoilerValues(false, 560, 30)
    .buildAndRegister();

//Pre-Existing Machines
