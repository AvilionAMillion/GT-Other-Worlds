// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;
import mods.gregtech.recipe.RecipeMap;
val assembler as RecipeMap = <recipemap:assembler>;

val cobbSlab = <minecraft:stone_slab:3>;
val rotorIron = <gregtech:meta_rotor:51>;
val woodWall = <gregtech:steam_casing:5>;
val bronzeCasing = <gregtech:metal_casing>;
val gearGold = <gregtech:meta_gear:41>;
val builder = RecipeBuilder.get("basic");

// Coke Oven
# Coke Oven Controller
recipes.remove(<gregtech:machine:1017>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:metal_casing:8>, <tconstruct:seared:3>, <gregtech:metal_casing:8>],
    [<tconstruct:seared:3>, <pyrotech:stone_kiln>, <tconstruct:seared:3>],
    [<gregtech:metal_casing:8>, <tconstruct:seared:3>, <gregtech:metal_casing:8>]])
  .addTool(<ore:artisansHammer>, 40)
  .addTool(<ore:artisansFramingHammer>, 40)
  .addOutput(<gregtech:machine:1017>)
  .create();
  
// Primitive Water Pump
recipes.remove(<gregtech:steam_casing:4>);
recipes.remove(<gregtech:machine:1648>);
recipes.remove(<gregtech:machine:1649>);
recipes.addShaped(<gregtech:steam_casing:4>,
	[[screwIron, treatedWood, screwIron],
	[gtScrewdriver, cobbSlab, gtFile]]);
recipes.addShaped(<gregtech:machine:1649>,
	[[screwIron, rotorIron, gtScrewdriver],
	[treatedWood, <gregtech:fluid_pipe_large:1617>, treatedWood],
	[gtWrench, cobbSlab, cobbSlab]]);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_screw:51>, <ore:craftingToolScrewdriver>, <gregtech:fluid_pipe_normal:1648>, <ore:craftingToolSaw>, <gregtech:meta_screw:51>],
    [<gregtech:meta_ring:51>, <gregtech:meta_rotor:51>, <gregtech:fluid_pipe_normal:1648>, <gregtech:meta_rotor:51>, <gregtech:meta_ring:51>],
    [<ore:craftingToolFile>, <gregtech:fluid_pipe_large:1648>, <gregtech:fluid_pipe_normal:1648>, <gregtech:fluid_pipe_large:1648>, <ore:craftingToolWrench>],
    [<gregtech:meta_ring:51>, <gregtech:steam_casing:4>, <gregtech:steam_casing:4>, <gregtech:steam_casing:4>, <gregtech:meta_ring:51>],
    [<gregtech:fluid_pipe_small:1648>, <gregtech:fluid_pipe_small:1648>, <gregtech:fluid_pipe_small:1648>, <gregtech:fluid_pipe_small:1648>, <gregtech:fluid_pipe_small:1648>]])
  .addOutput(<gregtech:machine:1648>)
  .create();
  
// Wooden Multiblock Tank
recipes.remove(woodWall);
recipes.remove(<gregtech:machine:1596>);
recipes.remove(<gregtech:machine:1597>);
recipes.addShaped(woodWall * 2,
	[[platePotin, plateIron, platePotin],
	[gtSaw, <gregtech:machine:1610>, gtHammer],
	[platePotin, plateIron, platePotin]]);
recipes.addShaped(<gregtech:machine:1596>,
	[[null, ringIron, null],
	[<gregtech:fluid_pipe_normal:2037>, woodWall, <gregtech:fluid_pipe_normal:2037>],
	[gtSoftHammer, rotorIron, gtSaw]]);
recipes.addShaped(<gregtech:machine:1597>,
	[[screwIron, gtScrewdriver, screwIron],
	[ringIron, woodWall, ringIron],
	[gtSoftHammer, <gregtech:fluid_pipe_large:2037>, gtSaw]]);
	
// Primitive Blast Furnace
# Firebrick
recipes.remove(<gregtech:metal_casing:1>);
recipes.remove(<gregtech:machine:1000>);
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:meta_item_1:352>, <ore:plateIron>, <gregtech:meta_item_1:352>],
    [<gregtech:meta_item_1:352>, <minecraft:brick_block>, <gregtech:meta_item_1:352>],
    [<gregtech:meta_item_1:352>, <ore:plateIron>, <gregtech:meta_item_1:352>]])
  .setFluid(<liquid:concrete> * 500)
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansChisel>, 50)
  .addOutput(<gregtech:metal_casing:1>)
  .create();
# Controller
RecipeBuilder.get("basic")
  .setShaped([
    [<gregtech:metal_casing:1>, <gregtech:meta_plate_double:335>, <gregtech:meta_plate_double:335>, <gregtech:meta_plate_double:335>, <gregtech:metal_casing:1>],
    [<gregtech:meta_stick:335>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <gregtech:meta_stick:335>],
    [<gregtech:meta_stick:335>, <pyrotech:refractory_brick_block>, <pyrotech:brick_kiln>, <pyrotech:refractory_brick_block>, <gregtech:meta_stick:335>],
    [<gregtech:meta_stick:335>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <gregtech:meta_stick:335>],
    [<gregtech:metal_casing:1>, gtHammer, <contenttweaker:wroughtironheater>, gtScrewdriver, <gregtech:metal_casing:1>]])
  .setFluid(<liquid:concrete> * 2000)
  .addTool(<ore:artisansFramingHammer>, 200)
  .addTool(<ore:artisansTSquare>, 200)
  .addTool(<ore:artisansChisel>, 200)
  .addOutput(<gregtech:machine:1000>)
  .create();
  
// Steel Multiblock Tank
recipes.remove(<gregtech:machine:1599>);
recipes.remove(<gregtech:machine:1598>);
# Controller
recipes.addShaped(<gregtech:machine:1599>,
	[[screwSteel, gtScrewdriver, screwSteel],
	[ringSteel, <gregtech:metal_casing:4>, ringSteel],
	[gtHammer, <gregtech:fluid_pipe_large:324>, gtSaw]]);
# Valve
recipes.addShaped(<gregtech:machine:1598>, 
	[[null, ringSteel, null],
	[<gregtech:fluid_pipe_small:324>, <gregtech:metal_casing:4>, <gregtech:fluid_pipe_small:324>],
	[gtHammer, <gregtech:meta_rotor:324>, gtSaw]]);
	
// Steam Multiblocks
recipes.remove(<gregtech:machine:1024>);
recipes.remove(<gregtech:machine:1025>);
# Steam Oven
recipes.addShaped(<gregtech:machine:1024>,
	[[bronzeCasing, gearGold, bronzeCasing],
	[<gregtech:boiler_firebox_casing>, <gregtech:machine:2>, <gregtech:boiler_firebox_casing>],
	[bronzeCasing, gearGold, bronzeCasing]]);
# Steam Macerator
recipes.addShaped(<gregtech:machine:1025>,
	[[bronzeCasing, gearGold, bronzeCasing],
	[bronzeCasing, <gregtech:machine:10>, bronzeCasing],
	[bronzeCasing, gearGold, bronzeCasing]]);
	
# Electric Blast Furnace
recipes.remove(<gregtech:machine:1001>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_screw:287>, <gregtech:meta_plate:287>, <gregtech:meta_plate_double:287>, <gregtech:meta_plate:287>, <gregtech:meta_screw:287>],
    [<gregtech:meta_plate:287>, <gregtech:cable_single:112>, <ore:craftingFurnace>, <gregtech:cable_single:112>, <gregtech:meta_plate:287>],
    [<gregtech:meta_plate_double:287>, <ore:craftingFurnace>, <gregtech:meta_block_frame_17:15>, <ore:craftingFurnace>, <gregtech:meta_plate_double:287>],
    [<gregtech:meta_plate:287>, <gregtech:cable_single:112>, <contenttweaker:controllv>, <gregtech:cable_single:112>, <gregtech:meta_plate:287>],
    [<gregtech:meta_screw:287>, <gregtech:meta_plate:287>, <gregtech:meta_plate_double:287>, <gregtech:meta_plate:287>, <gregtech:meta_screw:287>]])
  .addTool(<ore:artisansHammer>, 200)
  .addTool(<ore:artisansSolderer>, 250)
  .addOutput(<gregtech:machine:1001>)
  .create();
  
# Industrial Steam Engine
recipes.remove(<gregtech:machine:2027>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_screw:259>, <gregtech:meta_plate:259>, <gregtech:meta_plate_double:259>, <gregtech:meta_plate:259>, <gregtech:meta_screw:259>],
    [<gregtech:meta_plate:259>, <gregtech:meta_gear:260>, <gregtech:fluid_pipe_large:2037>, <gregtech:meta_gear:260>, <gregtech:meta_plate:259>],
    [<gregtech:meta_plate_double:259>, <gregtech:fluid_pipe_large:2037>, <gregtech:meta_block_frame_16:3>, <gregtech:fluid_pipe_large:2037>, <gregtech:meta_plate_double:259>],
    [<gregtech:meta_plate:259>, <gregtech:meta_gear:324>, <contenttweaker:controllv>, <gregtech:meta_gear:324>, <gregtech:meta_plate:259>],
    [<gregtech:meta_screw:259>, <gregtech:meta_plate:259>, <gregtech:meta_plate_double:259>, <gregtech:meta_plate:259>, <gregtech:meta_screw:259>]])
  .addTool(<ore:artisansHammer>, 200)
  .addTool(<ore:artisansSolderer>, 250)
  .addOutput(<gregtech:machine:2027>)
  .create();
  
# Large Bronze Boiler
recipes.remove(<gregtech:machine:1013>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<gregtech:meta_screw:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate_double:260>, <gregtech:meta_plate:260>, <gregtech:meta_screw:260>],
    [<gregtech:meta_plate:260>, <gregtech:cable_single:112>, <gregtech:meta_item_1:97>, <gregtech:cable_single:112>, <gregtech:meta_plate:260>],
    [<gregtech:meta_plate_double:260>, <gregtech:meta_item_1:97>, <gregtech:boiler_firebox_casing>, <gregtech:meta_item_1:97>, <gregtech:meta_plate_double:260>],
    [<gregtech:meta_plate:260>, <gregtech:cable_single:112>, <contenttweaker:controllv>, <gregtech:cable_single:112>, <gregtech:meta_plate:260>],
    [<gregtech:meta_screw:260>, <gregtech:meta_plate:260>, <gregtech:meta_plate_double:260>, <gregtech:meta_plate:260>, <gregtech:meta_screw:260>]])
  .addTool(<ore:artisansHammer>, 200)
  .addTool(<ore:artisansSolderer>, 250)
  .addOutput(<gregtech:machine:1013>)
  .create();
  
// Assembler
# Pyrolyse Oven
recipes.remove(<gregtech:machine:1004>);
assembler.recipeBuilder()
	.inputs(<gtow:controlmv>, pistonMV * 2, pumpMV * 2, <gregtech:wire_quadruple:274> * 4, <gregtech:meta_item_1:98> * 4, hullMV)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.outputs(<gregtech:machine:1004>)
	.EUt(64)
	.duration(600)
	.buildAndRegister();
# Fluid Drilling Rig
assembler.recipeBuilder()
	.inputs(<gtow:controlmv>, hullMV, motorMV * 4, pumpMV * 4, <gregtech:meta_block_frame_20:4> * 4, <gregtech:meta_gear:2036> * 4)
	.fluidInputs(<fluid:soldering_alloy> * 288)
	.circuit(2)
	.outputs(<gregtech:machine:1032>)
	.EUt(120)
	.duration(400)
	.buildAndRegister();