// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val cobbSlab = <minecraft:stone_slab:3>;
val rotorIron = <gregtech:meta_rotor:51>;
val woodWall = <gregtech:steam_casing:5>;
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
	