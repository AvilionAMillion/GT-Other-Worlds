// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Worktables
# Chad
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]])
  .addTool(<ore:artisansMortar>, 4)
  .addOutput(<gregtech:meta_dust:1618> * 2)
  .create();