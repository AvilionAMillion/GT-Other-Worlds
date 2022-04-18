// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Worktables
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