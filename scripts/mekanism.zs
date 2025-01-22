// Mekanism Zenscript
// Made by GTOW Dev Team

// Import
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI.removeAndHide as rh;
import mods.mekanism.infuser;
import mods.mekanism.reaction;
import mods.mekanism.chemical.injection;

// Removal
recipes.remove(<mekanism:basicblock:9>);
recipes.remove(<mekanism:basicblock:11>);
recipes.remove(<mekanism:basicblock:10>);
recipes.remove(<mekanism:machineblock:8>);
recipes.remove(<mekanism:machineblock2:4>);
recipes.remove(<mekanism:basicblock2>);
recipes.remove(<mekanism:basicblock:15>);
recipes.remove(<mekanism:basicblock:14>);
recipes.remove(<mekanism:gastank>);
recipes.remove(<mekanism:machineblock2:10>);
recipes.remove(<mekanism:machineblock2:3>);
recipes.removeByRecipeName("mekanism:machineblock_5");
recipes.removeByRecipeName("mekanism:machineblock_5_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_5_alt_alt_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6");
recipes.removeByRecipeName("mekanism:machineblock_6_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_6_alt_alt_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7");
recipes.removeByRecipeName("mekanism:machineblock_7_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt_alt_alt_alt_alt");
recipes.removeByRecipeName("mekanism:machineblock_7_alt_alt_alt_alt_alt_alt_alt_alt");
mods.mekanism.infuser.removeAllRecipes();
mods.mekanism.reaction.removeAllRecipes();
mods.mekanism.chemical.injection.removeAllRecipes();

// Crafting
# Dynamic Tank
recipes.addShaped(<mekanism:basicblock:9> * 2, [
	[screwSteel, plateSteel, screwSteel],
	[plateSteel, <gregtech:meta_block_frame_3:3>, plateSteel],
	[screwSteel, plateSteel, screwSteel]]);
# Dynamic Valve
recipes.addShaped(<mekanism:basicblock:11> * 2, [
	[screwSteel, gtWrench, screwSteel],
	[plateSteel, <gregtech:meta_block_frame_3:3>, plateSteel],
	[screwSteel, pumpLV, screwSteel]]);
# Metallurgic Infuser
recipes.addShaped(<mekanism:machineblock:8>, [
	[<contenttweaker:lubricatedfoil>, circuitLV, plateSteel2],
	[<gregtech:wire_octal:25>, hullLV, plateSteel2],
	[<contenttweaker:lubricatedfoil>, circuitLV, plateSteel2]]);
# Electrolyzer
recipes.addShaped(<mekanism:machineblock2:4>, [
	[plateSteel, <mekanism:enrichedalloy>, plateSteel],
	[<mekanism:gastank>, <gregtech:machine:275>, <mekanism:gastank>],
	[plateSteel, <mekanism:enrichedalloy>, plateSteel]]);
# Basic Gas Tank
recipes.addShaped(<mekanism:gastank>, [
	[plateSteel, <gregtech:fluid_pipe_normal:260>, plateSteel],
	[plateSteel, gtWrench, plateSteel],
	[plateSteel, plateSteel, plateSteel]]);
# Thermal Evaporation Block
recipes.addShaped(<mekanism:basicblock2:0> * 3, [
	[plateBronze, gtHammer, plateBronze],
	[plateBronze, <ore:frameGtSteel>, plateBronze],
	[plateBronze, gtWrench, plateBronze]]);
# Thermal Evaporation Valve
recipes.addShaped(<mekanism:basicblock:15>, [
	[null, <ore:rotorSteel>, null],
	[<gregtech:fluid_pipe_normal:324>, <mekanism:basicblock2>, <gregtech:fluid_pipe_normal:324>],
	[gtHammer, pumpLV, gtSaw]]);
# Pressurized Reaction Chamber
recipes.addShaped(<mekanism:machineblock2:10>, [
	[plateSteel, <mekanism:enrichedalloy>, plateSteel],
	[circuitLV, <gregtech:machine:125>, circuitLV],
	[<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:gastank>]]);
# Chemical Injection Chamber
recipes.addShaped(<mekanism:machineblock2:3>, [
	[plateSteel, <mekanism:reinforcedalloy>, plateSteel],
	[cable1xTin, <gregtech:machine:215>, cable1xTin],
	[plateSteel, <mekanism:gastank>, plateSteel]]);
	
// Metallurgic Infuser
mods.mekanism.infuser.addRecipe("REDSTONE", 20, <minecraft:iron_ingot>, <mekanism:enrichedalloy>);
mods.mekanism.infuser.addRecipe("DIAMOND", 20, <mekanism:enrichedalloy>, <mekanism:reinforcedalloy>);


# Thermal Evaporation Controller
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_screw:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate:260>, <gregtech:meta_screw:260>],
    [<gregtech:meta_plate:260>, <gregtech:fluid_pipe_normal:324>, <minecraft:glass>, <gregtech:fluid_pipe_normal:324>, <gregtech:meta_plate:260>],
    [<gregtech:meta_plate:260>, <minecraft:glass>, <minecraft:glass>, <minecraft:glass>, <gregtech:meta_plate:260>],
    [<gregtech:meta_plate:260>, <gregtech:fluid_pipe_normal:324>, <contenttweaker:controllv>, <gregtech:fluid_pipe_normal:324>, <gregtech:meta_plate:260>],
    [<gregtech:meta_screw:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate:260>, <gregtech:meta_screw:260>]])
  .addTool(<ore:artisansHammer>, 100)
  .addTool(<ore:artisansSolderer>, 100)
  .addOutput(<mekanism:basicblock:14>)
  .create();