// GTOW ZS File
// Made by GTOW Team
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Removal
recipes.removeShapeless(<gregtech:meta_dust_small:2063>, [gtMortar, <minecraft:clay_ball>]);

// Crafting
recipes.addShapeless(<gregtech:meta_dust:275>, [gtMortar, <pyrotech:slag>]);

// Worktables
# Chad
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]])
  .addTool(<ore:artisansMortar>, 4)
  .addOutput(<gregtech:meta_dust:1618> * 2)
  .create();