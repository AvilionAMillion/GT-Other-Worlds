// GTOW ZS File
// Made by GTOW Team
	import mods.pyrotech.StoneKiln;
	import mods.pyrotech.BrickKiln;
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Removal
recipes.removeShapeless(<gregtech:meta_dust_small:2063>, [gtMortar, <minecraft:clay_ball>]);

// Crafting
recipes.addShapeless(<gregtech:meta_dust:275>, [gtMortar, <pyrotech:slag>]);

// Furnace
# Quicklime
furnace.addRecipe(<gregtech:meta_dust:360>, <gregtech:meta_dust:262>);

// Worktables
# Chad
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>]])
  .addTool(<ore:artisansMortar>, 4)
  .addOutput(<gregtech:meta_dust:1618> * 2)
  .create();
  
// Fluid Transformation

  
