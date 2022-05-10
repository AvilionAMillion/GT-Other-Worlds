// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("carpenter");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:1>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:1>);
mods.jei.JEI.hideCategory("artisanworktables_carpenter_worktable");
mods.jei.JEI.hideCategory("artisanworktables_carpenter_workstation");

// Mason Worktable
# Planks
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:1>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks:1> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:2>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks:2> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log:3>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks:3> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log2>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks:4> * 2)
  .create();
RecipeBuilder.get("carpenter")
  .setShapeless([<minecraft:log2:1>])
  .addTool(<ore:artisansHandsaw>, 1)
  .addOutput(<minecraft:planks:5> * 2)
  .create();
  
# Chest
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
  .addTool(<ore:artisansHandsaw>, 2)
  .addOutput(<minecraft:chest>)
  .create();