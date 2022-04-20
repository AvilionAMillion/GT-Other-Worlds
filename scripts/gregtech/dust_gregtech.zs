// GTOW ZS File
// Made by GTOW Team
	import mods.pyrotech.StoneKiln;
	import mods.pyrotech.BrickKiln;
import mods.artisanworktables.builder.RecipeBuilder;

val builder = RecipeBuilder.get("basic");

// Removal
recipes.removeShapeless(<gregtech:meta_dust_small:2063>, [gtMortar, <minecraft:clay_ball>]);
recipes.removeByRecipeName("gregtech:dust_bronze");
recipes.removeByRecipeName("gregtech:potin_dust");

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
# Potin
RecipeBuilder.get("basic")
  .setShapeless([<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>, <ore:dustTin>, <ore:dustLead>])
  .addTool(<ore:artisansMortar>, 12)
  .addOutput(<gregtech:meta_dust:2037> * 6)
  .create();
  
// Fluid Transformation

  
