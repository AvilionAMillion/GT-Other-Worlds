// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("chef");

// Removal
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:11>);
mods.jei.JEI.removeAndHide(<artisanworktables:workstation:11>);
mods.jei.JEI.hideCategory("artisanworktables_chef_worktable");
mods.jei.JEI.hideCategory("artisanworktables_chef_workstation");

// MOST HARVESTCRAFT RECIPES ARE IN THE HARVESTCRAFT FOLDER //
// THIS MAY BE CHANGED IN FUTURE UPDATES //

// Cleaning Tools
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:cuttingboarditem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:cuttingboarditem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:potitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:potitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:skilletitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:skilletitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:saucepanitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:saucepanitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:mortarandpestleitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:mortarandpestleitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:bakewareitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:bakewareitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:mixingbowlitem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:mixingbowlitem>)
  .create();
RecipeBuilder.get("chef")
  .setShapeless([<harvestcraft:juiceritem>.anyDamage().noReturn()])
  .setFluid(<liquid:soap> * 100)
  .addOutput(<harvestcraft:juiceritem>)
  .create();