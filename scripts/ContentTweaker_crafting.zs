// GTOW ZS File
// Made by GTOW Team
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("basic");

// Val
val dustGlass = <gregtech:meta_dust:2000>;

// Crafting
 # Glassy Sand
recipes.addShapeless(<contenttweaker:glassy_sand>,
	[dustGlass, dustGlass, sand, sand]);
	
// Worktable
 # Unfired Seared Brick
RecipeBuilder.get("basic")
  .setShapeless([<gregtech:meta_item_1:348>, <tconstruct:soil>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<contenttweaker:unfired_searedbrick>)
  .create();
RecipeBuilder.get("basic")
  .setShaped([
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>],
    [<tconstruct:soil>, <gregtech:meta_item_1:348>, <tconstruct:soil>],
    [<tconstruct:soil>, <tconstruct:soil>, <tconstruct:soil>]])
  .addTool(<ore:artisansHammer>, 8)
  .addOutput(<contenttweaker:unfired_searedbrick> * 8)
  .create();