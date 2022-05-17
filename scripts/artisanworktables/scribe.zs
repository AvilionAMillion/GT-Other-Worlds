// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("scribe");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:8>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:8>);
mods.jei.JEI.hideCategory("artisanworktables_scribe_worktable");
mods.jei.JEI.hideCategory("artisanworktables_scribe_workstation");

# Book
RecipeBuilder.get("scribe")
  .setShaped([
    [<minecraft:leather>, <minecraft:paper>],
    [<minecraft:leather>, <minecraft:paper>]])
  .addTool(<ore:artisansQuill>, 4)
  .addOutput(<minecraft:book>)
  .create();
# Paper
RecipeBuilder.get("scribe")
  .setShapeless([<gregtech:meta_dust:1618>, <gregtech:meta_dust:1618>, <gregtech:meta_dust:1618>, <gregtech:meta_dust:1618>, <ore:craftingToolRollingPin>])
  .addOutput(<minecraft:paper>)
  .create();
# Pattern
RecipeBuilder.get("scribe")
  .setShapeless([<minecraft:paper>])
  .addTool(<ore:artisansNeedle>, 1)
  .addOutput(<tconstruct:pattern>)
  .create();
# Bookshelf
RecipeBuilder.get("scribe")
  .setShaped([
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
    [<minecraft:book>, <minecraft:book>, <minecraft:book>],
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]])
  .addOutput(<minecraft:bookshelf>)
  .create();
