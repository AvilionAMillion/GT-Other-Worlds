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
	