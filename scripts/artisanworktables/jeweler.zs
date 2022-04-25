// GTOW ZS File
// Made by GTOW Team
import mods.jei.JEI.removeAndHide as rh;
import mods.artisanworktables.builder.RecipeBuilder;
val builder = RecipeBuilder.get("carpenter");

// Removal
mods.jei.JEI.hideCategory("artisanworktables_jeweler_worktable");
mods.jei.JEI.hideCategory("artisanworktables_jeweler_workstation");

// Jeweler Worktable
# Diamond
RecipeBuilder.get("jeweler")
  .setShaped([
    [<gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>],
    [<gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>],
    [<gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>, <gregtech:meta_gem_chipped:276>]])
  .addTool(<ore:artisansGemCutter>, 15)
  .addOutput(<gregtech:meta_gem_flawed:276> * 2)
  .create();
RecipeBuilder.get("jeweler")
  .setShaped([
    [<gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>],
    [<gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>],
    [<gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>, <gregtech:meta_gem_flawed:276>]])
  .addTool(<ore:artisansGemCutter>, 40)
  .addOutput(<minecraft:diamond> * 2)
  .create();
RecipeBuilder.get("jeweler")
  .setShaped([
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
    [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]])
  .addTool(<ore:artisansGemCutter>, 100)
  .addOutput(<gregtech:meta_gem_flawless:276> * 2)
  .create();
RecipeBuilder.get("jeweler")
  .setShaped([
    [<gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>],
    [<gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>],
    [<gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>, <gregtech:meta_gem_flawless:276>]])
  .addTool(<ore:artisansGemCutter>, 400)
  .addOutput(<gregtech:meta_gem_exquisite:276> * 2)
  .create();