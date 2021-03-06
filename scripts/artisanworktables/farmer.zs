// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("farmer");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:10>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:10>);
mods.jei.JEI.hideCategory("artisanworktables_farmer_worktable");
mods.jei.JEI.hideCategory("artisanworktables_farmer_workstation");

# Clay Block
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<minecraft:clay>)
  .create();
# Unfired Refractory Brick
RecipeBuilder.get("farmer")
  .setShapeless([<pyrotech:material:4>])
  .setSecondaryIngredients([<gregtech:meta_item_1:348>])
  .addOutput(<pyrotech:material:9>)
  .create();
# Unfired Brick
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:clay_ball>])
  .setSecondaryIngredients([<gregtech:meta_item_1:348>])
  .addOutput(<pyrotech:material:24>)
  .create();
# Unfired Seared Brick
RecipeBuilder.get("farmer")
  .setShapeless([<tconstruct:soil>])
  .setSecondaryIngredients([<gregtech:meta_item_1:348>])
  .addOutput(<contenttweaker:unfired_searedbrick>)
  .create();
# Mud Brick
recipes.remove(<gregtechfoodoption:gtfo_meta_item:43>);
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:sand>, <minecraft:clay_ball>, <minecraft:sand>],
    [<minecraft:sand>, <gregtech:meta_dust:254>, <minecraft:sand>],
    [<minecraft:gravel>, <minecraft:clay_ball>, <minecraft:gravel>]])
  .setFluid(<liquid:water> * 100)
  .setSecondaryIngredients([<gregtech:meta_item_1:348>])
  .addTool(<ore:artisansMortar>, 15)
  .addOutput(<gregtechfoodoption:gtfo_meta_item:43> * 5)
  .create();
# Coke Brick
RecipeBuilder.get("farmer")
  .setShapeless([<minecraft:clay_ball>, <minecraft:sand>])
  .setSecondaryIngredients([<gregtech:meta_item_1:348>])
  .addTool(<ore:artisansMortar>, 1)
  .addOutput(<gregtech:meta_item_1:350>)
  .create();
